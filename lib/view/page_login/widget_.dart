import 'package:flutter/material.dart';

class ConteinerLogin extends StatelessWidget {
  const ConteinerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    double responsive_altura = largura > 1100
        ? 120
        : largura > 750
            ? 90
            : 80;
    double responsive_sizeContainer = 700;

    return Container(
      height: altura - responsive_altura,
      width: largura,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/image_maps_background.png'),
              fit: BoxFit.fitWidth)),
      //===================================
      //  contaienr data
      child: Center(
        child: Container(
          width: responsive_sizeContainer,
          height: responsive_sizeContainer - 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
        ),
      ),
    );
  }
}
