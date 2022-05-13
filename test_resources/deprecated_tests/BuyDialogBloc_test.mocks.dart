/*NEEDS TO BE UPDATED
// Mocks generated by Mockito 5.1.0 from annotations
// in ax_dapp/test/BuyDialogBloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:ui' as _i13;

import 'package:ax_dapp/dialogs/buy/usecases/GetBuyInfoUseCase.dart' as _i7;
import 'package:ax_dapp/service/Controller/Controller.dart' as _i4;
import 'package:ax_dapp/service/Controller/Swap/SwapController.dart' as _i10;
import 'package:ax_dapp/service/Controller/Token.dart' as _i11;
import 'package:ax_dapp/service/Controller/usecases/GetMaxTokenInputUseCase.dart'
    as _i9;
import 'package:ax_dapp/service/Controller/WalletController.dart' as _i3;
import 'package:fpdart/fpdart.dart' as _i2;
import 'package:get/get.dart' as _i5;
import 'package:get/get_state_manager/src/simple/list_notifier.dart' as _i12;
import 'package:mockito/mockito.dart' as _i1;
import 'package:web3dart/web3dart.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeWalletController_1 extends _i1.Fake implements _i3.WalletController {
}

class _FakeController_2 extends _i1.Fake implements _i4.Controller {}

class _FakeRx_3<T> extends _i1.Fake implements _i5.Rx<T> {}

class _FakeRxString_4 extends _i1.Fake implements _i5.RxString {}

class _FakeRxDouble_5 extends _i1.Fake implements _i5.RxDouble {}

class _FakeEthereumAddress_6 extends _i1.Fake implements _i6.EthereumAddress {}

class _FakeBigInt_7 extends _i1.Fake implements BigInt {}

class _FakeInternalFinalCallback_8<T> extends _i1.Fake
    implements _i5.InternalFinalCallback<T> {}

/// A class which mocks [GetAPTBuyInfoUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAPTBuyInfoUseCase extends _i1.Mock
    implements _i7.GetAPTBuyInfoUseCase {
  MockGetAPTBuyInfoUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i7.Success, _i7.Error>> fetchAptBuyInfo(
          String? targetAddress) =>
      (super.noSuchMethod(Invocation.method(#fetchAptBuyInfo, [targetAddress]),
              returnValue: Future<_i2.Either<_i7.Success, _i7.Error>>.value(
                  _FakeEither_0<_i7.Success, _i7.Error>()))
          as _i8.Future<_i2.Either<_i7.Success, _i7.Error>>);
}

/// A class which mocks [GetTotalTokenBalanceUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTotalTokenBalanceUseCase extends _i1.Mock
    implements _i9.GetTotalTokenBalanceUseCase {
  MockGetTotalTokenBalanceUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.WalletController get walletController =>
      (super.noSuchMethod(Invocation.getter(#walletController),
          returnValue: _FakeWalletController_1()) as _i3.WalletController);
  @override
  _i8.Future<double> getTotalAxBalance() =>
      (super.noSuchMethod(Invocation.method(#getTotalAxBalance, []),
          returnValue: Future<double>.value(0.0)) as _i8.Future<double>);
  @override
  _i8.Future<double> getTotalBalanceForToken(dynamic tokenAddress) => (super
      .noSuchMethod(Invocation.method(#getTotalBalanceForToken, [tokenAddress]),
          returnValue: Future<double>.value(0.0)) as _i8.Future<double>);
}

/// A class which mocks [SwapController].
///
/// See the documentation for Mockito's code generation for more information.
class MockSwapController extends _i1.Mock implements _i10.SwapController {
  MockSwapController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Controller get controller =>
      (super.noSuchMethod(Invocation.getter(#controller),
          returnValue: _FakeController_2()) as _i4.Controller);
  @override
  set controller(_i4.Controller? _controller) =>
      super.noSuchMethod(Invocation.setter(#controller, _controller),
          returnValueForMissingStub: null);
  @override
  _i5.Rx<_i11.Token> get activeTkn1 =>
      (super.noSuchMethod(Invocation.getter(#activeTkn1),
          returnValue: _FakeRx_3<_i11.Token>()) as _i5.Rx<_i11.Token>);
  @override
  set activeTkn1(_i5.Rx<_i11.Token>? _activeTkn1) =>
      super.noSuchMethod(Invocation.setter(#activeTkn1, _activeTkn1),
          returnValueForMissingStub: null);
  @override
  _i5.Rx<_i11.Token> get activeTkn2 =>
      (super.noSuchMethod(Invocation.getter(#activeTkn2),
          returnValue: _FakeRx_3<_i11.Token>()) as _i5.Rx<_i11.Token>);
  @override
  set activeTkn2(_i5.Rx<_i11.Token>? _activeTkn2) =>
      super.noSuchMethod(Invocation.setter(#activeTkn2, _activeTkn2),
          returnValueForMissingStub: null);
  @override
  _i5.RxString get address1 => (super.noSuchMethod(Invocation.getter(#address1),
      returnValue: _FakeRxString_4()) as _i5.RxString);
  @override
  set address1(_i5.RxString? _address1) =>
      super.noSuchMethod(Invocation.setter(#address1, _address1),
          returnValueForMissingStub: null);
  @override
  _i5.RxString get address2 => (super.noSuchMethod(Invocation.getter(#address2),
      returnValue: _FakeRxString_4()) as _i5.RxString);
  @override
  set address2(_i5.RxString? _address2) =>
      super.noSuchMethod(Invocation.setter(#address2, _address2),
          returnValueForMissingStub: null);
  @override
  _i5.RxDouble get amount1 => (super.noSuchMethod(Invocation.getter(#amount1),
      returnValue: _FakeRxDouble_5()) as _i5.RxDouble);
  @override
  set amount1(_i5.RxDouble? _amount1) =>
      super.noSuchMethod(Invocation.setter(#amount1, _amount1),
          returnValueForMissingStub: null);
  @override
  _i5.RxDouble get amount2 => (super.noSuchMethod(Invocation.getter(#amount2),
      returnValue: _FakeRxDouble_5()) as _i5.RxDouble);
  @override
  set amount2(_i5.RxDouble? _amount2) =>
      super.noSuchMethod(Invocation.setter(#amount2, _amount2),
          returnValueForMissingStub: null);
  @override
  _i5.RxDouble get price => (super.noSuchMethod(Invocation.getter(#price),
      returnValue: _FakeRxDouble_5()) as _i5.RxDouble);
  @override
  set price(_i5.RxDouble? _price) =>
      super.noSuchMethod(Invocation.setter(#price, _price),
          returnValueForMissingStub: null);
  @override
  _i6.EthereumAddress get routerTestnetAddress =>
      (super.noSuchMethod(Invocation.getter(#routerTestnetAddress),
          returnValue: _FakeEthereumAddress_6()) as _i6.EthereumAddress);
  @override
  _i6.EthereumAddress get dexTestnetAddress =>
      (super.noSuchMethod(Invocation.getter(#dexTestnetAddress),
          returnValue: _FakeEthereumAddress_6()) as _i6.EthereumAddress);
  @override
  _i6.EthereumAddress get routerMainnetAddress =>
      (super.noSuchMethod(Invocation.getter(#routerMainnetAddress),
          returnValue: _FakeEthereumAddress_6()) as _i6.EthereumAddress);
  @override
  _i6.EthereumAddress get dexMainnetAddress =>
      (super.noSuchMethod(Invocation.getter(#dexMainnetAddress),
          returnValue: _FakeEthereumAddress_6()) as _i6.EthereumAddress);
  @override
  _i6.EthereumAddress get axtAddress =>
      (super.noSuchMethod(Invocation.getter(#axtAddress),
          returnValue: _FakeEthereumAddress_6()) as _i6.EthereumAddress);
  @override
  BigInt get twoMinuteDeadline =>
      (super.noSuchMethod(Invocation.getter(#twoMinuteDeadline),
          returnValue: _FakeBigInt_7()) as BigInt);
  @override
  _i5.Rx<BigInt> get deadline =>
      (super.noSuchMethod(Invocation.getter(#deadline),
          returnValue: _FakeRx_3<BigInt>()) as _i5.Rx<BigInt>);
  @override
  set deadline(_i5.Rx<BigInt>? _deadline) =>
      super.noSuchMethod(Invocation.setter(#deadline, _deadline),
          returnValueForMissingStub: null);
  @override
  BigInt get amountOutMin =>
      (super.noSuchMethod(Invocation.getter(#amountOutMin),
          returnValue: _FakeBigInt_7()) as BigInt);
  @override
  set amountOutMin(BigInt? _amountOutMin) =>
      super.noSuchMethod(Invocation.setter(#amountOutMin, _amountOutMin),
          returnValueForMissingStub: null);
  @override
  double get x =>
      (super.noSuchMethod(Invocation.getter(#x), returnValue: 0.0) as double);
  @override
  set x(double? _x) => super
      .noSuchMethod(Invocation.setter(#x, _x), returnValueForMissingStub: null);
  @override
  double get y =>
      (super.noSuchMethod(Invocation.getter(#y), returnValue: 0.0) as double);
  @override
  set y(double? _y) => super
      .noSuchMethod(Invocation.setter(#y, _y), returnValueForMissingStub: null);
  @override
  double get k =>
      (super.noSuchMethod(Invocation.getter(#k), returnValue: 0.0) as double);
  @override
  set k(double? _k) => super
      .noSuchMethod(Invocation.setter(#k, _k), returnValueForMissingStub: null);
  @override
  _i5.InternalFinalCallback<void> get onStart =>
      (super.noSuchMethod(Invocation.getter(#onStart),
              returnValue: _FakeInternalFinalCallback_8<void>())
          as _i5.InternalFinalCallback<void>);
  @override
  _i5.InternalFinalCallback<void> get onDelete =>
      (super.noSuchMethod(Invocation.getter(#onDelete),
              returnValue: _FakeInternalFinalCallback_8<void>())
          as _i5.InternalFinalCallback<void>);
  @override
  bool get initialized =>
      (super.noSuchMethod(Invocation.getter(#initialized), returnValue: false)
          as bool);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  int get listeners =>
      (super.noSuchMethod(Invocation.getter(#listeners), returnValue: 0)
          as int);
  @override
  _i8.Future<void> approve() =>
      (super.noSuchMethod(Invocation.method(#approve, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> swap() => (super.noSuchMethod(Invocation.method(#swap, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> createPair() =>
      (super.noSuchMethod(Invocation.method(#createPair, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> swapforAX() =>
      (super.noSuchMethod(Invocation.method(#swapforAX, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> swapFromAX() =>
      (super.noSuchMethod(Invocation.method(#swapFromAX, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  void updateFromAmount(double? newAmount) =>
      super.noSuchMethod(Invocation.method(#updateFromAmount, [newAmount]),
          returnValueForMissingStub: null);
  @override
  void updateToAmount(double? newAmount) =>
      super.noSuchMethod(Invocation.method(#updateToAmount, [newAmount]),
          returnValueForMissingStub: null);
  @override
  void updateFromAddress(String? newAddress) =>
      super.noSuchMethod(Invocation.method(#updateFromAddress, [newAddress]),
          returnValueForMissingStub: null);
  @override
  void updateToAddress(String? newAddress) =>
      super.noSuchMethod(Invocation.method(#updateToAddress, [newAddress]),
          returnValueForMissingStub: null);
  @override
  void updatePrice() => super.noSuchMethod(Invocation.method(#updatePrice, []),
      returnValueForMissingStub: null);
  @override
  void updateFromToken(_i11.Token? tknFrom) =>
      super.noSuchMethod(Invocation.method(#updateFromToken, [tknFrom]),
          returnValueForMissingStub: null);
  @override
  void updateToToken(_i11.Token? tknTo) =>
      super.noSuchMethod(Invocation.method(#updateToToken, [tknTo]),
          returnValueForMissingStub: null);
  @override
  void update([List<Object>? ids, bool? condition = true]) =>
      super.noSuchMethod(Invocation.method(#update, [ids, condition]),
          returnValueForMissingStub: null);
  @override
  void onInit() => super.noSuchMethod(Invocation.method(#onInit, []),
      returnValueForMissingStub: null);
  @override
  void onReady() => super.noSuchMethod(Invocation.method(#onReady, []),
      returnValueForMissingStub: null);
  @override
  void onClose() => super.noSuchMethod(Invocation.method(#onClose, []),
      returnValueForMissingStub: null);
  @override
  void $configureLifeCycle() =>
      super.noSuchMethod(Invocation.method(#$configureLifeCycle, []),
          returnValueForMissingStub: null);
  @override
  _i12.Disposer addListener(_i12.GetStateUpdate? listener) =>
      (super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValue: () {}) as _i12.Disposer);
  @override
  void removeListener(_i13.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void refresh() => super.noSuchMethod(Invocation.method(#refresh, []),
      returnValueForMissingStub: null);
  @override
  void refreshGroup(Object? id) =>
      super.noSuchMethod(Invocation.method(#refreshGroup, [id]),
          returnValueForMissingStub: null);
  @override
  void notifyChildrens() =>
      super.noSuchMethod(Invocation.method(#notifyChildrens, []),
          returnValueForMissingStub: null);
  @override
  void removeListenerId(Object? id, _i13.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListenerId, [id, listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  _i12.Disposer addListenerId(Object? key, _i12.GetStateUpdate? listener) =>
      (super.noSuchMethod(Invocation.method(#addListenerId, [key, listener]),
          returnValue: () {}) as _i12.Disposer);
  @override
  void disposeId(Object? id) =>
      super.noSuchMethod(Invocation.method(#disposeId, [id]),
          returnValueForMissingStub: null);
}*/