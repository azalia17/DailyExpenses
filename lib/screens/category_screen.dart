import 'package:flutter/material.dart';
import 'package:dailyexpenses/palette.dart';
import 'package:dailyexpenses/widgets/widget.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
                indicatorColor: Palette.ijo,
                labelColor: Colors.black,
                unselectedLabelColor: Palette.abu,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                        'Pemasukan',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                        'Pengeluaran',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ]
            ),
            title: Text('Pilih Kategori',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          body: TabBarView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: ListView(
                    children: [
                      CategoryContainer(
                          image: 'assets/images/gaji.png',
                          name: 'Gaji'
                      ),const SizedBox(height: 20.0,),
                    CategoryContainer(
                          image: 'assets/images/penjualan.png',
                          name: 'Penjualan'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/hadiah.png',
                          name: 'Hadiah'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/other.png',
                          name: 'Lainnya'
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: ListView(
                    children: [
                      CategoryContainer(
                          image: 'assets/images/food.png',
                          name: 'Makanan'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/entertainment.png',
                          name: 'Hiburan'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/shopping.png',
                          name: 'Belanja'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/transportation.png',
                          name: 'Transportasi'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/education.png',
                          name: 'Pendidikan'
                      ),const SizedBox(height: 20.0,),
                      CategoryContainer(
                          image: 'assets/images/other.png',
                          name: 'Lainnya'
                      ),
                    ],
                  )
                ),
              ]
          ),
        ),
      )
    );
  }
}
