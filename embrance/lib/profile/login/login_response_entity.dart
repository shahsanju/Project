import 'package:embrance/generated/json/base/json_field.dart';
import 'package:embrance/generated/json/login_response_entity.g.dart';
import 'dart:convert';
export 'package:embrance/generated/json/login_response_entity.g.dart';

@JsonSerializable()
class LoginResponseEntity {
	late LoginResponseResponse response;

	LoginResponseEntity();

	factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => $LoginResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginResponseResponse {
	late LoginResponseResponseUser user;
	late int status;

	LoginResponseResponse();

	factory LoginResponseResponse.fromJson(Map<String, dynamic> json) => $LoginResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseResponseToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginResponseResponseUser {
	late String id;
	late String name;
	late String username;
	late String password;
	late String type;
	@JSONField(name: "auto_generated_pass")
	dynamic autoGeneratedPass;
	@JSONField(name: "alumnus_id")
	late String alumnusId;

	LoginResponseResponseUser();

	factory LoginResponseResponseUser.fromJson(Map<String, dynamic> json) => $LoginResponseResponseUserFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseResponseUserToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}