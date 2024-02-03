import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';
class MyAppLocalStorage {

  static final MyAppLocalStorage  localStorage = MyAppLocalStorage._internal();

  factory MyAppLocalStorage(){
    return localStorage;
  }

  MyAppLocalStorage._internal();

  final myAppStorage = GetStorage();


  // write data in lcl
  Future<void> saveData<T>(String key , T value) async{
      await myAppStorage.write(key, value);
  }


T? readData<T>(String key){
    return myAppStorage.read(key);
}

  Future<void> removeData<T>(String key ) async{
    await myAppStorage.remove(key);
  }

  Future<void> clearAll() async{
    return myAppStorage.erase();
  }



}