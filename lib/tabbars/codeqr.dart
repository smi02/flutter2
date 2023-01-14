import 'package:flutter/material.dart';

class CodeQR extends StatefulWidget {
  const CodeQR({Key? key}) : super(key: key);

  @override
  State<CodeQR> createState() => _CodeQRState();
}

class _CodeQRState extends State<CodeQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mã QR'),
      ),
      body: Container(),
    );
  }
}
