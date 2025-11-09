import 'package:get_storage/get_storage.dart';

class TLocalStorage{
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage(){
    return _instance;
  }
  TLocalStorage._internal();

  final _storage = GetStorage();

  // Phương thức generic để lưu dữ liệu
  Future<void> saveData<T>(String key, T value) async{
    await _storage.write(key,value);
  }

  // Phương thức generic để đọc dữ liệu
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }

  // Phương thức generic để xóa dữ liệu
  Future<void> removeData(String key) async{
    await _storage.remove(key);
  }
  
  // Xóa tất cả dữ liệu trong storage
  Future<void> clearAll() async{
    await _storage.erase();
  }
}
