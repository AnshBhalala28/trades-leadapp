import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class MessagesScreen extends StatefulWidget {
  MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

// 🔹 Model (Dynamic Structure)
class MessageModel {
  final String message;
  final String time;
  final bool isMe;

  MessageModel({required this.message, required this.time, required this.isMe});
}

class _MessagesScreenState extends State<MessagesScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // 🔹 Dynamic List
  final List<MessageModel> messages = [
    MessageModel(
      message:
          "Hey! I've just finished reviewing the editorial layout for the new architectural digest.",
      time: "10:42 AM",
      isMe: false,
    ),
    MessageModel(message: "That sounds great 👍", time: "10:45 AM", isMe: true),
  ];

  // 🔹 Send Message Function
  void sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      messages.add(
        MessageModel(
          message: _controller.text.trim(),
          time: TimeOfDay.now().format(context),
          isMe: true,
        ),
      );
    });

    _controller.clear();

    // 🔹 Auto Scroll Bottom
    Future.delayed(Duration(milliseconds: 200), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TitleBar(
            title: "Leads Chat",
            isBackEnabled: true,
            isAvatarEnabled: true,
          ),

          // 🔹 Chat List
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final chat = messages[index];
                return buildChatBubble(chat.message, chat.time, chat.isMe);
              },
            ),
          ),

          // 🔹 Bottom Input
          buildMessageInput(),
        ],
      ),
    );
  }

  // 🔹 Chat Bubble (UI SAME 🔥)
  Widget buildChatBubble(String message, String time, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isMe
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 1.h,
              bottom: 0.5.h,
              left: isMe ? 15.w : 0,
              right: isMe ? 0 : 15.w,
            ),
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              color: isMe ? Color(0xFF0D2451) : Color(0xFFE8EEF9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(isMe ? 15 : 0),
                bottomRight: Radius.circular(isMe ? 0 : 15),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isMe ? AppColors.white : AppColors.primaryDarkBlue,
                fontSize: 15.sp,
                fontFamily: CustomFonts.regular,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.5.h, left: 1.w, right: 1.w),
            child: Text(
              time,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.primaryDarkBlue,
                fontFamily: CustomFonts.semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget buildMessageInput() {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      color: Colors.transparent,
      child: Row(
        children: [
          // 🔹 Input Field
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30),

                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.primaryDarkBlue.withOpacity(0.5),
                    fontFamily: CustomFonts.regular,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 3.w),

          // 🔹 Send Button
          GestureDetector(
            onTap: sendMessage,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryDarkBlue.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 25, // સાઈઝ જરૂર મુજબ સેટ કરવી
                backgroundColor: AppColors.primaryDarkBlue,
                child: Icon(Icons.send, color: AppColors.white, size: 18.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
