import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkInfo {
  final Connectivity connectivity;

  NetworkInfo({required this.connectivity});

  Future<bool> isConnected() async {
    final connectivityResult = await connectivity.checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }
}
