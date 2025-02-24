import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//belajar tentang scafold
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text('First Screen'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Row(//widget secara horixontal
        children: [
          Column(//widget secara vertikal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Hello World!'),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(10),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hi',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.red, boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 3),
                    blurRadius: 10,//conteiner dengan warna shadow dibawah
                  ),
                ]),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hi',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 3,//conteiner dengan warna luar hijau
                    ),
                    borderRadius: BorderRadius.circular(
                        10) 
                    ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hi',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red), //container berbentuk bulat
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'yo',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        shape: const CircleBorder(),

        ///floating berbentuk bulat
      ),
    );
  }
}
