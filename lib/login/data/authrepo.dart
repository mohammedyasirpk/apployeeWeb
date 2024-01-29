// ignore_for_file: use_build_context_synchronously

import 'package:apployee/models/signin_model.dart';
import 'package:apployee/models/signup_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const loginString = "Sign in successfully";
const registerString = "SignUp successfull";
const invalidEmail = "Invalid Email";
const userNotFound = "User Not Found";
const internetIssue = "Check your internet connection";
const defaultError = "somthing went wrong";
const googleSignIn = "Sign In With Google is successfull";
const userIsDisabled = "This User is disabled";
const wrongPassword = "Wrong Password";
const emailAlready = "This email is already used";
const weekPassword = "Enter strong password";

const operationNot = "This Operation is not allowed";

class AuthRepo {
  AuthRepo._internal();
  static AuthRepo instance = AuthRepo._internal();
  factory AuthRepo() {
    return instance;
  }
  void signIn(UserModelSignIn userValue, BuildContext context) async {
    if (userValue.email.isEmpty || userValue.password.isEmpty) {
      showErrorMessage("Enter your email and password", context);
      return;
    }

    try {

       


      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userValue.email,
        password: userValue.password,
      );
         showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        );
      },
    );
      

      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "network-request-failed":
          showErrorMessage(internetIssue, context);
          break;
        case "invalid-email":
          showErrorMessage(invalidEmail, context);
          break;
        case "user-not-found":
          showErrorMessage(userNotFound, context);
          break;
        case "user-disabled":
          showErrorMessage(userIsDisabled, context);
          break;
        case "wrong-password":
          showErrorMessage(wrongPassword, context);
          break;
        default:
          showErrorMessage("Something went Wrong", context);
          break;
      }
    }
  }

  void signout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      rethrow;
    }
  }

  void showErrorMessage(String code, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          code,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void signUp(UserModelSignOut userValue, BuildContext context) async {
    try {
      //create user
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userValue.email, password: userValue.password);

      FirebaseFirestore.instance.collection("Users").doc().set({

        "firstname": userValue.firstName,
        "lastname": userValue.lastName,
        "email": userValue.email,
        "password": userValue.password,
        "confirm_password": userValue.confirmPassword,
       "taskTime" : {}
      });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          showErrorMessage(emailAlready, context);
          break;
        case "network-request-failed":
          showErrorMessage(internetIssue, context);
          break;

        case "operation-not-allowed":
          showErrorMessage(operationNot, context);

        case "invalid-email":
          showErrorMessage(invalidEmail, context);
          break;
        case "user-not-found":
          showErrorMessage(userNotFound, context);
          break;
        case "user-disabled":
          showErrorMessage(userIsDisabled, context);
          break;
        case "wrong-password":
          showErrorMessage(wrongPassword, context);
          break;
              case "weak-password":
          showErrorMessage(wrongPassword, context);
          break;
        default:
          showErrorMessage("Something went Wrong", context);
          break;
      }
    }
  }



}
