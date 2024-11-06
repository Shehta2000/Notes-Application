import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/Constans.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

import 'widgets/add_note_buttom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       floatingActionButton: Container(
        decoration:const  BoxDecoration(
          shape: BoxShape.circle,
          gradient:  LinearGradient(
      colors: [Color(0xff2193b0), Color(0xff6dd5ed)],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight,
    ),
        ),
        
        
        
         child: FloatingActionButton(
          shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor :Colors.transparent,
          
         
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },);
         
          },
          child:  Icon(FontAwesomeIcons.fileCirclePlus),
               ),
       ),
     floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling, // or FloatingActionButtonAnimator.floating

      body: const NotesViewBody(),
    );
  }
}