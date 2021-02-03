import 'package:flutter/material.dart';
import 'package:dailyexpenses/palette.dart';
import 'package:dailyexpenses/widgets/widget.dart';
import 'package:dailyexpenses/screens/screen.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
            'Tambah Transaksi',
          style: const TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 40.0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomInputBox(
                      label: 'Nominal',
                      inputHint: 'Masukkan nominal'
                  ),
                  CustomInputBox(
                      label: 'Catatan',
                      inputHint: 'Tambah catatan',
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0,bottom: 3.0),
                          child: Text(
                              'Tanggal',
                              style: const TextStyle(
                                fontSize: 12,
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 3.0),
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.calendar_today),
                              color: Palette.ijo,
                                onPressed: (){
                                  _calendarBottomSheet(context);
                                },
                            ),
                            Text(
                              'Pilih Tanggal',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Palette.abu,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/question_mark.png',
                            ),
                            width: 45.0,
                            height: 45.0,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 5.0, top: 17.0),
                              child: Text(
                                'Kategori',
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.left,
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0, top: 17.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 250,
                    height: 50,
                    child: FlatButton(
                        color: Palette.ijo,
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Simpan',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )
                        )
                    ),
                  ),
                ],
              )
            ),
          ]
        )
      ),
    );
  }

  void _calendarBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 500.0,
          child: CalendarContainer(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30)
            ),
          ),
      );
    });
  }
}
