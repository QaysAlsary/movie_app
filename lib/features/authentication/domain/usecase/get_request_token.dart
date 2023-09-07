import 'package:dartz/dartz.dart';
import 'package:movie_app/features/authentication/domain/repository/auth_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/request_token.dart';

class GetRequestTokenUseCase{
  final AuthRepository repository;
  GetRequestTokenUseCase(this.repository);
  Future<Either<Failure,RequestToken>> call() async{
    return await repository.getRequestToken();
  }
}