import 'package:bloc_sample/bloc/register_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<RegisterBloc>(context, listen: false);

    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Register"),
            StreamBuilder<Object>(
              stream: bloc.name,
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
                    errorText: snapshot.error == null ||
                            snapshot.error.toString() == ""
                        ? ""
                        : snapshot.error.toString(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) => bloc.changeName(value),
                );
              },
            ),
            StreamBuilder<Object>(
              stream: bloc.emailId,
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                    errorText: snapshot.error == null ||
                            snapshot.error.toString() == ""
                        ? ""
                        : snapshot.error.toString(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) => bloc.changeEmail(value),
                );
              },
            ),
            StreamBuilder<Object>(
              stream: bloc.phoneNumber,
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter Phone",
                    labelText: "Phone",
                    errorText: snapshot.error == null ||
                            snapshot.error.toString() == ""
                        ? ""
                        : snapshot.error.toString(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) => bloc.changeEmail(value),
                );
              },
            ),
            StreamBuilder<Object>(
              stream: bloc.password,
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    errorText: snapshot.error == null ||
                            snapshot.error.toString() == ""
                        ? ""
                        : snapshot.error.toString(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) => bloc.changePassword(value),
                );
              },
            ),
            StreamBuilder<Object>(
              stream: bloc.confirmPassword,
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter Confirm Password",
                    labelText: "Confirm Password",
                    errorText: snapshot.error == null ||
                            snapshot.error.toString() == ""
                        ? ""
                        : snapshot.error.toString(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onChanged: (value) => bloc.changeConfirmPassword(value),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
