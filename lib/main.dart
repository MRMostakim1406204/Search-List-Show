 import 'package:flutter/material.dart';
import 'package:search_bar_list_search_show/Widgets/Calender.dart';
import 'package:search_bar_list_search_show/Widgets/HomePage.dart';
import 'package:search_bar_list_search_show/Widgets/Library.dart';
import 'package:search_bar_list_search_show/Widgets/LogOut.dart';
import 'package:search_bar_list_search_show/Widgets/MyAccount.dart';
import 'package:search_bar_list_search_show/Widgets/Settings.dart';
import 'package:search_bar_list_search_show/Widgets/help.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example9(),
    );
  }
}
class Example9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton( icon: Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text("MR Mostakim", style: TextStyle(
                fontSize: 30,color: Colors.white,
                fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: IconButton( icon: Icon(Icons.home),
              iconSize: 25,color: Colors.black,onPressed: (){},),
              title: Text("Home Page",style: TextStyle(
                fontSize: 17,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> HomePage()));
                },
            ),
            ListTile(
              leading: IconButton(
                 icon: Icon(Icons.account_box),iconSize: 25,
                 color: Colors.black,onPressed: (){},),
                 title: Text("My Account",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
                  },
            ),
            ListTile(
              leading: IconButton(
                 icon: Icon(Icons.calendar_month),iconSize: 25,
                 color: Colors. black,onPressed: (){},),
                 title: Text("Calender",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> calendarMonth())); 
                  },
            ),
            ListTile(
              leading: IconButton(
                 icon: Icon(Icons.settings),iconSize: 25,
                 color: Colors.black,onPressed: (){},),
                 title: Text("Setting",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){
                     Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Setting())); 
                  },
            ),
            ListTile(
              leading: IconButton(
                 icon: Icon(Icons.library_add),iconSize: 25,
                 color: Colors.black,onPressed: (){},),
                 title: Text("Library",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){ Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Library()));
                     },
            ),
            ListTile(
              leading: IconButton(
                 icon: Icon(Icons.help),iconSize: 25,
                 color: Colors.black,onPressed: (){},),
                 title: Text("Help & feedback",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){
                     Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Help()));
                  },
            ),
             ListTile(
              leading: IconButton(
                 icon: Icon(Icons.logout),iconSize: 25,
                 color: Colors.black,onPressed: (){},),
                 title: Text("Logout",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.bold),),
                  onTap: (){
                     Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Logout()));
                  },
            ),
          ],
        ),
      ),
    );
  }
}
class DataSearch extends SearchDelegate<String> {
  final cities = [ 
    "Joypurhat", "Dhaka", "Gazipur", "Tangail", "Pabna", "Bogura", "Chittagong",
    "Khulna", "Cox Bazar", "Bhola", "Dinajpur", "Comilla", "Bandarban", "Rajshahi",
    "Sylhet", "Mymensingh", "Barisal", "Rangpur", "Jessorw", "Faridpur", "Rangamati",
    "Kushtia", "Noakhali", "Panchagarh", "Chadpur", "Habiganj", "Lakshmipur", "Barguna",
    "Jhalokati", "Pirojpur", "Patuakhali", "Jhenaidah", "Narail", "Magura", "Lalmonirhat",
    "Kurigram", "Nilphamari", "Gaibandhaganj", "Thakurgaon", "Satkhira", "Bagerhat", "Chuadanga",
    "Meherpur", "Sirajganj", "Natore", "Naogaon", "Nawabganj", "Khagrachhari", "Feni", "Sunamganj",
    "Brahmanbaria", "Moulvibazar", "Gopalganj", "Shariatpur", "Madaripur", "Kishoreganj",
    "Rajbari", "Jamalpur", "Sherpur", "Netrakona", "Munshiganj", "Narsingdi", "Manikganj",
    "Narayanganj",





  ];
  final recentCities =["Joypurhat", "Dhaka", "Gazipur", "Tangail", "Pabna",];


  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton( icon: Icon(Icons.clear),onPressed: (){
        query = "";
      })];
  }

  @override
  Widget? buildLeading(BuildContext context) {
     return IconButton(
       icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation,
        ),
        onPressed: (){
          close(context, 'null');
        },
        );
  }

  @override
  Widget buildResults(BuildContext context) {
   return Center(
     child: Container(
      height: 150.0,
      width: 150.0,
       child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
       ),
     ),
   );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentCities
    :cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(itemBuilder:(
      context,index) => 
      ListTile(
        onTap: (){
          showResults(context);
        },
      leading: Icon(Icons.location_city),
      title:  RichText(
        text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.grey))
          ]
      ),),
    ),
    itemCount: suggestionList.length,
    );
  }

}