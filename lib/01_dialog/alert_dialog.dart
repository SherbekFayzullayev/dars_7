import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dialogwitget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Text(
                            'Permission required',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'You have not the permission to read or modify this file',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          'Keep in mind that people are able to wiev this data',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Icon(
                        Icons.error_outline,
                        size: 40,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)))),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Got it',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)))),
                      ),
                    ],
                  );
                });
          },
          child: Text('Open Dialog'),
        ),
      ),
    );
  }
}
