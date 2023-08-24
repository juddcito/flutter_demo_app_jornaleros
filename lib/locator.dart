import 'package:flutter_demo_app_jornaleros/infrastructure/services/camera.service.dart';
import 'package:flutter_demo_app_jornaleros/infrastructure/services/face_detector_service.dart';
import 'package:flutter_demo_app_jornaleros/infrastructure/services/ml_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServices() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
  locator.registerLazySingleton<FaceDetectorService>(() => FaceDetectorService());
  locator.registerLazySingleton<MLService>(() => MLService());
}
