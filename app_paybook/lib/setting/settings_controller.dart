import 'package:app_paybook/setting/settings_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsController with ChangeNotifier {
  final SettingsService _settingsService;

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;
  SettingsController(this._settingsService);

  Future<void> loadSetting() async {
    _themeMode = await _settingsService.themeMode();


    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;
    _themeMode = newThemeMode;

    
  }
}
