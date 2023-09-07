import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failures.dart';
import 'package:movie_app/features/authentication/domain/entities/create_session.dart';
import '../entities/request_token.dart';

abstract class AuthRepository{
  Future<Either<Failure,RequestToken>> getRequestToken();
  Future<Either<Failure,RequestToken>> validateWithLogin(Map<String,dynamic> requestBody);
  Future<Either<Failure,CreateSession>> createSession(Map<String,dynamic> requestBody);

}