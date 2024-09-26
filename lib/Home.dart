import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

 final LiquidController liquidController = LiquidController();

final Image_pages =[

SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/19497218/pexels-photo-19497218/free-photo-of-white-bmw-5-series.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  fit: BoxFit.cover,
  
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,

  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/28569811/pexels-photo-28569811/free-photo-of-white-mercedes-suv-with-shipping-containers-in-sydney.jpeg?auto=compress&cs=tinysrgb&w=600',
  fit: BoxFit.cover,
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/14775845/pexels-photo-14775845.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  fit: BoxFit.cover
  ,placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/14231698/pexels-photo-14231698.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  fit: BoxFit.cover,
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/5288699/pexels-photo-5288699.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' ,
  fit: BoxFit.cover,
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl:'https://images.pexels.com/photos/3456057/pexels-photo-3456057.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' ,
  fit: BoxFit.cover,
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
),
SizedBox(
  height: double.infinity,
  child: CachedNetworkImage(imageUrl: 'https://images.pexels.com/photos/16767872/pexels-photo-16767872/free-photo-of-back-view-on-a-red-sports-car.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' ,
  fit: BoxFit.cover,
  placeholder: (context, url) {
    return const Center(child: CircularProgressIndicator(color: Colors.white,),);
  },
  filterQuality: FilterQuality.high,
  
  ),
)

];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: LiquidSwipe(pages: Image_pages,
      liquidController: liquidController,
      slideIconWidget: const Icon(Icons.arrow_back,color: Colors.white,),
      waveType: WaveType.circularReveal,
       onPageChangeCallback: (activePageIndex) {
      print(activePageIndex);
    },
      positionSlideIcon: 0.9,
       ),
    );
  }
}