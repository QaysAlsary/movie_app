import 'package:movie_app/features/authentication/domain/entities/request_token.dart';

 class RequestTokenModel extends RequestToken{
   const RequestTokenModel({required bool success,required String expiresAt,required String requestToken})
   :super(success:success,expiresAt:expiresAt,requestToken:requestToken);
factory RequestTokenModel.fromJson(Map<String, dynamic>json) {
  return RequestTokenModel(success: json["success"], expiresAt: json["expires_at"], requestToken: json["request_token"]);
   }
 Map<String, dynamic> toJson(){
  return {'success' : success, 'expires_at' : expiresAt, 'request_token':requestToken};
 }
 }