import 'package:flutter/material.dart';
import 'package:food_user/widgets/custom_text_field.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController anyController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[CustomTextField(
        controller: anyController,
        data:Icons.phone,
        hintText:"Phone",
        isObscure:false,
        enabled:true,
      ),
        CustomTextField(
          controller: anyController,
          data:Icons.lock,
          hintText:"Phone",
          isObscure:true,
          enabled:true,
        ),]
    );
  }
}
