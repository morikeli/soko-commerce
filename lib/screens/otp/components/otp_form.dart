import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode, pin3FocusNode, pin4FocusNode;
  
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextFormField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width *.2,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (value) => nextFormField(value: value, focusNode: pin2FocusNode!),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width *.2,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (value) => nextFormField(value: value, focusNode: pin3FocusNode!),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width *.2,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (value) => nextFormField(value: value, focusNode: pin4FocusNode!),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width *.2,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => pin4FocusNode!.unfocus(),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .08),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kPrimaryColor,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Homepage.routeName);  
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: kPrimaryLightColor
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}