import '../../constant.dart';
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
  final List<GroupModel> _langGroup = [
    GroupModel(text: "English", index: 1, selected: true),
    GroupModel(text: "العربيه", index: 2, selected: false),
  ];
 final List<GroupModel> _typeGroup = [
    GroupModel(text: "Customer", index: 1, selected: true),
    GroupModel(text: "Seller", index: 2, selected: false),
  ];

  Widget makeRadioTiles() {
    List<GroupModel> group;
   if(widget.text=='lan'){
     group=_langGroup;
   }else{
     group=_typeGroup;
   }
    List<Widget> list = [];

    for (int i = 0; i < group.length; i++) {
      list.add(RadioListTile(
        value: group[i].index,
        groupValue: _value2,
        selected: group[i].selected,
        onChanged: (val) {
          setState(() {
            for (int i = 0; i < group.length; i++) {
              group[i].selected = false;
            }
            _value2 = val!;
            isSeller=val==2?true:false;
            group[i].selected = true;
          });
        },
        activeColor: Colors.purple,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text(
          ' ${group[i].text}',
          style: TextStyle(
              color: group[i].selected ? Colors.black : Colors.grey,
              fontWeight:
                  group[i].selected ? FontWeight.bold : FontWeight.normal),
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
    return Center(
      child: Column(
        children: <Widget>[makeRadioTiles()],
      ),
    );
  }
}
