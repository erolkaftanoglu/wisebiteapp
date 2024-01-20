import 'package:dio/dio.dart';
import 'package:wisebiteapp/data/get_store/get_store_helper.dart';
import 'package:wisebiteapp/di/components/service_locator.dart';
import 'package:wisebiteapp/utils/context_extension.dart';
import 'package:wisebiteapp/utils/routers/app_route.dart';
import 'package:wisebiteapp/utils/safe_print.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void handleError(BuildContext context, dynamic err) {
  // log error to sentry
  if (err is DioException) {
    if (err.response?.statusCode == 401) {
      Sentry.captureException(err);
      safePrint("401");
      getIt<GetStoreHelper>().clear();
      context.go(AppRoute.login.getRoute);
    } else {
      if (kDebugMode) {
        context.showToast(
          err.response?.data["message"] ?? err.message,
        );
      }
    }
  } else {
    Sentry.captureException(err);
  }
}
