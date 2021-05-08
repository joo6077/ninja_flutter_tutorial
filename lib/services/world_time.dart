aimport 'dart:convert';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8'
      };
      Response response =
          await get('https://worldtimeapi.org/api/timezone/Asia/Seoul');
      print(response.statusCode);
      Map data = jsonDecode(response.body);
      print(data);

      // get properties form data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      time = now.toString();
ut    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
