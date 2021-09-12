import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class date extends StatefulWidget {
  date({Key? key}) : super(key: key);

  @override
  _dateState createState() => _dateState();
}

class _dateState extends State<date> {
  DateTime pilihDate = DateTime.now();
  TextEditingController dateinput = TextEditingController();

  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextFormField(
        controller: dateinput,
        style: TextStyle(color: Colors.pink),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: "Tanggal Lahir",
          labelStyle: TextStyle(color: Colors.pink),
          prefixIcon: Icon(Icons.calendar_today, color: Colors.pink),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        readOnly: true, //set it true, so that user will not able to edit text
        onTap: () async {
          final newDate = await showDatePicker(
            context: context,
            initialDate: pilihDate,
            firstDate: DateTime(1000),
            lastDate: DateTime(3000),
          );

          if (newDate != null) {
            print(newDate);

            setState(() {
              dateinput.text = newDate.toString().substring(0, 10);
            });
          } else {
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
