import 'package:ae_dapp/service/Controller/Token.dart';
import 'package:flutter/src/painting/image_resolution.dart';
import 'package:web3dart/web3dart.dart';

// Liquidity Pool Token
class LPT extends Token {
  LPT(String name, String ticker, EthereumAddress tknAddress)
      : super(name, ticker) {
    this.address = tknAddress;
    updateERC20(tknAddress);
  }
}