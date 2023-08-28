import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Modal/User.dart';

class RestApiService {
   String url = "https://mocki.io/v1/ecbdcf5d-67af-42df-81ab-6206a2a4c03d";

   Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(url));
    // Add code here to parse the response and create a list of User objects
    print(response.body);
    // You might want to use the 'User.fromJson' constructor for this
    if(response.statusCode==200){
      return getUsersList(response.body);
    }else{
      throw Exception("unable to fetch");
    }
  }

   List<User> getUsersList(String responsBody){
    final parsedBody  =json.decode(responsBody).cast<Map<String,dynamic>>();
    return parsedBody.map<User>((json)=>User.fromJson(json)).toList();
  }
}
