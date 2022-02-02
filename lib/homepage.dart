import 'package:flutter/material.dart';
import 'package:wisataapp/tempat.dart';
import 'package:wisataapp/detailpage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 30) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.blue,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: Text("Wisata Sumatera Utara",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: tempatList.length,
        itemBuilder: (BuildContext contex, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){ 
              return DetailsPage(tempat: tempatList[index]);
              }));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                  Image.asset("assets/images/${tempatList[index].id}.jpg"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(tempatList[index].judul,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 30.0),)            
                ],
                ),
              ),
            ),
          );
        } ),
    );
  }
}

