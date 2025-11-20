import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.prodi});

final String prodi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('halaman detail'),), body: Center(child: Text('halaman detail'),),);
  }
}
