import 'dart:convert';

import 'company/model/Company.dart';

import 'package:http/http.dart' as http;

import 'constants/api_constants.dart';

class Repository {
  List<Company> companyData = [
    Company(
        id: "1",
        name: "asdf",
        description: "afsd",
        imageUrl: "asfd",
        logoUrl: "asfd",
        urlName: "asdfa"),
    Company(
        id: "1",
        name: "asdf",
        description: "afsd",
        imageUrl: "asfd",
        logoUrl: "asfd",
        urlName: "asdfa"),
    Company(
        id: "1",
        name: "asdf",
        description: "afsd",
        imageUrl: "asfd",
        logoUrl: "asfd",
        urlName: "asdfa")
  ];

  Future<List<Company>> fetchDataFromServer() async {
    http.Response response = await http.get(ApiConstants.getCompanyUri(),
        headers: ApiConstants.getCustomizedHeader());
    print(response.statusCode);
    if (response.statusCode == 200)
      return List<Company>.from(
          json.decode(response.body).map((x) => Company.fromJson(x)));
    else
      throw Exception();
  }
}
