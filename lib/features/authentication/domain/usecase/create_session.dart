import 'package:dartz/dartz.dart';
import 'package:movie_app/features/authentication/domain/entities/create_session.dart';
import 'package:movie_app/features/authentication/domain/repository/auth_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/request_token.dart';

class CreateSessionUseCase{
  final AuthRepository repository;

  CreateSessionUseCase(this.repository);
  Future<Either<Failure,CreateSession>> call(Map<String,dynamic> requestBody)async{
    return await repository.createSession( requestBody);
  }

}