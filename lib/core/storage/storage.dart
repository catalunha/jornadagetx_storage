import 'package:get_storage/get_storage.dart';

class Storage {
  final name = ReadWriteValue('msg', '');
  final _name2 = ReadWriteValue('msg', '', () => GetStorage('box2'));
  set name2(String value) => _name2.val = value;
  String get name2 => _name2.val;
}
