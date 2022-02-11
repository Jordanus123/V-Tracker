
import 'package:http/http.dart' as http;

class Api {
  final String _url = 'https://americas.api.riotgames.com';
  final String apiKey = 'RGAPI-abd40969-2698-4daa-a58d-b5c6e48ac5ed';

  Map<String, String> _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        "X-Riot-Token": "RGAPI-abd40969-2698-4daa-a58d-b5c6e48ac5ed"
      };

  Future<http.Response> search(String gameName, String tagLine) async {
    // var fullUrl =
    //     _url + '/riot/account/v1/accounts/by-riot-id/$gameName/$tagLine';
    var fullUrl =
        _url + '/riot/account/v1/accounts/by-riot-id/kj%20raval/puffy';
    Uri parsedUrl = Uri.parse(fullUrl);

    return await http.get(parsedUrl, headers: _setHeaders());
  }
}
