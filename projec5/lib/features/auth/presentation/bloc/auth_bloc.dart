import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordRegExp = RegExp(r'^(?=.*\d).{6,}$');

  String? emaILCheck(String? value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (value!.isEmpty) {
      return "Email is Missing";
    } else if (!emailRegex.hasMatch(value)) {
      return "Invalid email ";
    } else {
      return null;
    }
  }

  String? passwordCheck(String? value) {
    final passwordRegExp = RegExp(r'^(?=.*\d).{6,}$');
    if (value!.isEmpty) {
      return "Password is Missing";
    } else if (!passwordRegExp.hasMatch(value)) {
      return "Invalid password number";
    } else {
      return null;
    }
  }

  AuthBloc() : super(AuthInitial()) {
    // on<AuthEvent>((event, emit) {});
    on<PasswordChanged>((event, emit) {
      emit(PasswordState());
    });
  }
}
