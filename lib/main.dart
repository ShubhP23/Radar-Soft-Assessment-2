import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radar_soft_assessment_2/Screen/input_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const AgeCalculator());
}

class AgeCalculator extends StatelessWidget {
  const AgeCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E20),
          scaffoldBackgroundColor: const Color(0xFF0A0E19),
        ),
        home: const InputPage(),
      ),
    );
  }
}
