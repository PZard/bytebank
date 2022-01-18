import 'package:bytebank2/database/dao/contact_dao.dart';
import 'package:flutter/material.dart';

class ContactsProfile extends StatelessWidget {
  ContactsProfile(this.id, this.name, this.accountNumber, {Key? key})
      : super(key: key);
  final int id;
  final String name;
  final int accountNumber;
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(24.0, 24.0, 0.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Account Number: $accountNumber',
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black54
                        ),
                      ),
                    )
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.only(top: 46.0, right: 24.0, left: 40.0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        _dao.delete(id).then((value) => Navigator.pop(context));
                      },
                      icon: const Icon(Icons.delete, color: Colors.red, size: 32.0,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
