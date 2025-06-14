import 'package:caferat_app/src/common/constants/key_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Dashboard"),
          TextButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();

              final supabase = Supabase.instance.client;

              final accessToken = prefs.getString(
                KeyConstant.accessToken,
              );

              final data = await supabase.from('user_info').select();

              print(data.toString());

           
            },
            child: Text("Check Data"),
          ),
        ],
      ),
    );
  }
}
