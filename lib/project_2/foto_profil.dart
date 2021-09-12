import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class foto_profil extends StatefulWidget {
  foto_profil({Key? key}) : super(key: key);

  @override
  _foto_profilState createState() => _foto_profilState();
}

class _foto_profilState extends State<foto_profil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.pink),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1))
        ],
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/avatar-1.png"),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
