import 'package:equatable/equatable.dart';

import '../entities/user_entity.dart';

class MealUser extends Equatable{
  final String userId;
  final String email;
  final String name;
  final String phone;
  final String address;
  
  const MealUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.address,
    required this.phone

  });

  static const empty = MealUser(
    userId: "", 
    email: "", 
    name: "",
    address: "", 
    phone: "");


  MealUser copyWith({
   String? userId,
   String? email,
   String? name,
   String? phone,
   String? address,
    }){
      return MealUser(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name,
        address: address ?? this.address, 
        phone: phone?? this.phone);
    }


// this method used to push the data into the firebase because the firebase does not accepted objects 
//convert the object into data map
  MealUserEntity toEntity(){
    return MealUserEntity(
        userId: userId,
        email: email,
        name: name,
        address: address, 
        phone: phone
    );
  }

static MealUser fromEntity(MealUserEntity entity){
  return MealUser(
    userId: entity.userId,
    email: entity.email, 
    name: entity.name,
    address: entity.address,
    phone: entity.phone);
}
  
  @override
  // TODO: implement props
  List<Object?> get props => [userId, email,name,phone,address];

}