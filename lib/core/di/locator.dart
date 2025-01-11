import 'package:get_it/get_it.dart';
import 'package:portfolio/core/di/utility_di.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  invokeUtilityDI(locator: locator);
}
