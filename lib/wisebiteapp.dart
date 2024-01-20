import 'package:easy_localization/easy_localization.dart';
import 'package:wisebiteapp/di/components/service_locator.dart';
import 'package:wisebiteapp/utils/routers/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WiseBiteApp extends StatelessWidget {
  const WiseBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WiseBite',
      debugShowCheckedModeBanner: kDebugMode,
      routerConfig: getIt<AppRouter>().getGoRouter,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: ThemeMode.light,
    );
  }
}
