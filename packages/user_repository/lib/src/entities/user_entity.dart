import 'package:equatable/equatable.dart';

class MealUserEntity extends Equatable{
  final String userId;
  final String email;
  final String name;
  final String phone;
  final String address;
  
  const MealUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.address,
    required this.phone

  });

//this what do inside firestore
  Map<String,Object?> toDocument(){
    return {
      'userId':userId,
      'email':email,
      'name':name,
      'phone':phone,
      'address':address
    };
  }

  static MealUserEntity fromDoucument(Map<String,dynamic> doc){
    return MealUserEntity(
      userId: doc['userId'], 
      email: doc['email'], 
      name: doc['name'], 
      address: doc['address'], 
      phone: doc['phone']
      );
  }
  @override
  // TODO: implement props
  List<Object?> get props => [userId, email,name,phone,address];
  
}