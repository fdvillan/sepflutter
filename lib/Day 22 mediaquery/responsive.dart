import 'package:flutter/cupertino.dart';

class Responsive{
  static bool isMobile(BuildContext context){
    return MediaQuery.sizeOf(context).width<=800;
  }
  static bool isTab(BuildContext context){
    return MediaQuery.sizeOf(context).width>=900 && MediaQuery.sizeOf(context).width<=900;
  }
  static bool isWeb(BuildContext context){
    return MediaQuery.sizeOf(context).width>=1000;
  }


}

