import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  //Asynchronous code is an action that starts now and finishes later
  void getData() async{
  Response response = await  get(Uri.parse("https://www.worldtimeapi.org/api/timezone/Europe/London"));
  Map data = jsonDecode(response.body);
  //print(data);
    //get properties from data
    String datetime = data["datetime"];
    String offset = data["utc_offset"];
    //print(datetime);
    //print(offset);
    //Now if we run this we get it in a format thats not really nice but we can change that by using
    //Create a DateTime object
    DateTime now = DateTime.parse(datetime); //So we created a variable called now of type DateTime then instantiate DateTime and then parse the datetim string
    //Now we've converted it into a DateTime object so we can print
  //but we can also use an add method to add duration of hours for time difference
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }


  @override
  //This the function that runs first when the state object is first created
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();

  }



  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
