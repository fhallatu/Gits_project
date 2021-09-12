import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_project/project_2/checkbox.dart';
import 'package:widget_project/project_2/date.dart';
import 'package:widget_project/project_2/foto_profil.dart';
import 'package:widget_project/project_2/radio.dart';

final usernameController = TextEditingController();
final namaController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class form extends StatefulWidget {
  form({Key? key}) : super(key: key);

  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back, color: Colors.pink),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
        ),

        // TabBar
        bottom: PreferredSize(
          preferredSize: Size.square(30.0),
          child: DefaultTabController(
            length: 2,
            child: Center(
              child: TabBar(
                indicatorColor: Colors.pink,
                tabs: [
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Beauty Profile",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // Body
      body: Container(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
              ),
              foto_profil(),
              new Padding(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
              ),
              radio(),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    ),
                    // Field Username
                    TextFormField(
                      controller: usernameController,
                      style: TextStyle(color: Colors.pink),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.pink),
                        hintText: "ex: tritan",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon:
                            Icon(Icons.verified_user, color: Colors.pink),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username Tidak Boleh Kosong';
                        }
                        return null;
                      },
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                    ),
                    TextFormField(
                      controller: namaController,
                      style: TextStyle(color: Colors.pink),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Nama",
                        labelStyle: TextStyle(color: Colors.pink),
                        hintText: "ex: Azalela Tritan",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.person, color: Colors.pink),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Nama Tidak Boleh Kosong';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              date(),
              new Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              checkbox(),
              Container(
                margin: EdgeInsets.only(top: 30, left: 50, right: 50),
                child: ElevatedButton(
                  child: Text('Save'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Data Tersimpan'),
                          content: Text(
                              'Username : ${usernameController.text}, Nama : ${usernameController.text}, Jenis Kelamin : $radio, Tanggal Lahir : $date'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    } else {}
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
