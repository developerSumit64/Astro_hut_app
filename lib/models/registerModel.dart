class RegisterModel {
  bool? status;
  Errors? errors;

  RegisterModel({
    this.status,
    this.errors,
  });

}

class Errors {
  List<String>? email;

  Errors({
    this.email,
  });

}
