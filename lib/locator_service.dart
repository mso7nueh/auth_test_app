import 'package:auth_test_app/feature/data/datasources/login_remote_data_source.dart';
import 'package:auth_test_app/feature/data/repositories/login_repository_impl.dart';
import 'package:auth_test_app/feature/domain/repositories/login_repository.dart';
import 'package:auth_test_app/feature/domain/usecases/login.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(() => LoginBloc(login: sl()));

  // UseCases
  sl.registerLazySingleton(() => Login(sl()));

  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      loginRemoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // External
  sl.registerLazySingleton(() => http.Client());
}
