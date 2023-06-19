import 'package:curso01/app/core/global/global_context.dart';
import 'package:curso01/app/core/provider/application_provider.dart';
import 'package:curso01/app/core/ui/theme/theme_config.dart';
import 'package:curso01/app/pages/auth/login/login_router.dart';
import 'package:curso01/app/pages/auth/register/register_router.dart';
import 'package:curso01/app/pages/home/home_router.dart';
import 'package:curso01/app/pages/music/music_detail/music_detail_router.dart';
import 'package:curso01/app/pages/music/music_router.dart';
import 'package:curso01/app/pages/order/order_completed_page.dart';
import 'package:curso01/app/pages/order/widget/order_router.dart';
import 'package:curso01/app/pages/products/product_detail_router.dart';
import 'package:curso01/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Curso01 extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();

  Curso01({super.key}) {
    GlobalContext.i.navigatorkey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationProvider(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/music': (context) => MusicRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/musicDetail': (context) => MusicDetailRouter.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => OrderRouter.page,
          '/order/completed': (context) => const OrderCompletedPage(),
        },
      ),
    );
  }
}
