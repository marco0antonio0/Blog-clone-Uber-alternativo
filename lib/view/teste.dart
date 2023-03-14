import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          testador(x: Colors.red),
          testador(x: Colors.yellow),
          testador(x: Colors.red),
          Container(height: 100, width: 100, color: Colors.green),
        ],
      ),
    );
  }
}

Widget testador({x = Colors.black}) {
  return Container(height: 100, width: 100, color: x);
}
