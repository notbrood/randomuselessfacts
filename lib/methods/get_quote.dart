import 'package:http/http.dart' as http;
import 'package:randomuselessfacts/models/quote.dart';

Future<String?> getQuote() async {
  final uri = Uri.parse("https://uselessfacts.jsph.pl//random.json?language=en");
  var client = http.Client();
  final response = await client.get(uri);
  if(response.statusCode == 200){
    String? quote = Quote.fromRawJson(response.body).text;
    return quote;
  }
  else{
    return "ERROR";
  }

}