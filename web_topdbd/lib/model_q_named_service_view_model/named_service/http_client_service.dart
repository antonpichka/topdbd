import 'package:http/http.dart' as http;

final class HttpClientService {
  static final HttpClientService instance = HttpClientService._();
  static http.Client? _httpClient;

  HttpClientService._();

  http.Client? get getHttpClient {
    if (_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}