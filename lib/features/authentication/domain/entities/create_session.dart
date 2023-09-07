import 'package:equatable/equatable.dart';

class CreateSession extends Equatable{
  final bool success;
  final String sessionId;
 const CreateSession({required this.success,required this.sessionId});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}