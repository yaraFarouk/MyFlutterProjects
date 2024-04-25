import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  static String id = 'ChatScreen';
  final _scrollController = new ScrollController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(KMessageCollection);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(KCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
            print(snapshot.data!.docs[i][KMessage]);
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: KPrimaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    KLogo,
                    height: 50,
                  ),
                  Text(
                    'Chat',
                    style:
                        TextStyle(fontFamily: 'Pacifico', color: Colors.white),
                  )
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: _scrollController,
                    itemCount: messagesList.length,
                    itemBuilder: (context, indx) {
                      return messagesList[indx].id == email
                          ? ChatPuble(
                              message: messagesList[indx],
                            )
                          : ChatFriendPuble(
                              message: messagesList[indx],
                            );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add({
                        KMessage: data,
                        KCreatedAt: DateTime.now(),
                        'id': email
                      });
                      controller.clear();

                      _scrollController.animateTo(
                        0,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                    decoration: InputDecoration(
                        hintText: 'send message',
                        suffixIcon: Icon(
                          Icons.send,
                          color: KPrimaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: KPrimaryColor,
                          ),
                        )),
                  ),
                )
              ],
            ),
          );
        } else {
          return Text("loading");
        }
      },
    );
  }
}
