import 'package:dio/dio.dart';
import 'package:getone/modal/modal.dart';

class Services {
  final String urlOFdi = 'https://jsonplaceholder.typicode.com/posts';
  Dio dio = Dio();

  Future<List<DatasFromApi>> change() async {
    try {
      final response = await dio.get(urlOFdi);
      if (response.statusCode == 200) {
        List<dynamic> dataList = response.data;
        return dataList.map((data) => DatasFromApi.fromJson(data)).toList();
      } else {
        throw Exception('Failed to load user data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
