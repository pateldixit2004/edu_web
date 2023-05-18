import 'package:flutter/cupertino.dart';
import '../Modal/productModal.dart';

class productProvider extends ChangeNotifier
{

  int? index;

  List<productModal> itemList=[
    productModal(photo: 'assets/image/img.png',name: 'flipkart'),
    productModal(photo: 'assets/image/img_1.png',name: 'amazon'),
    productModal(photo: 'assets/image/img_2.png',name: 'meesho'),
    productModal(photo: 'assets/image/img_8.png',name: 'snapdeal'),
    productModal(photo: 'assets/image/img_3.png',name: 'Myntra'),
    productModal(photo: 'assets/image/img_5.png',name: 'AJIO'),
    productModal(photo: 'assets/image/img_6.png',name: 'shopsy'),
    productModal(photo: 'assets/image/img_7.png',name: 'jiomart'),
  ];

  List inkList=[
    'https://www.flipkart.com/',
    'https://www.amazon.in/',
    "https://www.meesho.com/",
    'https://www.snapdeal.com/',
    'https://www.myntra.com/',
    'https://www.ajio.com/',
    'https://www.shopsy.in/',
    'https://www.jiomart.com/',

  ];

  List<productModal> ottList= [
    productModal(name: 'Netflix',photo: 'assets/image/net.png'),
    productModal(name: ' Amazon Prime',photo: 'assets/image/amazon.png'),
    productModal(name: '  Disney+, Hotstar',photo: 'assets/image/d_h.png'),
    productModal(name: '  Sony LIV',photo: 'assets/image/sony.png'),
  ];

  List ottlinkList=[
    'https://www.netflix.com/in/',
    'https://www.amazon.com/amazonprime/?sr=53-1',
    'https://www.hotstar.com/in/home?ref=%2Fin',
    'https://www.sonyliv.com/',
  ];
  List seriesList=[
    'assets/image/img_9.png',
    'assets/image/img_10.png',
    'assets/image/img_11.png',
    'assets/image/img_12.png',

  ];
  List<productModal> eduList=[
    productModal(name: 'Wikipedia',photo:'assets/edu/img.png'),
    productModal(name: 'W3Schools',photo:'assets/edu/img_1.png'),
    productModal(name: 'JavatPoint',photo:'assets/edu/img_2.png'),
    productModal(name: 'TutorialsPoint',photo:'assets/edu/img_3.png'),
  ];
  List edulinkList=[
    'https://www.wikipedia.org/',
    "https://www.w3schools.com/",
    'https://www.javatpoint.com/',
    'https://www.tutorialspoint.com/index.htm'
  ];

}