import 'package:education/screens/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? T,F;
  @override
  Widget build(BuildContext context) {
    T=Provider.of<Homeprovider>(context,listen: true);
    F=Provider.of<Homeprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Education Website"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: GridView.builder(
          itemCount: F!.images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'web');
                F!.Url(index);
              },
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 2),
                        ),
                        child: Image.asset("${F!.images[index]}", fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${F!.name[index]}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,)),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}


