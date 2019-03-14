import 'dart:async';
import 'Validators.dart';

class Bloc extends Object with Validators {

  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Add Data
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
  _email.close();
  _password.close();
  }

}

final bloc = Bloc();