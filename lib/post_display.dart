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
        height: MediaQuery.of(context).size.height * 0.38,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 40,0),
              child: Row(
                children: [
                  const Text(
                    "My Posts",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                     
                     
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.menu),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  const Icon(Icons.menu)
                ],
              ),
              
            ),
            Expanded(
            child:Container(
                width:MediaQuery.of(context).size.width * 1,
                height:MediaQuery.of(context).size.height * 0.25,
               
                child:ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35,7,35,7),
      child: Card(
         shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
         elevation: 15,
  shadowColor: Colors.grey[500],
     
        child: Row(
       
        children: [
          
        Container(
        width:MediaQuery.of(context).size.width * 0.17,
        height:MediaQuery.of(context).size.height * 0.2,
        child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                            "https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?b=1&k=20&m=1270067126&s=612x612&w=0&h=tcabRaVlA0bsZhWCDBXxC1IYuGnh7_VuramO-vJ5jRs=",
                                            fit: BoxFit.cover),
                                      ),
        ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Text("Big Data"),

                                    
                                    
                                     Text("Why Big Data needs Thick Data ?"),
                                   
                                    Row(
                                     
                                      children: [Icon(Icons.favorite),SizedBox(width:MediaQuery.of(context).size.width * 0.02
                                      ),Icon(Icons.favorite),SizedBox(width:MediaQuery.of(context).size.width *0.02),Icon(Icons.favorite)],)
          ])
          
          ]),
      ),
      
    );
  },
)


            )
              )
          ],
        ));
  }
}
