// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i4;

import '../services/authentication_service.dart' as _i3;
import '../services/third_party_services_module.dart' as _i5;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<_i3.AuthenticationService>(
      () => thirdPartyServicesModule.authenticationService);
  gh.lazySingleton<_i4.BottomSheetService>(
      () => thirdPartyServicesModule.bottomSheetService);
  gh.lazySingleton<_i4.DialogService>(
      () => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<_i4.NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<_i4.SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);
  return getIt;
}

class _$ThirdPartyServicesModule extends _i5.ThirdPartyServicesModule {
  @override
  _i4.NavigationService get navigationService => _i4.NavigationService();
  @override
  _i3.AuthenticationService get authenticationService =>
      _i3.AuthenticationService();
  @override
  _i4.DialogService get dialogService => _i4.DialogService();
  @override
  _i4.SnackbarService get snackBarService => _i4.SnackbarService();
  @override
  _i4.BottomSheetService get bottomSheetService => _i4.BottomSheetService();
}
