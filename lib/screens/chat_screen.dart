import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.smart_toy),
            ),
            const SizedBox(width: 10),
            const Text("JusticeBot"),
            const SizedBox(width: 10),
            const Text(
              "Online",
              style: TextStyle(fontSize: 12, color: Colors.green),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _botMessage(
              "Hello! I'm JusticeBot. How can I assist you with your legal questions today?",
            ),
            _userMessage("What are my rights as a tenant?"),
            _botMessage(
              "As a tenant, you have several key rights including:\n\n"
              "• Right to habitable premises\n"
              "• Right to privacy\n"
              "• Protection against unfair eviction",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _actionButton(Icons.search, "View\nRelated Cases"),
                _actionButton(Icons.download, "Download\nSummary"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _botMessage(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _userMessage(String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 4),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
