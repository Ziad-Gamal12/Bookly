import 'package:bookly/Features/Home/data/repos/repo_Home_impliment.dart';
import 'package:bookly/core/utils/Api_sevice.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class serviceLocator {
  final getit = GetIt.instance;
  void ServiceLocatorSetup() {
    getit.registerSingleton<Api_Service>(Api_Service(Dio()));
    getit.registerSingleton<repo_Home_Impliment>(
        repo_Home_Impliment(getit.get<Api_Service>()));
  }
}
