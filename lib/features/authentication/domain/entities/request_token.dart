import 'package:equatable/equatable.dart';

class RequestToken extends Equatable{
  final bool success;
  final String expiresAt;
  final String requestToken;

  const RequestToken({required this.success, required this.expiresAt,required this.requestToken});

  @override
  // TODO: implement props
  List<Object?> get props => [success,expiresAt,requestToken];
}