import './src/headers.dart';
import 'src/modules/server.dart';


void main() {
  final errorHandler = ErrorHandling();

  final errorMessage = FirewallRules().configure();
  errorHandler.handleError(errorMessage);

  Server().start();
}
