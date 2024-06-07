import 'package:grocery/core/utils/mange_routers/imports.dart';

class BirthDay extends StatefulWidget {
  const BirthDay({
    super.key,
  });

  @override
  State<BirthDay> createState() => _BirthDayState();
}

class _BirthDayState extends State<BirthDay> {
  String? _selectedDay;
  String? _selectedMonth;
  String? _selectedYear;

  List<String> days = List.generate(31, (index) => (index + 1).toString());
  List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  List<String> years = List.generate(100, (index) => (DateTime.now().year - index).toString());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: DropdownButton<String>(
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            hint: Text('Day',style: TextStyles.abeezeeStyle20_400(context, CustomColor.darkGrey),),
            value: _selectedDay,
            onChanged: (String? newValue) {
              setState(() {
                _selectedDay = newValue;
              });
            },
            items: days.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBoxApp(
          w: 10.w(context),
        ),
        Expanded(
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            hint: Text('Month',style: TextStyles.abeezeeStyle20_400(context, CustomColor.darkGrey),),
            isExpanded: true,
            value: _selectedMonth,
            onChanged: (String? newValue) {
              setState(() {
                _selectedMonth = newValue;
              });
            },
            items: months.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBoxApp(
          w: 10.w(context),
        ),
        Expanded(
          child: DropdownButton<String>(
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            hint: Text('Year',style: TextStyles.abeezeeStyle20_400(context, CustomColor.darkGrey),),
            value: _selectedYear,
            onChanged: (String? newValue) {
              setState(() {
                _selectedYear = newValue;
              });
            },
            items: years.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],);
  }
}