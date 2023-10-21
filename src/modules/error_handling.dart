import '../headers.dart';

class ErrorHandling{
   void handleError(String? errorMessage){
    if(errorMessage!=null){
      showDialog(errorMessage);
      exit(0);
    }
  }
   void showDialog(String message) {
    final command = 'msg * $message';
    Process.runSync('cmd', ['/c', command]);
  }
}