//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:g_project/widget/fields.dart';

import 'c_Full_result.dart';
class UpdateRecord extends StatefulWidget {
  const UpdateRecord({Key? key}) : super(key: key);

  @override
  State<UpdateRecord> createState() => _UpdateRecordState();
}

//final ImagePicker _picker = ImagePicker();

class _UpdateRecordState extends State<UpdateRecord> {
  var namecontroler = TextEditingController();
  var phonecontroler = TextEditingController();
  var gendercontroler = TextEditingController();
  var agecontroler = TextEditingController();
  var addresscontroler = TextEditingController();
  var nidcontroler = TextEditingController();
  final _key = GlobalKey<FormState>();
  var gender;
  String? _radioVal;
  //late DateTime _startTime;

  DateTime _ProcessTime = DateTime.now();
  var ProcessTime;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Center(
          child: Text(
            "Patient Information",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:PatientData() ,
        ),
      ),
    );
  }
  Form PatientData(){
    return Form(
      key: _key,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          defultTextFied(
            // hint: "Enter Patient name",
            label: " Name",
            type: TextInputType.text,
            pIcon: const Icon(Icons.person),
            onSave: () => (String? val) {
              setState(() {});
            },
            validate: () => (String? val) {},
            vall: false,
            mycontroler: namecontroler,
          ),
          const SizedBox(
            height: 15,
          ),
          defultTextFied(
            // hint: "Patient Age",
            label: "Age",
            type: TextInputType.number,
            pIcon: const Icon(Icons.edit),
            onSave: () => (String? val) {
              setState(() {});
            },
            validate: () => (String? val) {},
            vall: false,
            mycontroler: agecontroler,
          ),
          const SizedBox(
            height: 10,
          ),
          defultTextFied(
            hint: "Patient phone",
            label: "Phone",
            type: TextInputType.number,
            pIcon: const Icon(Icons.phone_android),
            onSave: () => (String? val) {
              setState(() {});
            },
            validate: () => (String? val) {},
            vall: false,
            mycontroler: phonecontroler,
          ),
          const SizedBox(
            height: 15,
          ),
          defultTextFied(
            hint: "Patient Address",
            label: "Address",
            type: TextInputType.number,
            pIcon: const Icon(Icons.home_outlined),
            onSave: () => (String? val) {
              setState(() {});
            },
            validate: () => (String? val) {},
            vall: false,
            mycontroler: addresscontroler,
          ),
          const SizedBox(
            height: 15,
          ),
          defultTextFied(
            // hint: "Enter National ID",
            label: " BirthDate",
            type: TextInputType.number,
            pIcon: const Icon(Icons.edit),
            onSave: () => (String? val) {
              setState(() {});
            },
            validate: () => (String? val) {},
            vall: false,
            mycontroler: nidcontroler,
          ),
          Row(
            children: [
              const Text(
                "Gender ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: RadioListTile(
                  title: const Text("Male"),
                  value: "male",
                  groupValue: gender,
                  activeColor: Colors.purple,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: const Text("Female"),
                  value: "female",
                  groupValue: gender,
                  activeColor: Colors.purple,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ) ,

    );
  }


}
