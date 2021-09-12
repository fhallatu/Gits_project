import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  checkbox({Key? key}) : super(key: key);

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  String ketentuan = "Data Diatas di Nyatakan Benar";
  bool? syaratKetentuan = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                checkColor: Colors.pink,
                activeColor: Colors.grey.shade300,
                value: syaratKetentuan,
                onChanged: (value) {
                  setState(
                    () {
                      syaratKetentuan = value;
                      if (syaratKetentuan = true) {
                        ketentuan = "Data Diatas di Nyatakan Benar";
                      } else if (syaratKetentuan = false) {
                        ketentuan = "Data Diatas di Nyatakan Salah";
                      }
                    },
                  );
                },
              ),
              new Text(
                "Data Diatas di Nyatakan Benar",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
