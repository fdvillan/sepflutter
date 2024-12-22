import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Contact data
    final contacts = [
      const Contact(
        name: 'John Judah',
        phone: '2348031980943',
        color: Colors.blue,
      ),
      const Contact(
        name: 'Bisola Akanbi',
        phone: '2348031980943',
        color: Colors.purple,
      ),
      const Contact(
        name: 'Eghosa Iku',
        phone: '2348031980943',
        color: Colors.orange,
      ),
      const Contact(
        name: 'Andrew Ndebuisi',
        phone: '2348034280943',
        color: Colors.blue,
      ),
      const Contact(
        name: 'Arinze Dayo',
        phone: '2348031980943',
        color: Colors.green,
      ),
      const Contact(
        name: 'Wakara Zimbu',
        phone: '2348031980943',
        color: Colors.red,
      ),
      const Contact(
        name: 'Emaechi Chinedu',
        phone: '2348031980943',
        color: Colors.amber,
      ),
      const Contact(
        name: 'Osaretin Igbinomwanhia',
        phone: '2348031980943',
        color: Colors.blue,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue ,
        centerTitle:false ,
        title: const Text(
          'SimpleContactList',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return ContactItem(contact: contacts[index]);
          },
          childCount: contacts.length,
        ),
      ),
    );
  }
}

class Contact {
  final String name;
  final String phone;
  final Color color;

  const Contact({
    required this.name,
    required this.phone,
    required this.color,
  });
}

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: contact.color,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            )
          ),
          title: Text(
            contact.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            contact.phone,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          trailing: const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}