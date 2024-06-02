import '../mange_routers/imports.dart';

class GroupModel {
  String text;
  int index;
  bool selected;

  GroupModel({required this.text, required this.index, required this.selected});
}

class CustomRadioTile extends StatefulWidget {
  final String text;
  const CustomRadioTile({
    super.key, required this.text,
  });

  @override
  _State createState() => _State();
}

class _State extends State<CustomRadioTile> {
  int _value2 = 1;
  List<GroupModel> _langGroup = [
    GroupModel(text: "English", index: 1, selected: true),
    GroupModel(text: "العربيه", index: 2, selected: false),
  ];
 List<GroupModel> _typeGroup = [
    GroupModel(text: "Customer", index: 1, selected: true),
    GroupModel(text: "Seller", index: 2, selected: false),
  ];

  Widget makeRadioTiles() {
    List<GroupModel> _group;
   if(widget.text=='lan'){
     _group=_langGroup;
   }else{
     _group=_typeGroup;
   }
    List<Widget> list = [];

    for (int i = 0; i < _group.length; i++) {
      list.add(RadioListTile(
        value: _group[i].index,
        groupValue: _value2,
        selected: _group[i].selected,
        onChanged: (val) {
          setState(() {
            for (int i = 0; i < _group.length; i++) {
              _group[i].selected = false;
            }
            _value2 = val!;
            _group[i].selected = true;
          });
        },
        activeColor: Colors.purple,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text(
          ' ${_group[i].text}',
          style: TextStyle(
              color: _group[i].selected ? Colors.black : Colors.grey,
              fontWeight:
                  _group[i].selected ? FontWeight.bold : FontWeight.normal),
        ),
      ));
    }

    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          children: <Widget>[makeRadioTiles()],
        ),
      ),
    );
  }
}
