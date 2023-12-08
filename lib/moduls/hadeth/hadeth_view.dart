import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/moduls/hadeth/hadeth_details.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allHadethContent.isEmpty) readFiles();

    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 2.0,
          indent: 2,
          endIndent: 2,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 2.0,
          indent: 2,
          endIndent: 2,
          height: 10,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: allHadethContent.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HadethDetails.routeName,
                  arguments: HadethContent(
                      title: allHadethContent[index].title,
                      content: allHadethContent[index].content));
            },
            child: Text(
              allHadethContent[index].title,
              textAlign: TextAlign.center,
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            thickness: 1.2,
            indent: 50,
            endIndent: 50,

            height: 10,
          ),
        ))
      ],
    );
  }

  readFiles() async {
    String hadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = hadethContent.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexoffirstline = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexoffirstline);
      String content = singleHadeth.substring(indexoffirstline + 1);
      HadethContent hadethContent =
          HadethContent(title: title, content: content);

      setState(() {
        allHadethContent.add(hadethContent);
      });

      print(title);
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
