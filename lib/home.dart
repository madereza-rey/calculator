import 'package:aplikasi_uts/calculator.dart';
import 'package:aplikasi_uts/list-data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('halaman home')),
      body: Center(child: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>CalculatorPage()));
        }, child: Text('menu calculator')),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>ListPage()));
        }, child: Text('menu list data'))
      ],)),
    );
  }
}
