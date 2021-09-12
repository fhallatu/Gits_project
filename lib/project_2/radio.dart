import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_project/project_2/body_form.dart';

class radio extends StatefulWidget {
  radio({Key? key}) : super(key: key);

  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radio> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Jenis Kelamin",
            style: TextStyle(
              color: Colors.pink,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio<String>(
                value: "Perempuan",
                groupValue: _gender,
                activeColor: Colors.pink,
                onChanged: (value) {
                  setState(
                    () {
                      _gender = value;
                    },
                  );
                },
              ),
              new Text(
                "Perempuan",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
              Radio<String>(
                value: "Laki - Laki",
                groupValue: _gender,
                activeColor: Colors.pink,
                onChanged: (value) {
                  setState(
                    () {
                      _gender = value;
                    },
                  );
                },
              ),
              new Text(
                "Laki - Laki",
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
