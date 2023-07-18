import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String flag; // url for an asset flag icon
  late String url; // location url for endpoint
  late String time; // the time in that location
  late bool isDaytime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // make the request
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      // get properties from data
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now =
          DateTime.parse(datetime).add(Duration(hours: int.parse(offset)));

      // set the time property
      time = DateFormat.jm().format(now);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
    } catch (e) {
      time = 'caught error: $e';
    }
  }
}
