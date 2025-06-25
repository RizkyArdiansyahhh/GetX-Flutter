import 'package:equatable/equatable.dart';

class User extends Equatable {
  String name;
  int age;

  User({required this.name, required this.age});

  @override
  List<Object> get props => [name, age];
}
