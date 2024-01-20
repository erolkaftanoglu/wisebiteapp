// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/get_store/get_store_helper.dart' as _i5;
import '../../utils/routers/app_router.dart' as _i3;
import '../modules/network.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    await gh.factoryAsync<_i4.GetStorage>(
      () => networkModule.provideGetStorage(),
      preResolve: true,
    );
    gh.factory<_i5.GetStoreHelper>(
        () => _i5.GetStoreHelper(gh<_i4.GetStorage>()));
    await gh.factoryAsync<_i6.Dio>(
      () => networkModule.provideDio(gh<_i5.GetStoreHelper>()),
      preResolve: true,
    );
    return this;
  }
}

class _$NetworkModule extends _i7.NetworkModule {}
