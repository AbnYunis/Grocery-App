import '../../../../../core/utils/mange_routers/imports.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  bool selfPickup = false;
  bool sedex = false;
  bool homeRun = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Color(0xFFF8F8F8),
          child: CheckboxListTile(
            fillColor: WidgetStateColor.transparent,
            checkColor: Color(0xFF2B894E),
            checkboxShape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            secondary: Icon(Icons.dashboard_outlined),
            title: Text("Self pickup"),
            controlAffinity: ListTileControlAffinity.leading,
            value: selfPickup,
            onChanged: (value) {
              setState(() {
                selfPickup = value!;
              });
            },
          ),
        ),
        Card(
          color: Color(0xFFF8F8F8),
          child: CheckboxListTile(
            fillColor: WidgetStateColor.transparent,
            checkColor: Color(0xFF2B894E),
            checkboxShape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            title: Text("Sedex"),
            controlAffinity: ListTileControlAffinity.leading,
            secondary: Icon(Icons.dashboard_outlined),
            value: sedex,
            onChanged: (value) {
              setState(() {
                sedex = value!;
              });
            },
          ),
        ),
        Card(
          color: Color(0xFFF8F8F8),
          child: CheckboxListTile(
            fillColor: WidgetStateColor.transparent,
            checkColor: Color(0xFF2B894E),
            checkboxShape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            title: Text("Home run"),
            controlAffinity: ListTileControlAffinity.leading,
            secondary: Icon(Icons.dashboard_outlined),
            value: homeRun,
            onChanged: (value) {
              setState(() {
                homeRun = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}