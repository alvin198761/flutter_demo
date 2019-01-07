import 'package:flutter/material.dart';
import 'package:crm_flutter_app/views/App.dart';
import 'package:crm_flutter_app/apis/ApiConfig.dart';
import 'package:crm_flutter_app/stores/IndexStore.dart';

void main() {
  ApiConfig.init(start, new IndexStore());
}

void start(store) {
  runApp(App());
}

IndexStore mainReducer(IndexStore state, dynamic action) {}
