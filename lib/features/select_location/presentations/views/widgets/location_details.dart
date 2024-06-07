
import 'package:grocery/core/utils/mange_routers/imports.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({
    super.key,
  });

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  bool isRead=true;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("more details",style: TextStyles.style16_700(context, CustomColor.darkGrey),),
        SizedBox(
          height: 16.h(context),
        ),
        TextFormField(
          controller: controller,
          readOnly: isRead,
          onTap: isRead?() {
            showDialogFun(
              context,
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'The way of select your location details',
                    style: TextStyles.style16_700(context, CustomColor.black),
                  ),
                  SizedBoxApp(
                    h: 20.h(context),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () async {
                            await requestLocationPermissionAndRetrieveLocation().then((value) {
                              controller.text=value;
                              context.pop();
                            },);

                          },
                          child: Text(
                            'Automatically',
                            style:
                            TextStyles.style16_700(context, CustomColor.green),
                          )),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              isRead=false;
                            });

                            context.pop();
                          },
                          child: Text(
                            'Manually',
                            style:
                            TextStyles.style16_700(context, CustomColor.green),
                          )),
                    ],
                  )
                ],
              ),
            );
          }:(){},
          decoration: InputDecoration(
              hintText: 'more details about your location',
              hintStyle: TextStyles.style16_400(context, CustomColor.darkGrey)),
        ),
      ],
    );
  }
}