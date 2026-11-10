import 'package:flutter/material.dart';

import 'client_detail_page.dart';

class ClientListPage extends StatelessWidget {
  const ClientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Client List'), backgroundColor: Colors.black),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('Lista de Clientes'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientDetailPage()),
                ),
              },
              child: Text('Ver cliente'),
            ),
          ],
        ),
      ),
    );
  }
}
