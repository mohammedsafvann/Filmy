import 'hive.dart';

class ObjectFactory {
  static final _objectFactory = ObjectFactory._internal();

  ObjectFactory._internal();
  factory ObjectFactory() => _objectFactory;
  static final AppHive _appHive = AppHive();
  AppHive get appHive => _appHive;
}
