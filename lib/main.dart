import 'package:flutter/material.dart';
import 'package:injectable_demo/injector.dart';

import 'app.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  configure(Environment.production);
  runApp(App());
}

