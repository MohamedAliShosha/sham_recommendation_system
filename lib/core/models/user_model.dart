import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? password;
  final String? role;
  final bool? active;
  final List<dynamic>? wishlist;
  final List<dynamic>? compare;
  final List<dynamic>? addresses;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.role,
    this.active,
    this.wishlist,
    this.compare,
    this.addresses,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['_id'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        password: json['password'] as String?,
        role: json['role'] as String?,
        active: json['active'] as bool?,
        wishlist: json['wishlist'] as List<dynamic>?,
        compare: json['compare'] as List<dynamic>?,
        addresses: json['addresses'] as List<dynamic>?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'role': role,
        'active': active,
        'wishlist': wishlist,
        'compare': compare,
        'addresses': addresses,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      phone,
      password,
      role,
      active,
      wishlist,
      compare,
      addresses,
      createdAt,
      updatedAt,
    ];
  }
}
