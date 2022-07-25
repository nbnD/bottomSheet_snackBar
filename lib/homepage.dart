import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BottomSheet Snack bar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("This is a Snack bar"),backgroundColor: Colors.green,));
                },
                child: const Text("Show Snack bar")),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          body: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ListTile(
                                leading: Icon(Icons.person),
                                title: Text("Profile"),
                              ),
                              const ListTile(
                                leading: Icon(Icons.edit),
                                title: Text("Edit"),
                              ),
                              const ListTile(
                                leading: Icon(Icons.exit_to_app),
                                title: Text("Exit"),
                              ),
                              TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("This is a Bottom sheet Snack bar")));
                                  },
                                  child: const Text("OK")),
                            ],
                          ),
                        );
                      });
                },
                child: const Text("Show Bottom Sheet")),
          ],
        ),
      ),
    );
  }
}
