import 'package:grocery/core/utils/mange_routers/imports.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w(context)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Complaints',
                        style: TextStyles.style13_400(context, CustomColor.black),
                      ),
                      SizedBoxApp(
                        h: 10.h(context),),
                      const SellerTextField(labelText: "Time to make complaints",),
                      SizedBoxApp(
                        h: 10.h(context),),
                      const SellerTextField(labelText: "Address for complaint or return Label",maxLength: 40,),
                    ],
                  ),
                ),
                SizedBoxApp(
                  w: 12.w(context),),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Returns',
                        style: TextStyles.style13_400(context, CustomColor.black),
                      ),
                      SizedBoxApp(
                        h: 10.h(context),),
                      const SellerTextField(labelText: "Time to withdraw from the contract",),
                      SizedBoxApp(
                        h: 10.h(context),),
                      const SellerTextField(labelText: "Building number",),
                    ],
                  ),
                ),
              ],
            ),
            SizedBoxApp(
              h: 20.h(context),),
            const SellerTextField(labelText: "City",hintText: "Enter a city",),
            SizedBoxApp(
              h: 20.h(context),),
            const SellerTextField(labelText: "Additional information",hintText: "Provide more details",maxLength: 600,),
        
          ],
        ),
      ),
    );
  }
}
