import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wisebiteapp/constant/endpoint.dart';
import 'package:wisebiteapp/data/get_store/get_store_helper.dart';
import 'package:wisebiteapp/utils/safe_print.dart';
import 'package:firebase_performance_dio/firebase_performance_dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:network_logger/network_logger.dart';

@module
abstract class NetworkModule {
  @preResolve
  Future<Dio> provideDio(GetStoreHelper getStoreHelper) {
    final dio = Dio();
    final performanceInterceptor = DioFirebasePerformanceInterceptor();

    dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout =
          const Duration(milliseconds: Endpoints.connectionTimeout)
      ..options.receiveTimeout =
          const Duration(milliseconds: Endpoints.receiveTimeout)
      ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
      ..interceptors.add(LogInterceptor(
        request: false,
        responseBody: kDebugMode ? true : false,
        requestBody: false,
        requestHeader: kDebugMode ? true : false,
      ))
      ..interceptors.add(DioNetworkLogger())
      ..interceptors.add(performanceInterceptor)
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            // getting token

            var token = getStoreHelper.getToken();

            if (token != null) {
              options.headers
                  .putIfAbsent('Authorization', () => "Bearer $token");
            } else {
              safePrint('Auth token is null');
            }

            return handler.next(options);
          },
        ),
      );

    return Future.value(dio);
  }

  @preResolve
  Future<GetStorage> provideGetStorage() {
    return Future.value(GetStorage());
  }
  
  // @preResolve
  // Future<AppRestClient> provideAppRestClient(Dio dio) {
  //   return Future.value(AppRestClient(dio));
  // }

  // @preResolve
  // Future<AuthRestClient> provideAuthRestClient(Dio dio) {
  //   return Future.value(AuthRestClient(dio));
  // }

  // @preResolve
  // Future<OfferRestClient> provideOfferRestClient(Dio dio) {
  //   return Future.value(OfferRestClient(dio));
  // }

  // // wallet rest client
  // @preResolve
  // Future<WalletRestClient> provideWalletRestClient(Dio dio) {
  //   return Future.value(WalletRestClient(dio));
  // }

  // @preResolve
  // Future<FirebaseAnalytics> provideAnalytics() {
  //   return Future.value(FirebaseAnalytics.instance);
  // }
}
