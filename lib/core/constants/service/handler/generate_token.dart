import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class GenerateToken {
// Create a json web token
// Pass the payload to be sent in the form of a map
  String token = "";
  final jwt = JWT(
    // Payload
    {
      'id': 123,
      'server': {
        'id': '3e4fc296',
        'loc': 'euw-2',
      }
    },

    issuer: 'https://github.com/jonasroussel/dart_jsonwebtoken',
  );

  String generateToken() {
    token = jwt.sign(SecretKey('secret passphrase'));

    print('Signed token: $token\n');

    return token;
  }

// Sign it (default with HS256 algorithm)

}
