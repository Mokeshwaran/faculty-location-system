// ignore_for_file: file_names

import 'package:fls/shared/text_styles.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String bullet = '\u25aa';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read This Before Using',
            style: TextStyle(fontSize: 19.2)),
        backgroundColor: Color(0xffef4b4c),
        elevation: 0.0,
        // actions: <Widget>[
        //   TextButton.icon(
        //     icon: const Icon(Icons.add_reaction_outlined),
        //     label: const Text('About Me!'),
        //     style: TextButton.styleFrom(
        //       primary: Colors.orange[400],
        //     ),
        //     onPressed: () => Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const AboutMe())),
        //   ),
        // ],
      ),
      backgroundColor: Color(0xff3d619b),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Welcome To FLS', style: help_textstyle_welcome),
              const SizedBox(height: 10.0),
              const Text('Instructions', style: help_textstyle_intro),
              const SizedBox(height: 10.0),
              Text(
                  bullet +
                      ' At home screen you\'ll see the list of faculties and their respective classes.',
                  style: help_textstyle),
              const SizedBox(height: 10.0),
              Text(
                  bullet +
                      ' Click on search button on the top to search for faculties.',
                  style: help_textstyle),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

// class AboutMe extends StatelessWidget {
//   const AboutMe({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange[400],
//       appBar: AppBar(
//         title: const Text('About Me'),
//         backgroundColor: Colors.blue[700],
//         elevation: 0.0,
//       ),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 45.0),
//                 const Center(
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage('assets/images/moki.jpg'),
//                     radius: 50.0,
//                   ),
//                 ),
//                 const SizedBox(height: 20.0),
//                 const Text(
//                     "Hey there, I'm Mokeshwaran aka Moki.\nI'm the developer of this application,\nI made this to minimize the struggle of my faculties having hard time finding other faculties.",
//                     style: help_textstyle_about,
//                     textAlign: TextAlign.center),
//                 const SizedBox(height: 40.0),
//                 FittedBox(
//                     fit: BoxFit.contain,
//                     child: const Text("TO KNOW ME MORE",
//                         style: help_textstyle_intro)),
//                 const SizedBox(height: 30.0),
//                 SizedBox(
//                   width: 325.0,
//                   child: Row(
//                     children: [
//                       IconButton(
//                         onPressed: () => launch(
//                             'https://www.facebook.com/mokeshwaran.ramesh.7/'),
//                         icon: const Icon(FontAwesomeIcons.facebookSquare),
//                         color: const Color(0xff4267B2),
//                         iconSize: 50.0,
//                       ),
//                       const SizedBox(width: 20.0),
//                       IconButton(
//                         onPressed: () =>
//                             launch('https://www.instagram.com/mstrmnd.xiii/'),
//                         icon: const Icon(FontAwesomeIcons.instagramSquare),
//                         color: const Color(0xffcd486b),
//                         iconSize: 50.0,
//                       ),
//                       const SizedBox(width: 20.0),
//                       IconButton(
//                         onPressed: () => launch(
//                             'https://www.linkedin.com/in/mokeshwaran-r/'),
//                         icon: const Icon(FontAwesomeIcons.linkedin),
//                         color: const Color(0xff0e76a8),
//                         iconSize: 50.0,
//                       ),
//                       const SizedBox(width: 20.0),
//                       IconButton(
//                         onPressed: () => launch(
//                             'https://www.snapchat.com/add/smokeythefri13'),
//                         icon: const Icon(FontAwesomeIcons.snapchatSquare),
//                         color: const Color(0xffFFFC00),
//                         iconSize: 50.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 25.0),
//                 SizedBox(
//                   width: 300.0,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: IconButton(
//                           onPressed: () =>
//                               launch('https://github.com/Mokeshwaran'),
//                           icon: const Icon(FontAwesomeIcons.github),
//                           color: const Color(0xff000000),
//                           iconSize: 75.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 50.0),
//               ],
//             ),
//           ),
//         ),
//       ),
//       // bottomNavigationBar: BottomAppBar(
//       //   color: Colors.transparent,
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     mainAxisSize: MainAxisSize.min,
//       //     children: [
//       //       Text(
//       //         "Thank You For Using This App",
//       //         style: help_textstyle_thankyou,
//       //       ),
//       //       SizedBox(height: 25.0),
//       //       Text('With ❤ Moki',
//       //           style: help_textstyle_withlove, textAlign: TextAlign.center),
//       //     ],
//       //   ),
//       //   elevation: 0,
//       // ),
//     );
//   }
// }
