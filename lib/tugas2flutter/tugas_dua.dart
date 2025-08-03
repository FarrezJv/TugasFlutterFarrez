import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFIL LENGKAP", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
      backgroundColor:  Colors.lightGreenAccent
      ),
      body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/kanan.jfif"),
                      fit: BoxFit.cover)
                    )
                  ),
                  SizedBox(width: 3,),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/kiri.jfif"),
                      fit: BoxFit.cover)
                    )
                  ),
                ],
              ),
              Center(
                child: 
                Text("Farrez Juan Verterry", 
              style: 
              TextStyle(
                fontStyle: 
                FontStyle.italic, 
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
                ),
                ),
        
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration( 
                      color: Colors.lightGreenAccent,
                      border: Border.all(color: Colors. black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 10,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(Icons.email, color: Colors.orange),
                          SizedBox(width: 8),
                          Text("farrezjuan3@gmail.com"),
        
                          
                        ],
                      ),
                    ),
                  ),
                ),
                
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                   Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration( 
                      color: Colors.lightGreenAccent,
                      border: Border.all(color: Colors. black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 10,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.red),
                          SizedBox(width: 8),
                          Text("0812-3456-7890"),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16,
                  vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 2),
                            boxShadow: [BoxShadow(
                              color: Colors.red,
                              blurRadius: 10,
                            )
                            ]
                          ),
        
                          child: Center(
                          child: Text ("Postingan", 
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                          )
                          ),
                          ),
                        ), 
                        SizedBox(width: 16),
                        Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ]
                          ),
                          child: 
                          Center(
                            child: Text("Followers", 
                            style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                                            
                            ),
                          ),
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  """Data diri Farrez Juan Verterry, Berisi Postingan, Follower, 
                  alamat gmail dan nomor telepon"""
                ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(blurRadius: 10, color: Colors.red)
                    ]
                  ),
                  child: Center(
                    child: Text("Akhir Profil", style: TextStyle(fontWeight: FontWeight.bold))
                    ),
                )
            ],
          ),
      );
      
  }
}