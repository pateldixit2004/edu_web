import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../../provider/productProvider.dart';

class webscreen extends StatefulWidget {
  const webscreen({Key? key}) : super(key: key);

  @override
  State<webscreen> createState() => _webscreenState();
}

class _webscreenState extends State<webscreen> {
  productProvider? providerF;
  productProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<productProvider>(context, listen: false);
    providerT = Provider.of<productProvider>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(
              // "${providerF!.inkList[index]}"),
                "${providerF!.edulinkList[index]}"),
            // "https://www.google.com/")
          ),

        ),
      ),
    );
  }
}
