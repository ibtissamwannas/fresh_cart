import 'dart:convert';

import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/services/share_preferences_singleton.dart';
import 'package:fresh_cart/features/auth/data/models/user_model.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUser);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString!));
  return userEntity;
}
