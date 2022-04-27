import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/Customer/settings/profile/components/body.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  _EditFormState createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        elevation: 0.5,
      ),
      body: const SafeArea(
        child: EditProfile(),
      ),
    );
  }
}
