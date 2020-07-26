import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Bing extends StatefulWidget {
  @override
  _BingState createState() => _BingState();
}

class _BingState extends State<Bing> {
  WebViewController _webViewController;
  TextEditingController _teController = new TextEditingController();
  bool showLoading = false;

  void updateLoading(bool ls) {
    this.setState(() {
      showLoading = ls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Flexible(
                          flex: 1,
                          child: TextField(
                            textAlignVertical: TextAlignVertical(y: -1),
                            autocorrect: false,
                            style: TextStyle(color: Colors.white, fontSize:20),
                            controller: _teController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: -5),

                                prefixIcon: Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0), child: Text('   https:// ',style:TextStyle(color: Colors.white, fontSize:20) ,)),
                                suffix: IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      String finalURL = _teController.text;
                                      if (!finalURL.startsWith("https://")) {
                                        finalURL = "https://" + finalURL;
                                      }
                                      if (_webViewController != null) {
                                        updateLoading(true);
                                        _webViewController
                                            .loadUrl(finalURL)
                                            .then((onValue) {})
                                            .catchError((e) {
                                          updateLoading(false);
                                        });
                                      }
                                    }),
                                border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              Flexible(
                  flex: 9,
                  child: Stack(
                    children: <Widget>[
                      WebView(
                        initialUrl: 'http://bing.com',
                        onPageFinished: (data) {
                          updateLoading(false);
                        },
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (webViewController) {
                          _webViewController = webViewController;
                        },
                      ),
                      (showLoading)
                          ? Center(
                        child: CircularProgressIndicator(),
                      )
                          : Center()
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
