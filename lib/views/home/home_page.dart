import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/components/conversation_item.dart';
import 'package:whatsapp_clone/views/layouts/main_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> tabs = ['CONVERSAS', 'STATUS', 'CHAMADAS'];
  final String photoRubenilde =
      "https://media-exp1.licdn.com/dms/image/D4E03AQGc9f61KnjH_Q/profile-displayphoto-shrink_200_200/0/1664468021440?e=1671062400&v=beta&t=eEaM1C4xUAD8H6Dhb9EAWv7uEP1fl3sRkgkUqV7Dp9Q";

  final List<Map<String, dynamic>> conversas = [
    {
      'photo': '',
      'name': 'Rubenilde',
      'last_access': '21:18',
      'last_word': 'Sim'
    },
    {
      'photo': '',
      'name': 'Vizinhos Satélite',
      'last_access': '21:00',
      'last_word': 'Oi'
    },
    {
      'photo': '',
      'name': 'Kalebe Sefnos',
      'last_access': '17:30',
      'last_word': 'Pois é'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      tabs: tabs,
      content: ListView.builder(
        itemCount: conversas.length,
        itemBuilder: (context, index) {
          var conversation = conversas[index];

          return ConversationItem(
            conversation: conversation,
            photoUrl: photoRubenilde,
          );
        },
      ),
    );
  }
}
