import 'package:movie_app/features/authentication/data/models/create_session_model.dart';
import 'package:movie_app/features/authentication/data/models/request_token_model.dart';

abstract class AuthRemoteDataSource{
  Future<RequestTokenModel> getRequestToken();
  Future<RequestTokenModel> validateWithLogin(Map<String,dynamic> requestBody);
  Future<CreateSessionModel> createSession(Map<String,dynamic> requestBody);
}
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{


  @override
  Future<RequestTokenModel> getRequestToken() {
    // TODO: implement getRequestToken
    throw UnimplementedError();
  }

  @override
  Future<RequestTokenModel> validateWithLogin(Map<String,dynamic> requestBody) {
    // TODO: implement validateWithLogin
    throw UnimplementedError();
  }
  @override
  Future<CreateSessionModel> createSession(Map<String,dynamic> requestBody) {
    // TODO: implement createSession
    throw UnimplementedError();
  }

}