import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';


void main (){
  //Unit tests for validating login page
  test('empty username returns error string', () {

    final result = UsernameValidator.validate('');
    expect(result, 'Username can\'t be empty');
  });

  test('non-empty username returns null', () {
    final result = UsernameValidator.validate('username');
    expect(result, null);
  });

  test('empty email returns error string', () {

    final result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });

  test('non-empty email returns null', () {

    final result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('empty password returns error string', () {

    final result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });

  test('non-empty password returns null', () {

    final result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });
}