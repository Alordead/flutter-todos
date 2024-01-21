import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todos/services/service_interfaces.dart';
import 'package:routing/routing.dart';
import 'package:ui_kit/ui_kit.dart';

class Application extends StatelessWidget {
  const Application({
    required AppRouterConfiguration appRouterConfiguration,
    required ILocalizationService localizationService,
    super.key,
  })  : _appRouterConfiguration = appRouterConfiguration,
        _localizationService = localizationService;

  final AppRouterConfiguration _appRouterConfiguration;
  final ILocalizationService _localizationService;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: _localizationService.wrapWithLocalization(
        builder: (context) => MaterialApp.router(
          theme: ThemeData(
            colorScheme: const ColorScheme.dark(
              primary: AppColors.accentPrimary,
              background: AppColors.backgroundPrimary,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routeInformationParser:
              _appRouterConfiguration.routeInformationParser,
          routerDelegate: _appRouterConfiguration.routerDelegate,
          routeInformationProvider:
              _appRouterConfiguration.routeInformationProvider,
        ),
      ),
    );
  }
}
