import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

//Material App

//Stateless Widget - Those widgets that dont need change
//Stateful Widget - Those widgets that need change

//Design Systems:
//Material Design
//Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}