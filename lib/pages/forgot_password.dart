import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller = TextEditingController();

  String email = '';

  final _formkey = GlobalKey<FormState>();

  resetpassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Password Reset email Has been sent')));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'User-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text('User not found for the above Email')));
      } 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text('P A S S W O R D  R E C O V E R Y '),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter Your Email',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
                child: Form(
                  key: _formkey,
                    child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Email";
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.attach_email_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: (){
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          email= emailcontroller.text;
                        });
                        resetpassword();
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade900,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                'S E N D',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )))
          ],
        ),
      ),
    );
  }
}
