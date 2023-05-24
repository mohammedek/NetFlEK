import 'package:net_flek/core/strings.dart';
import 'package:net_flek/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey&query=";
}

