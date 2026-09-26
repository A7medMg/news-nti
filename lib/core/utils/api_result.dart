sealed class ApiResult <T>{

}
class Success<T> extends ApiResult<T>{
  T data;
  Success(this.data);
}
class Error<T>extends ApiResult<T>{
  String errMessage;
  Error (this.errMessage);
}