import 'package:get_it/get_it.dart';
import 'package:portfolio/core/util/classes/utility_classes.dart';

void invokeUtilityDI({required GetIt locator}) {
  locator.registerLazySingleton<UtilityClasses>(() => UtilityClasses());
}
