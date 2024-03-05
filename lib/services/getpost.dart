import 'package:http/http.dart' as http;

class services {
  static const String url = "";
  login(String email, String password, String role) async {
    try {
      // print("here here");
      // print(email);
      // print(password);
      final resposne = await http.post(
          Uri.parse("http://192.168.18.24:5051/api/v1/user/login"),
          body: {
            "email": email,
            "password": password,
            "role": role,
          });
      // print("body is ");
      print(resposne.body);
    } catch (error) {
      // print("error is $error");
    }
  }

  sinup(
      {required String email,
      required String password,
      required String role,
      required String Phonenumber,
      required String name}) async {
    try {
     
      final response = await http.post(
          Uri.parse("http://192.168.18.24:5051/api/v1/user/register"),
          body: {
            "name": name,
            "email": email,
            "password": password,
            "role": role,
            "phone":Phonenumber,
          });
      print(response.body);
    } catch (error) {
      print("$error");
    }
  }
}
