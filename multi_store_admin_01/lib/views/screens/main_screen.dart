import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/categories_screens.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/orders_screens.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/products_screen.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multi_store_admin_01/views/screens/side_bar_screens/withdraw_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  Widget _selectedScreen = DashboardScreen();

  screenSelector(item){
    switch(item.route){
      case DashboardScreen.routeName:
        setState(() {
          _selectedScreen = DashboardScreen();

        });
      break;
      case VendorsScreen.routeName:
        setState(() {
          _selectedScreen = VendorsScreen();

        });
        break;
      case CategoriesScreens.routeName:
        setState(() {
          _selectedScreen = CategoriesScreens();

        });
        break;

      case OrderScreen.routeName:
        setState(() {
          _selectedScreen = OrderScreen();

        });
        break;

      case Products_Screen.routeName:
        setState(() {
          _selectedScreen = Products_Screen();

        });
        break;

      case UploadBannerScreen.routeName:
        setState(() {
          _selectedScreen = UploadBannerScreen();

        });
        break;

      case WithdrawScreen.routeName:
        setState(() {
          _selectedScreen = WithdrawScreen();

        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Multi Store Admin Panel'),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.routeName,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Vendors',
            route: VendorsScreen.routeName,
            icon: CupertinoIcons.person_3,
          ),
          AdminMenuItem(
            title: 'Categories',
            route: CategoriesScreens.routeName,
            icon: CupertinoIcons.list_bullet,
          ),
          AdminMenuItem(
            title: 'Orders',
            route: OrderScreen.routeName,
            icon: CupertinoIcons.bag,
          ),
          AdminMenuItem(
            title: 'Products',
            route: Products_Screen.routeName,
            icon: CupertinoIcons.book,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            route: UploadBannerScreen.routeName,
            icon: CupertinoIcons.up_arrow,
          ),
          AdminMenuItem(
            title: 'Withdraw',
            route: WithdrawScreen.routeName,
            icon: CupertinoIcons.money_dollar,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Multi Store Admin',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      body: _selectedScreen,
    );
  }
}


