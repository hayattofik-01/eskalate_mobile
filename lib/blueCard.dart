import 'package:flutter/material.dart';

class BlueCard extends StatelessWidget {
  const BlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
                      bottom: -25,
                      left :  MediaQuery.of(context).size.width * 0.13,

                   
                     
        
                      child: Container(
                        
                    decoration: BoxDecoration(
                              color: Color.fromARGB(255, 7, 50, 238),
                              borderRadius: BorderRadius.circular(10),
                    
                      ),
                       width: MediaQuery.of(context).size.width * 0.57,
                            height: MediaQuery.of(context).size.height * 0.1,
                           child: Container(
                        
                    decoration: BoxDecoration(
                              color:Color.fromARGB(255, 13, 92, 230),
                              borderRadius: BorderRadius.circular(10),
                    
                      ),
                       
                            child:Row(children: [
                              Container(
width: MediaQuery.of(context).size.width * 0.2,
height: MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      12
     
    ),
    color: Color.fromARGB(211, 10, 71, 151),

    ),
                                
                                child: Column(children: [

                              ]),)
                            ],)
                            ),
                            
                    
    )
                           
                           
                            );
                            
                    
    
  }
}
