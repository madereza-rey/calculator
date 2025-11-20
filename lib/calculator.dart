import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double hasil = 0;
  final TextEditingController angkapertama = TextEditingController();
  final TextEditingController angkakedua = TextEditingController();

  void hitung(String oprasi) {
    double angkasatu = double.parse(angkapertama.text);
    double angkadua = double.parse(angkakedua.text);
    setState(() {
      if (oprasi == '+') {
        hasil = angkasatu + angkadua;
      } else if (oprasi == '-') {
        hasil = angkasatu - angkadua;
      } else if (oprasi == '*') {
        hasil = angkasatu * angkadua;
      } else if (oprasi == '/') {
        hasil = angkasatu / angkadua;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('halaman home')),
      body: Center(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: angkapertama,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: angkakedua,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () => hitung('+'), child: Text('+')),
                ElevatedButton(onPressed: () => hitung('-'), child: Text('-')),
                ElevatedButton(onPressed: () => hitung('*'), child: Text('*')),
                ElevatedButton(onPressed: () => hitung('/'), child: Text('/')),
              ],
            ),
            Text(hasil.toString()),
          ],
        ),
      ),
    );
  }
}
