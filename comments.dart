/*  import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int plus = 0;
  void count(){
    setState((){
      plus += 1;
    });
  }


  //Asynchronous code is an action that starts now and finishes later
  void getData() async{
    //Simulating a network request for a username
    String user = await Future.delayed(Duration(seconds: 3),(){
      return"yoshi";
    });
    //This is a non blocking code
    //Meaning that whatever we print or change outside the future delayed
    //Prints first in the console before the asynchronous

    //Simulate request to get the bio of the username
    String bio = await Future.delayed(Duration(seconds: 2),(){   //Now with the await keyword we can assign values
      //Since the output of this is a string we can return instead of print
      //Now we print the variables
      // print("Vegan, Football");
      return "Vegan, Pray, football";
      //Now if we run this code we see that the second delayed comes before the first
      //Even though we need username before the bio
      //Now to fix that we add the async word to the function just before the curly bracket
      //Then we add await to the first delayed meaning wait for this to run before any other thing
    });
    print("$user - $bio");
    //Now this print below waits for the one above since the two are asynchronous
    print("Jesus is King");
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
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose Location"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: ElevatedButton(
            onPressed: count,
            child: Text("counter is " "$plus")

        )

    );
  }
}
*/






















/*void getTime() async{
  Response response = await  get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //print(response.body);// This is a json string so we cant work with the body, however we can use a method known as jsonDecode() to decode the string
  Map data =  jsonDecode(response.body);//To use the jsonDecode () we have to import dart convert, then we store it as a Map
  print(data["title"]); //Then print it
}

