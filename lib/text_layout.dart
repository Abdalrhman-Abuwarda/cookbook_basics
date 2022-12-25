import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text("Hello, Word!"),
    const Text("Text can wrap without issue"),
    const Text(
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mauris. Suspendisse ptenti. Aenean aliquet eu nil vitae tempus'),
    const Divider(),
    RichText(
    text: const TextSpan(text: "Flutter text is ",
    )
    )
    ]
    ,
    );
  }
}
