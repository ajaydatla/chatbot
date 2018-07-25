import 'package:flutter/material.dart';

void main(){
  runApp(FriendlychatApp());
}

class FriendlychatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Friendly chat",
      home: ChatScreen(),
    );
  }
}
class ChatScreen extends StatefulWidget{
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>{

  final TextEditingController _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("FriendlyChat"),
      ),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          new Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: new InputDecoration.collapsed(hintText: "Send a message"),
            ),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 4.0),           //new
            child: IconButton(icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text)),
          )
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }

}