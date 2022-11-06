import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home'),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Welcome to Demo App', style: TextStyle(fontSize: 18)),
              const SizedBox(
                height: 20,
              ),
              const Text('We Offer', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 16,
                itemBuilder: (context, index) => const Card(
                  surfaceTintColor: Colors.black,
                  child: FlutterLogo(),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.5,
                  mainAxisExtent: 330,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
