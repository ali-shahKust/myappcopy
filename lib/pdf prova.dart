import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'listalezioni.dart';

class prova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ciao extends StatefulWidget {

  @override
  _ciaoState createState() => _ciaoState();
}

class _ciaoState extends State<ciao> {

  var ciao = listaState.indice;
  String pdfdasset = "filepdf/Modulo.pdf";

  PDFDocument _doc;

  bool _loading;

  @override
  void initState() {

    super.initState();
    _initPdf();

  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset("filepdf/Modulo$ciao.pdf");
    setState(() {
      _doc=doc;
      _loading = false;
    });
  }


int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text("Metodo Lit", style: TextStyle(
        color: Color.fromRGBO(49, 184, 109, 1),
      ),),backgroundColor: Color.fromRGBO(58, 59, 60, 1),),
      body: _loading ? Center(child: CircularProgressIndicator(),) :
      PDFViewer(document: _doc,
        //uncomment below line to preload all pages
        // lazyLoad: false,
        // uncomment below line to scroll vertically
        // scrollDirection: Axis.vertical,

        //uncomment below code to replace bottom navigation with your own
         navigationBuilder:
                    (context, page, totalPages, jumpToPage, animateToPage) {
                  return ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.first_page),
                        onPressed: () {
                          jumpToPage(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          animateToPage(page: page - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () async{
                          ++counter;
                          setState(() {

                          });
                          if(ciao == 0 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('intro', true);
                          }
                          if(ciao == 1 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode1', true);
                          }
                          if(ciao == 2 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode2', true);
                          }
                          if(ciao == 3 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode3', true);
                          }
                          if(ciao == 4 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode4', true);
                          }
                          if(ciao == 5 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode5', true);
                          }
                          if(ciao == 6 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode6', true);
                          }
                          if(ciao == 7 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode7', true);
                          }
                          if(ciao == 8 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode8', true);
                          }
                          if(ciao == 9 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode9', true);
                          }
                          if(ciao == 10 && counter >=_doc.count){
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setBool('mode10', true);
                          }
                          print('my ciao is ${counter }');
                          print('my pages ${page}');
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page),
                        onPressed: () {
                          jumpToPage(page: totalPages - 1);
                        },
                      ),
                    ],
                  );
                },
      ),

    );
  }
}
