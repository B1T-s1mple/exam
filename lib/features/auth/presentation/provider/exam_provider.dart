import 'package:exam/features/auth/models/exam_model.dart';
import 'package:exam/features/auth/repositories/exam_repo.dart';
import 'package:flutter/material.dart';

class ExamProvider extends ChangeNotifier{


  bool registering = false;
  String? registerError;
  bool? registerResult;

  Future<void> register(RegisterRequest request) async {
    registering = true;
    registerError = null;
    registerResult = null;
    notifyListeners();
    try {
      await ExamRepo().register(request);
      registerResult = true;
    } catch (e) {
      registerError = e.toString();
    } finally {
      registering = false;
      notifyListeners();
    }
  }
  bool loggingIn = false;
  String? loginError;
  bool? loginResult;

  Future<void> login(LoginRequest request) async {
    loggingIn = true;
    loginError = null;
    loginResult = null;
    notifyListeners();
    try {
      await ExamRepo().login(request);
      loginResult = true;
    } catch (e) {
      loginError = e.toString();
    } finally {
      loggingIn = false;
      notifyListeners();
    }
  }


    bool isSendingOtp = false;
  String? otpError;
  bool? otpResult;

  Future<void> sendOtp(OtpRequest request) async {
    isSendingOtp = true;
    otpError = null;
    otpResult = null;
    notifyListeners();
    try {
      await ExamRepo().sendOtp(request);
      otpResult = true;
    } catch (e) {
      otpError = e.toString();
    } finally {
      isSendingOtp = false;
      notifyListeners();
    }
  }

}