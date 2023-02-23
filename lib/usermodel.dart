class UserModel{
   String? id;
   String? fullName;
   String? email;

   UserModel({required this.id,required this.fullName,required this.email});

   ///map to object
  UserModel.fromMap(Map<String,dynamic> map){
    id=map["id"];
    fullName=map["fullName"];
    email=map["email"];
  }

  ///object to map
  Map<String, dynamic> toMap()=>{
    "name": id,
    "fullName": fullName,
    "email": email,
  };
}