import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource{
  Future<String> getCachedSessionId();
  Future<Unit> cacheSessionId(String sessionId);
}
class AuthLocalDataSourceImpl implements AuthLocalDataSource{
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<Unit> cacheSessionId(String sessionId) {
   sharedPreferences.setString("SESSION_ID", sessionId);
   return Future.value(unit);
  }

  @override
  Future<String> getCachedSessionId() {
    final sessionId = sharedPreferences.getString("SESSION_ID");
    if(sessionId==null || sessionId.isEmpty) {
      throw CacheException();
    } else{
      return Future.value(sessionId);
    }
  }

}