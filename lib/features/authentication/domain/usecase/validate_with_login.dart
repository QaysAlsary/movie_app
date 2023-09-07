import 'package:dartz/dartz.dart';
import 'package:movie_app/features/authentication/domain/repository/auth_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/request_token.dart';

class ValidateWithLoginUseCase{
  final AuthRepository repository;

  ValidateWithLoginUseCase(this.repository);
  Future<Either<Failure,RequestToken>> call(Map<String,dynamic> requestBody)async{
    return await repository.validateWithLogin(requestBody);
  }

}