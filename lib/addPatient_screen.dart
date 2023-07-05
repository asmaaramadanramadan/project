import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:g_project/widget/fields.dart';

import 'p_fullResult.dart';
class AddPatient extends StatefulWidget {
  const AddPatient({Key? key}) : super(key: key);
  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  var namecontroler = TextEditingController();
  var phonecontroler = TextEditingController();
  var gendercontroler = TextEditingController();
  var agecontroler = TextEditingController();
  var addresscontroler = TextEditingController();
  var nidcontroler = TextEditingController();

  String? gender;
  String? _radioVal;
  //PlatformFile? file;

  // void loadP_File() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();
  //   if (result != null) {
  //     setState(() {
  //       file = result.files.first;
  //     });
  //
  //     // File file = File(result.files.single.path);
  //     print(file?.name);
  //   } else {
  //     // User canceled the picker
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){},),
        backgroundColor: Colors.purple.shade200,
        title: Center(
          child: const Text(
            "New Patient ",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              defultTextFied(
                // hint: "Enter National ID",
                label: " NID",
                type: TextInputType.number,
                pIcon: const Icon(Icons.edit),
                onSave: () => (String? val) {
                  setState(() {});
                },
                validate: () => (String? val) {
                  if (val!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
                vall: false,
                mycontroler: nidcontroler,
              ),
              const SizedBox(
                height: 8.0,
              ),
              defultTextFied(
                hint: "Enter Patient name",
                label: " Name",
                type: TextInputType.text,
                pIcon: const Icon(Icons.person),
                onSave: () => (String? val) {
                  setState(() {});
                },
                validate: () => (String? val) {
                  if (val!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
                vall: false,
                mycontroler: namecontroler,
              ),
              const SizedBox(
                height: 10,
              ),

              defultTextFied(
                hint: "Patient phone",
                label: "Phone",
                type: TextInputType.number,
                pIcon: Icon(Icons.phone_android),
                onSave: () => (String? val) {
                  setState(() {});
                },
                validate: () => (String? val) {
                  if (val!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
                vall: false,
                mycontroler:  phonecontroler,
              ),
              SizedBox(
                height: 10,
              ),
              defultTextFied(
                hint: "Patient Age",
                label: "Age",
                type: TextInputType.number,
                pIcon: const Icon(Icons.edit),
                onSave: () => (String? val) {
                  setState(() {});
                },
                validate: () => (String? val) {
                  if (val!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
                vall: false,
                mycontroler: agecontroler,
              ),
              const SizedBox(
                height: 10,
              ),

              defultTextFied(
                hint: "Patient Address",
                label: "Address",
                type: TextInputType.number,
                pIcon: Icon(Icons.home_outlined),
                onSave: () => (String? val) {
                  setState(() {});
                },
                validate: () {},
                vall: false,
                mycontroler: addresscontroler,
              ),
              Row(
                children: [
                  const Text(
                    "Gender ?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              MaterialButton(
                  minWidth: 30.0,
                  color: Colors.purple.shade300,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple.shade300),
                      borderRadius: BorderRadius.circular(15.0)),
                  onPressed:(){},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Create",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
