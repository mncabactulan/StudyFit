import 'package:flutter/material.dart';

class More extends StatelessWidget {
   const More({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [
               Colors.purple.shade700.withOpacity(0.8),
               Colors.purple.shade500.withOpacity(0.8),
               Colors.purple.shade300.withOpacity(0.8),
             ],
           ),
         ),
         child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                         isDense: true,
                         suffixIcon: const Icon(Icons.search, color: Colors.grey,),
                         hintText: 'Search',
                         hintStyle: Theme.of(context)
                             .textTheme
                             .bodyMedium!
                             .copyWith(color: Colors.grey),
                         filled: true,
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15.0),
                           borderSide: BorderSide.none,
                         ),
                         fillColor: Colors.white
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(top: 50.0),
                     child: Text('More Apps', style: TextStyle(color: Colors.white, fontSize: 30),),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: ButtonBar(
                       alignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         Material(
                           color: Colors.transparent,
                           elevation: 0,
// borderRadius: BorderRadius.circular(25),
                           clipBehavior: Clip.antiAliasWithSaveLayer,
                           child: InkWell(
                             onTap: () {},
                             child: Column(
                               children: [
                                 Ink.image(
                                   image: const AssetImage('images/flash-cards.png'),
                                   height: 50,
                                   width: 52,
                                   fit: BoxFit.fill,
                                 ),
                                 const SizedBox(height: 6,),
                                 const Text('Flashcards'),
                               ],
                             ),
                           ),
                         ),
                         Material(
                           color: Colors.transparent,
                           elevation: 0,
// borderRadius: BorderRadius.circular(25),
                           clipBehavior: Clip.antiAliasWithSaveLayer,
                           child: InkWell(
                             onTap: () {},
                             child: Column(
                               children: [
                                 Ink.image(
                                   image: const AssetImage('images/wplan.jpg'),
                                   height: 50,
                                   width: 50,
                                   fit: BoxFit.fill,
                                 ),
                                 const SizedBox(height: 6,),
                                 const Text('Workout Plans'),
                               ],
                             ),
                           ),
                         ),
                         Material(
                           elevation: 0,
// borderRadius: BorderRadius.circular(25),
                           clipBehavior: Clip.antiAliasWithSaveLayer,
                           color: Colors.transparent,
                           child: InkWell(
                             onTap: () {},
                             child: Column(
                               children: [
                                 Ink.image(
                                   image: const AssetImage('images/notes.png'),
                                   height: 47,
                                   width: 47,
                                   fit: BoxFit.fill,
                                 ),
                                 const SizedBox(height: 10,),
                                 const Text('Notes'),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
     );
   }
}
