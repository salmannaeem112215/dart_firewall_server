import '../headers.dart';

class FirewallRules {
  static const String kRuleName = '${kName}_rule';
  static const String kRuleProtocol = 'TCP';

  String? configure() {
    if (addRule() == false) {
      return 'Please Run Program as Administration';
    }
    return null;
  }

  bool isInAdministrativeMode() {
    final command = 'net session';
    final result = Process.runSync('cmd', ['/c', command]);
    return result.exitCode == 0;
  }

  bool addRule() {
    return _addInboundRule(kRuleName, kPort, kRuleProtocol);
  }

  bool _doesInboundRuleExist(String ruleName, int port) {
    final command =
        'netsh advfirewall firewall show rule name="$ruleName" dir=in';
    final result = Process.runSync('cmd', ['/c', command]);
    return result.stdout.contains('Port=$port/');
  }

  bool _addInboundRule(String ruleName, int port, String protocol) {
    if (!isInAdministrativeMode()) {
      return false;
    }
    if (_doesInboundRuleExist(ruleName, port)) {
      print('Inbound Rule Confirugred');
      return true;
    }

    final command =
        'netsh advfirewall firewall add rule name="$ruleName" dir=in action=allow protocol=$protocol localport=$port';
    final result = Process.runSync('cmd', ['/c', command]);

    if (result.exitCode == 0) {
      print('Inbound Rule Confirugred');
    } else {
      print('Failed to add inbound rule: ${result.stderr}');
    }
    return result.exitCode == 0;
  }
}
