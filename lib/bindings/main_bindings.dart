import 'package:get/get.dart';
import 'package:movie_mot/data/datasource/remote_datasource.dart';
import 'package:movie_mot/data/datasource/remote_datasource_impl.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository_impl.dart';

import '../core/utils/app_http_client.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AppHTTPClient>(
      AppHTTPClient(),
    );

    Get.put<RemoteRepository>(
      RemoteRepositoryImpl(
        remoteDatasource: RemoteDatasourceImpl(
          client: Get.find(),
        ),
      ),
    );
  }
}
