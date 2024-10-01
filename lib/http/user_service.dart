import 'package:boxio_assignment/http/network_services.dart';

void main() async {
  final apiService = ApiService('http://test.api.boxigo.in/sample-data/');

  try {
    List<dynamic> data = await apiService.fetchData();
    print(data); // Print the fetched data
  } catch (e) {
    print('An error occurred: $e');
  }
}