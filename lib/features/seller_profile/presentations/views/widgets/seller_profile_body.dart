import 'package:easy_stepper/easy_stepper.dart';

import '../../../../../core/utils/mange_routers/imports.dart';

class SellerProfileBody extends StatefulWidget {
  const SellerProfileBody({super.key});

  @override
  SellerProfileBodyState createState() => SellerProfileBodyState();
}

class SellerProfileBodyState extends State<SellerProfileBody> {
  int activeStep = 0;

  List<Widget> getStepContent() {
    return [
      const Step1(),
      const Step2(),
      const Step3(),
      const Step4(),
    ];
  }

  void goToNextStep() {
    if (activeStep < getStepContent().length - 1) {
      setState(() {
        activeStep++;
      });
    }else{
      context.go(Routers.finishAds);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EasyStepper(
          disableScroll: true,
          padding: EdgeInsets.zero,
          direction: Axis.horizontal,
          steppingEnabled: false,
          finishedStepBackgroundColor: const Color(0xFF2B894E),
          stepRadius: 13.w(context),
          activeStep: activeStep,
          activeStepIconColor: Colors.white,
          steps: [
            EasyStep(
              icon: const Icon(Icons.description),
              customTitle: Text(
                'Description',
                style: TextStyles.style10_400(context, CustomColor.black),
                textAlign: TextAlign.center,
              ),
            ),
            EasyStep(
              icon: const Icon(Icons.photo),
              customTitle: Text(
                'photo',
                style: TextStyles.style10_400(context, CustomColor.black),
                textAlign: TextAlign.center,
              ),
            ),
            EasyStep(
              icon: const Icon(Icons.local_shipping),
              customTitle: Text(
                'Delivery',
                style: TextStyles.style10_400(context, CustomColor.black),
                textAlign: TextAlign.center,
              ),
            ),
            EasyStep(
              icon: const Icon(Icons.report_problem),
              customTitle: Text(
                'Complaints',
                style: TextStyles.style10_400(context, CustomColor.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Expanded(
          child: getStepContent()[activeStep],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomAppButton(
            onPress: goToNextStep,
            width: 138.w(context),
            text: 'Next',
          ),
        ),
      ],
    );
  }
}
