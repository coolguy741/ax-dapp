import 'package:ax_dapp/pages/landing_page/landing_page.dart';
import 'package:ax_dapp/pages/v1_app.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

// Define our splash page.

Handler rootHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    print('aaaa');
    return const LandingPage();
  },
);

Handler scoutHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    print('scout');
    return const V1App();
  },
);

Handler tradeHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  print('trade');
  return;
});

Handler poolHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    print('pool');
    return;
  },
);

Handler farmHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    print('farm');
    return;
  },
);
