import 'package:ax_dapp/app/bloc/app_bloc.dart';
import 'package:ax_dapp/debug/views/debug_app_wrapper.dart';
import 'package:ax_dapp/pages/landing_page/landing_page.dart';
import 'package:ax_dapp/service/tracking/tracking_cubit.dart';
import 'package:ax_dapp/wallet/wallet.dart';
import 'package:config_repository/config_repository.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokens_repository/tokens_repository.dart';
import 'package:tracking_repository/tracking_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../../../config/application.dart';
import '../../../config/routes.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.configRepository,
  });

  final ConfigRepository configRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AppBloc(
            walletRepository: context.read<WalletRepository>(),
            tokensRepository: context.read<TokensRepository>(),
            configRepository: configRepository,
          ),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => WalletBloc(
            walletRepository: context.read<WalletRepository>(),
            tokensRepository: context.read<TokensRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => TrackingCubit(
            context.read<TrackingRepository>(),
          )..setup(),
        )
      ],
      child: kDebugMode
          ? DebugAppWrapper(
              home: _MaterialApp(),
            )
          : _MaterialApp(),
    );
  }
}

class _MaterialApp extends StatefulWidget {
  @override
  State createState() => _MaterialAppState();
}

class _MaterialAppState extends State<_MaterialApp> {
  _MaterialAppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    print('landing page');
    final app = MaterialApp(
      title: 'AthleteX',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/scout',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        brightness: Brightness.dark,
        primaryColor: Colors.yellow[700],
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark)
            .copyWith(secondary: Colors.black),
      ),
      // home: const LandingPage(),
      onGenerateRoute: Application.router.generator,
    );

    print("initial route = ${app.initialRoute}");

    return app;
  }
}
