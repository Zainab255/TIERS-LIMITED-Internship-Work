import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  DogImage dogImage = DogImage(message: 'message', status: 'status');
  @override
  void initState() {
    super.initState();
    fetchDogImage();
  }
  Future<void> fetchDogImage() async {
    final response = await http.get(
        Uri.parse('https://dog.ceo/api/breeds/image/random')
    );
    if (response.statusCode == 200) {
      setState(() {
        dogImage = DogImage.fromJson(json.decode(response.body));
      });
    }

    else {
      throw Exception('Failed to load dog image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('RANDOM DOG IMAGE APP' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white,),
        ),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            dogImage.message != 'message'
                ? Image.network(dogImage.message)
                : CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(dogImage.message),
          ],
        ),
      ),
    );
  }
}

class DogImage {
  final String message;
  final String status;
  DogImage({
    required this.message,
    required this.status,
  });
  factory DogImage.fromJson(Map<String, dynamic> json) => DogImage(
    message: json["message"],
    status: json["status"],
  );
  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
  };
}


