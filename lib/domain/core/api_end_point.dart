import 'package:netflixproject/core/string.dart';
import 'package:netflixproject/infrastructure/api_key.dart';

class Apiendpoint {
  static const downloads = "$kBaseUrl/discover/movie?api_key=$apikey";
  static const search = "$kBaseUrl/search/movie?api_key=$apikey";
  //orginal title
 static const hotAndNewMovie="$kBaseUrl/discover/movie?api_key=$apikey";
 //orginal name
 static const hotAndNewTv="$kBaseUrl/discover/tv?api_key=$apikey";
}
