import 'package:dropdown_search/dropdown_search.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

class CountryState extends StatefulWidget {
  const CountryState({super.key, this.onChangedState, this.onChangedCity});
  final void Function(String?)? onChangedState;
  final void Function(String?)? onChangedCity;
  @override
  State<CountryState> createState() => _CountryStateState();
}

class _CountryStateState extends State<CountryState> {
  String? selectedCountry;
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Your Zone",
          style: TextStyles.style16_700(context, CustomColor.darkGrey),
        ),
        DropdownSearch<String>(
          dropdownButtonProps: const DropdownButtonProps(
            icon: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          popupProps: const PopupProps.menu(
            showSearchBox: true,
          ),
          items: countryCityMap.keys.toList(),
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: TextStyles.style18_700(context, CustomColor.black),
            dropdownSearchDecoration: const InputDecoration(
              hintText: "Country",
            ),
          ),
          selectedItem: selectedCountry,
          onChanged: (String? newValue) {
            setState(() {
              selectedCountry = newValue;
              widget.onChangedState?.call(newValue);
              selectedCity =
                  null; // Reset the selected city when the country changes
            });
          },
        ),
        SizedBoxApp(h: 19.h(context)),

        Text(
          "Your City",
          style: TextStyles.style16_700(context, CustomColor.darkGrey),
        ),
        DropdownSearch<String>(
          dropdownButtonProps: const DropdownButtonProps(
            icon: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          popupProps: const PopupProps.menu(
            showSearchBox: true,
          ),
          items:
              selectedCountry != null ? countryCityMap[selectedCountry]! : [],
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: TextStyles.style18_700(context, CustomColor.black),
            dropdownSearchDecoration: const InputDecoration(
              hintText: "City",
            ),
          ),
          selectedItem: selectedCity,
          onChanged: (String? newValue) {
            setState(() {
              widget.onChangedCity?.call(newValue);
              selectedCity = newValue;
            });
          },
        ),
      ],
    );
  }
}
