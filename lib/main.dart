import 'package:easy_localization/easy_localization.dart';
import 'package:wisebiteapp/di/components/service_locator.dart';
import 'package:wisebiteapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:wisebiteapp/wisebiteapp.dart';

const assetLang = "assets/translations";
const tr = Locale("tr");
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kDebugMode) {
    await FirebasePerformance.instance.setPerformanceCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    runApp(EasyLocalization(
      path: assetLang,
      supportedLocales: const [tr],
      fallbackLocale: tr,
      child: const ProviderScope(
        child: WiseBiteApp(),
      ),
    ));
  } else {
    runApp(EasyLocalization(
      path: assetLang,
      supportedLocales: const [tr],
      fallbackLocale: tr,
      child: const ProviderScope(
        child: WiseBiteApp(),
      ),
    ));
  }
}
