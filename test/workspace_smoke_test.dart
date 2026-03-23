import 'package:flutter_inappwebview_plus/flutter_inappwebview_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('workspace root can import the published package API', () {
    final uri = WebUri('https://example.com/path?q=1');
    final request = URLRequest(
      url: uri,
      method: 'GET',
      headers: {'Accept': 'text/html'},
    );

    expect(uri.isValidUri, isTrue);
    expect(uri.host, 'example.com');
    expect(request.url, same(uri));
    expect(request.method, 'GET');
    expect(request.headers, containsPair('Accept', 'text/html'));
  });

  test('WebUri can preserve the original raw value when requested', () {
    final uri = WebUri(
      'scheme://customHostValue',
      forceToStringRawValue: true,
    );

    expect(uri.rawValue, 'scheme://customHostValue');
    expect(uri.toString(), 'scheme://customHostValue');
  });
}
