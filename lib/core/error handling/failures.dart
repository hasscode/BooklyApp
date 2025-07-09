import 'package:dio/dio.dart';

abstract class Failures{
  String errmessage;
  Failures(this.errmessage);
}
class ServerFailure extends Failures{
  ServerFailure(super.errmessage);

factory ServerFailure.fromDioError(DioException dioException){
switch(dioException.type){

  case DioExceptionType.connectionTimeout:
return ServerFailure('Connection Time');
  case DioExceptionType.sendTimeout:
    return ServerFailure('Send Time');
  case DioExceptionType.receiveTimeout:
    return ServerFailure('Receive Time');
  case DioExceptionType.badCertificate:
    // TODO: Handle this case.
    throw UnimplementedError();
  case DioExceptionType.badResponse:
    ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
    throw UnimplementedError();
  case DioExceptionType.cancel:
    return ServerFailure('Cancel Error');
  case DioExceptionType.connectionError:
    return ServerFailure('Internet Connection not found');
   
  case DioExceptionType.unknown:
    // TODO: Handle this case.
    throw UnimplementedError();
}
}
factory ServerFailure.fromResponse(int status ,dynamic response){
if(status ==400||status==401||status==403){
  return ServerFailure(response['error']['message']);
}
else if (status == 404){
  return ServerFailure('Error Not found');
}
else if (status == 500){
  return ServerFailure('Internet Connection not found');
} else{
 return ServerFailure('Error ,Try Again later');
}
}
}
