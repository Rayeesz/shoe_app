// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:hive/hive.dart';
  part 'shoemodel.g.dart';


@HiveType(typeId: 2)
class Shoe {
  @HiveField(0)
  var text;
  @HiveField(1)
  var price;
  @HiveField(2)
  dynamic image;
  Shoe({required this.text, required this.price, required this.image});
}

