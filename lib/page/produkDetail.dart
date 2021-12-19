import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo/page/checkout.dart';

class DetailProduk extends StatefulWidget {
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  static final List<String> imgSlider = [
    'image11.png',
    'image11.png',
    'image11.png'
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    options: CarouselOptions(
      autoPlay: true,
      aspectRatio: 2.0,
      enlargeCenterPage: true,
    ),
    items: imgSlider.map((fileImage) {
      return Container(
        // margin: EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image.asset(
            'gambar/slider/' + '${fileImage}',
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Expanded(
                          flex: 0,
                          child: Row(
                            children: [
                              Image.asset(
                                'gambar/Frame15.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'PRODUK DETAIL',
                                style: GoogleFonts.poppins()
                                    .copyWith(color: Colors.blue, fontSize: 14),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Checkout()));
                      },
                      child: Expanded(
                          flex: 0,
                          child: Image.asset(
                            'gambar/shopping_bag.png',
                            width: 30,
                            height: 30,
                          )),
                    ),
                    Expanded(
                        flex: 0,
                        child: Image.asset(
                          'gambar/Frame40.png',
                          width: 30,
                          height: 30,
                        ))
                  ],
                ),
              ),
              autoPlayImage,
              Deskripsi(),
              Divider(),
              Toko()
            ],
          ),
        ),
      ),
    );
  }
}

class Deskripsi extends StatefulWidget {
  @override
  _DeskripsiState createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 4,
                    child: Text(
                      'Tas GUCI',
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.grey[700],
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  // height: 20,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.orangeAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                        child: Row(
                          children: [
                            Text('Barang bekas'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // height: 20,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                        child: Row(
                          children: [
                            Text('Stok 100'),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp. 16.000',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 13,
                      color: Colors.blue),
                ),
                Container(
                  height: 15,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue),
                  child: Center(
                    child: DefaultTextStyle(
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                      child: Row(
                        children: [
                          Text('Diskon 60 %'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Rp. 45.000',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class Toko extends StatefulWidget {
  @override
  _TokoState createState() => _TokoState();
}

class _TokoState extends State<Toko> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Vendor'),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('gambar/vendor.png'),
                ),
                Text(
                  'Eiger Store',
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                DefaultTextStyle(
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Text('5.0'),
                      Text('| 200'),
                      Text('+ rating')
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Deskripsi',
              style: GoogleFonts.poppins().copyWith(
                  color: Colors.grey[800],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              ' In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
              style: GoogleFonts.poppins().copyWith(
                color: Colors.grey[700],
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Ulasan Penilaian',
              style: GoogleFonts.poppins().copyWith(
                  color: Colors.grey[800],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('gambar/user.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maudy hal',
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '14 min',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text('5.0'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('gambar/user1.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ester howard',
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '35 min',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text('5.0'),
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
