import '../headers.dart';

class Server{
  void start(){
    _openPort(kPort);
  }

  void _openPort(int portNumber) {
  ServerSocket.bind(InternetAddress.anyIPv4, portNumber).then((serverSocket) {
    print('Listening on port $portNumber');

    serverSocket.listen((Socket clientSocket) {
      print(
          'Client connected from ${clientSocket.remoteAddress.address}:${clientSocket.remotePort}');
      clientSocket.write('Hello, client!\n');
      clientSocket.close();
    });
  }).catchError((error) {
    print('Error: $error');
  });
}

}