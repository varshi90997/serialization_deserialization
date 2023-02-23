import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:serialization_deserialization/usermodel.dart';

class SeaRiaLiZatIon extends StatefulWidget {
  const SeaRiaLiZatIon({Key? key}) : super(key: key);

  @override
  State<SeaRiaLiZatIon> createState() => _SeaRiaLiZatIonState();
}

class _SeaRiaLiZatIonState extends State<SeaRiaLiZatIon> {
  UserModel userObject =
      UserModel(id: "0001", fullName: "varshil", email: "varshil@gmail.com");

  String userJson =
      '{ "id":"0001" , "fullName":"varshil" , "email":"varshil@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          body: Row(children: [
            ElevatedButton(onPressed: () {

              Map<String,dynamic> userMap=userObject.toMap();//kya format ma ave nathi khbar----->object to map
              var json=jsonEncode(userMap);//==================>   object to String------->object type=String,int,var,float,bool
              print(json.toString());

            }, child: const Text("searialization")),

            const SizedBox(width: 20,),

            ElevatedButton(onPressed: () {

              var decoded=jsonDecode(userJson);//================> String to Object  ===========>Parses the string and returns the resulting Json object.
              Map<String,dynamic> userMap=decoded;//Object ne map ma store karyo
              UserModel newUser=UserModel.fromMap(userMap);//map ne ek ek object ma convert kaRyo
              print(newUser.id.toString());

            }, child: const Text("deSearialization"))
          ]),
        ),
      ),
    );
  }
}

///for searialization
/// object(class)---------->map["name":"varshil"]---------->json(encode)

///for deSearialization
/// json(decode)---------->map["name":"varshil"]---------->object(class)


//==============>named constructor
/// toMap()------>map ni value nakhvi
/// fromMap()---->map ni key nakhvi
