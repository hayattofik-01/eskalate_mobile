import 'package:flutter/material.dart';

class BlueCard extends StatelessWidget {
  const BlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
                      bottom: -25,
                      left :  MediaQuery.of(context).size.width * 0.11,
                     
        
                      child: Container(
                        
                    decoration: BoxDecoration(
                              color: Color.fromARGB(255, 90, 140, 235),
                              borderRadius: BorderRadius.circular(10),
                    
                      ),
                       width: MediaQuery.of(context).size.width * 0.57,
                            height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            
                    
    );
  }
}
