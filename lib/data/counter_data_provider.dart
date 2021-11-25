import 'package:shared_preferences/shared_preferences.dart';

class CounterDataProvider {
  final SharedPreferences _storage;

  CounterDataProvider(this._storage);

  void write(int newValue) {
    _storage.setInt(_counterKey, newValue);
  }

  int read() {
    return _storage.getInt(_counterKey) ?? 0;
  }
}

const _counterKey = 'counter';
