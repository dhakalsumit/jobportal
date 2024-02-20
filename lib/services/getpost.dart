import 'package:http/http.dart' as http;

class services {
  static const String url = "https://jsonplaceholder.typicode.com/todos/1";
}

getpost() async {
  const String url = "https://jsonplaceholder.typicode.com/todos/1";
  try {
    var response = await http.get(Uri.parse(url));
    print(response.body);
    return response;
  } catch (e) {}
}
