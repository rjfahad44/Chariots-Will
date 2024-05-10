import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class ApiCallDemo{
  Future<void> uploadImageBase64UsingHttp() async { // this methode working fine //
    var uri = Uri.parse('http://27.147.221.94:8083/api/ImageCapture/SubmitImageBase64');
    var request = http.Request('POST', uri);
    var authorizationToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjEyIiwiQ2xpZW50SWQiOiIxIiwiRW1wbG95ZWVJZCI6IjciLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYXB1c2VyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiYXB1c2VyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiNDk5ZTExMzMtZDZkZC00ZjhmLTgzMDEtNjkxOWY1NzcwNTkyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmF0aW9uIjoiTWF5IEZyaSAxMCAyMDI0IDEyOjEwOjQyIFBNIiwibmJmIjoxNzE1MzE3ODQyLCJleHAiOjE3MTUzMjE0NDIsImlzcyI6Imh0dHBzOi8vb3NhcGkuYnVub3BvcmlicmFqb2suY29tIiwiYXVkIjoiaHR0cHM6Ly9vcy5idW5vcG9yaWJyYWpvay5jb20ifQ.MPAaAsGAEnToIzFZ6vkLNVOaeKQi-RkLsndA1FHH7Oo";
    request.headers['accept'] = '*/*';
    request.headers['Content-Type'] = 'application/json';
    request.headers['Authorization'] = 'Bearer $authorizationToken';

    var bytes = await rootBundle.load('assets/images/demo_profile.png');
    var base64Image = base64Encode(bytes.buffer.asUint8List());
    var data = {
      'base64Image': base64Image,
    };
    var jsonData = jsonEncode(data);
    request.body = jsonData;

    print('\nRequest : ${request.body}');
    var response = await request.send();

    if (response.statusCode == 200) {
      print('Image uploaded successfully!');
    } else {
      print('Error uploading image: ${response.reasonPhrase}');
    }
  }

  Future<XFile?> pickImage() async { // this methode working fine //
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  Future<void> uploadImageUsingHttp() async {
    var uri = Uri.parse('http://27.147.221.94:8083/api/ImageCapture/SubmitImageCapture');
    var request = http.MultipartRequest('POST', uri);

    var authorizationToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjEyIiwiQ2xpZW50SWQiOiIxIiwiRW1wbG95ZWVJZCI6IjciLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYXB1c2VyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiYXB1c2VyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiN2U2ZDYwY2YtZTcxMC00MTIwLWE1MWYtMDExMTlkNWJkYjlkIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmF0aW9uIjoiTWF5IFRodSAwOSAyMDI0IDIyOjUyOjEwIFBNIiwibmJmIjoxNzE1MjY5OTMwLCJleHAiOjE3MTUyNzM1MzAsImlzcyI6Imh0dHBzOi8vb3NhcGkuYnVub3BvcmlicmFqb2suY29tIiwiYXVkIjoiaHR0cHM6Ly9vcy5idW5vcG9yaWJyYWpvay5jb20ifQ.YdeP4657Ls4Kl5UE3FMP8OFul1q0mmJsl579tWGlc1s";
    request.headers['Authorization'] = 'Bearer $authorizationToken';

    pickImage().then((value) async {
      var multipartFile = await http.MultipartFile.fromPath('image',  value?.path ?? '');
      request.files.add(multipartFile);

      request.fields['DoctorName'] = "abc";
      request.fields['EmployeeId'] = "xyz";
      request.fields['ImageName'] = "demo_image";
      request.fields['PrescribedProducts'] = '[]';

      var response = await request.send();

      if (response.statusCode == 200) {
        print('Image uploaded successfully!');
      } else {
        print('Error uploading image: ${response.reasonPhrase}');
      }
    });
  }
}