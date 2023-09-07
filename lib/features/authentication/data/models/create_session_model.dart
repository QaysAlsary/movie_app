import 'package:movie_app/features/authentication/domain/entities/create_session.dart';

class CreateSessionModel extends CreateSession{
const CreateSessionModel({required bool success,required String sessionId})
 :super(success: success,sessionId: sessionId);
factory CreateSessionModel.fromJson(Map<String,dynamic>json){
  return CreateSessionModel(success: json['success'], sessionId: json['session_id'],);
}
Map<String,dynamic> toJson(){
  return {'success':success, 'session_id':sessionId};
}
}