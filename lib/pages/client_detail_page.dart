import 'package:account_manager/pages/client_edit_page.dart';
import 'package:flutter/material.dart';

class ClientDetailPage extends StatelessWidget {
  const ClientDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil'), backgroundColor: Colors.black),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(
          Icons.account_circle_rounded,
          color: Colors.blueAccent,
          size: 100,
        ),
        SizedBox(height: 50),
        Text(
          'Nome do cliente',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
            onPressed: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClientEditPage())),
            label: Text('Editar perfil'),
      ),
      ],
    ),)
    ,
    );
  }
}
