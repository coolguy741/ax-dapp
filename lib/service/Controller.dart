import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart'; //Reference Library https://pub.dev/packages/web3dart/example
import 'package:bip39/bip39.dart'
    as bip39; // Basics of BIP39 https://coldbit.com/bip-39-basics-from-randomness-to-mnemonic-words/
import 'package:web_socket_channel/io.dart';

// State management
class Controller extends ChangeNotifier {
  // RPC & WS are now linked to BSC-Testnet
  final String _rpcUrl = "https://data-seed-prebsc-1-s1.binance.org:8545/";
  final String _wsUrl = "wss://testnet-dex.binance.org/api/";

  // private client for web3dart
  Web3Client _client;
  bool isLoading = true;

  // Eth related variable declarations
  // ignore: avoid_init_to_null
  String _abiCode, privateAddress, userMnemonic = null;
  EthereumAddress _contractAddress, publicAddress;
  Credentials _credentials;
  DeployedContract staking;

  // No-args constructor
  Controller() {
    initialSetup();
  }

  initialSetup() async {
    // Setup connection between eth rpc node & dApp
    _client = Web3Client(_rpcUrl, Client(), socketConnector: () {
      return IOWebSocketChannel.connect(_wsUrl).cast<String>();
    });

    // Setup the contracts we'll be using - they're immutable so can be called once
    staking = await retrieveContract("Staking");
    // Automatically create a wallet upon instantiation
    await createWallet();
    print('seed:$userMnemonic \n publickey: ${publicAddress.toString()}');
  }

  // Get the ABI from testnet BSC
  Future<DeployedContract> retrieveContract(String contractName) async {
    // Reading the contract abi
    String abiStringFile =
        await rootBundle.loadString('../../contracts/$contractName.json');
    var jsonAbi = jsonDecode(abiStringFile);
    _abiCode = jsonEncode(jsonAbi["abi"]);
    // assign contract address
    _contractAddress = EthereumAddress.fromHex(
        jsonAbi["networks"]["97"]["address"]); //BSC-TESTNET Address
    final contract = DeployedContract(
        ContractAbi.fromJson(_abiCode, "$contractName"), _contractAddress);

    // return deployed contract
    return contract;
  }

  Future<String> getMnemonic() async {
    // Generate a random mnemonic (uses crypto.randomBytes under the hood), defaults to 128-bits of entropy
    return userMnemonic;
  }

  Future<void> createWallet([String mnemonic]) async {
    // If user comes with a mnemonic seed
    var seed, validMnemonic;
    validMnemonic = bip39.generateMnemonic();
    seed = bip39.mnemonicToSeedHex(validMnemonic);
    _credentials = EthPrivateKey.fromHex(seed);

    // stores private / public keypair
    privateAddress = seed;
    userMnemonic = validMnemonic;
    publicAddress = await _credentials.extractAddress();
    return privateAddress;
  }

  Future<EthereumAddress> getPublicAddress() async {
    // Is this below necessary?
    if (_credentials == null) {
      Random rng = new Random.secure();
      _credentials = EthPrivateKey.createRandom(rng);
    }

    EthereumAddress pAddress = await _credentials.extractAddress();
    return pAddress;
  }

  Credentials getCredentials() {
    return _credentials;
  }

  ///** Mutataive Methods */

  // Staking
  Future<BigInt> getStakeBalance(EthereumAddress from) async {
    ContractFunction stakeOf = staking.function("stakeOf");
    var balance = await _client
        .call(contract: staking, function: stakeOf, params: [from]);
    return balance.first as BigInt;
  }

  Future<String> stake(BigInt stakeAmount) async {
    ContractFunction createStake = staking.function("createStake");
    return await _client.sendTransaction(
        _credentials,
        Transaction.callContract(
            contract: staking,
            function: createStake,
            parameters: [stakeAmount]),
        chainId: 97,
        fetchChainIdFromNetworkId: true);
  }

  Future<String> withdraw(BigInt withdrawAmount) async {
    ContractFunction removeStake = staking.function("removeStake");
    return await _client.sendTransaction(
        _credentials,
        Transaction.callContract(
            contract: staking,
            function: removeStake,
            parameters: [withdrawAmount]),
        chainId: 97,
        fetchChainIdFromNetworkId: true);
  }

  // From the blockchain to the dapp
}