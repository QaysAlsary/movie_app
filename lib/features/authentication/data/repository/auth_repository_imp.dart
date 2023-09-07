import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failures.dart';
import 'package:movie_app/features/authentication/domain/entities/create_session.dart';
import 'package:movie_app/features/authentication/domain/entities/request_token.dart';
import 'package:movie_app/features/authentication/domain/repository/auth_repository.dart';

import '../datasource/auth_local_data_source.dart';
import '../datasource/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository{
final AuthRemoteDataSource remoteDataSource;
final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({required this.remoteDataSource,required this.localDataSource});

  @override
  Future<Either<Failure, RequestToken>> getRequestToken() async{
   try{
    final requestToken = await remoteDataSource.getRequestToken();
    return Right(requestToken);
   }
   on ServerException{
     return Left(ServerFailure());
   }
  }

  @override
  Future<Either<Failure, RequestToken>> validateWithLogin(Map<String,dynamic> requestBody) async{
    try {
      final validation = await remoteDataSource.validateWithLogin(requestBody);
      return Right(validation);
    } on ServerException{
      return Left(ServerFailure());
    }
  }
  @override
  Future<Either<Failure, CreateSession>> createSession(Map<String,dynamic> requestBody) async{
    try {
      final sessionId = await remoteDataSource.createSession(requestBody);
      return Right(sessionId);
    } on ServerException{
      return Left(ServerFailure());
    }
  }

}