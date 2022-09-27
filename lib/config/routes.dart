/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router
      ..notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return;
        },
      )
      ..define('/', handler: rootHandler)
      ..define('/scout', handler: scoutHandler)
      ..define('/trade', handler: tradeHandler)
      ..define('/pool', handler: poolHandler)
      ..define('/farm', handler: farmHandler);
  }
}
