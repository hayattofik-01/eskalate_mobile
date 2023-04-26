import 'package:flutter/material.dart';

class PostDisplay extends StatelessWidget {
  const PostDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.426,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 40, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  
                  children: [
                    Text(
                      "My Posts",
                      style: TextStyle(
                        fontSize: 22.0 * MediaQuery.textScaleFactorOf(context),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
  icon: Icon(Icons.crop_square),
  onPressed: () {
    // Do something when the user presses the button
  },
),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    const Icon(Icons.menu)
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(35, 7, 35, 7),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 10,
                            shadowColor: Colors.grey[500],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.27,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      "https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?b=1&k=20&m=1270067126&s=612x612&w=0&h=tcabRaVlA0bsZhWCDBXxC1IYuGnh7_VuramO-vJ5jRs=",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 
                                  children: [
                                    Text("Big Data"),
                                    SizedBox(height:MediaQuery.of(context).size.height * 0.01),
                                    Container(
                                      width:   MediaQuery.of(context).size.width * 0.5,
                                      height:MediaQuery.of(context).size.height * 0.09 ,
                                      child: Text(
        'Why Big Data needs thick data ?',
        overflow: TextOverflow.clip,
        softWrap: true,
      
      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[Icon(Icons.thumb_up_alt_outlined, color: Colors.grey),SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.009),Text("2.1k",style:TextStyle(fontSize:12* MediaQuery.textScaleFactorOf(context),
                                        fontWeight: FontWeight.w400))]),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [Icon(Icons.access_time), SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.009),Text("1hr ago",style:TextStyle(fontSize:12* MediaQuery.textScaleFactorOf(context),
                                        fontWeight: FontWeight.w400))]),
                                      SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06),
                                        Icon(Icons.bookmark,color:Color.fromARGB(255, 55, 145, 219))
                                      ],
                                    )
                                  ])
                            ]),
                          ),
                        );
                      },
                    )))
          ],
        ));
  }
}