import 'package:flutter/material.dart';
import 'package:wisataapp/tempat.dart';


class DetailsPage extends StatelessWidget {
  final Tempat tempat;

  const DetailsPage({Key? key, required this.tempat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(tempat.judul),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                margin: EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/images/${tempat.id}.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(tempat.judul,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text(tempat.jadwal,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(height: 8.0),
                        Text(tempat.buka,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(height: 8.0),
                        Text(tempat.hargatiket,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(tempat.keterangan,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16.0)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Tempat Lainnya :",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tempatList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailsPage(tempat: tempatList[index]);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, bottom: 16.0, top: 16.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  "assets/images/${tempatList[index].id}.jpg")),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
