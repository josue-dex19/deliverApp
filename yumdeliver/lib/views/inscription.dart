import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';
import '../widgets/all_widget.dart';

class Inscription extends StatelessWidget {
  Inscription({super.key});

  final _formKey = GlobalKey<FormState>();

  late final String? firstName;

  late final String? lastName;

  late final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              myField(
                Iconsax.user,
                'FirstName',
                'Please enter your first name.',
                onSaved: (value) {
                  firstName = value;
                },
              ),
              myField(
                Iconsax.user_cirlce_add,
                'lastName',
                'Please enter your first lastName.',
                onSaved: (value) {
                  lastName = value;
                },
              ),
              myField(
                Iconsax.mobile,
                'Number',
                'Please enter your first number.',
                onSaved: (value) {
                  phoneNumber = value;
                },
              ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'First Name',
              //   ),
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter your first name.';
              //     }
              //     return null;
              //   },
              //   onSaved: (value) {
              //     firstName = value;
              //   },
              // ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Last Name',
              //   ),
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter your last name.';
              //     }
              //     return null;
              //   },
              //   onSaved: (value) {
              //     lastName = value;
              //   },
              // ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Phone Number',
              //   ),
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter your phone number.';
              //     }
              //     return null;
              //   },
              //   onSaved: (value) {
              //     phoneNumber = value;
              //   },
              // ),
              withButton(context, 'Sign Up', thirdColor, secondaryColor, () {
                if (_formKey.currentState!.validate()) {
                  // Save the form data.
                  _formKey.currentState!.save();

                  // Navigate to the next page.
                  Navigator.pushNamed(context, '/accueil');
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
