import 'dart:io';

import 'package:assignment_rafay/app.dart';
import 'package:assignment_rafay/company/company_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(CompanyProfileApp()),
      blocObserver: CompanyObserver());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
