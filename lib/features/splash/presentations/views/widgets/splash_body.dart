import 'package:grocery/core/utils/mange_routers/imports.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(period: const Duration(milliseconds:3000));
    goToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetService.splash), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      _controller.value - 0.75,
                      _controller.value - 0.5,
                      _controller.value - 0.25,
                      _controller.value,
                      _controller.value + 0.25,
                      _controller.value + 0.5,
                      _controller.value + 0.75,
                    ],
                    colors: const [
                      Colors.black,
                      Color(0xFFD9D9D9),
                      Color(0xFF216335),
                      Colors.white,
                      Color(0xFF4C626D),
                      Color(0xFF2B894E),
                      Colors.purple,
                    ],
                  ).createShader(rect);
                },
                blendMode: BlendMode.srcIn,
                child: child,
              );
            },
            child: Image.asset(
              AssetService.logo,
              width: 140.w(context),
              height: 140.h(context),
            ),
          ),
          SizedBoxApp(
            h: 12.h(context),
          ),
          Text(
            "اجروماركت",
            style: TextStyles.style75_700(context, CustomColor.white),
          ),
          SizedBoxApp(
            h: 12.h(context),
          ),
          SizedBox(
              width: 240.w(context),
              child: Text(
                textAlign: TextAlign.center,
                "GROCERY Market",
                style: TextStyles.style40_800(context, CustomColor.white),
              ))
        ],
      ),
    );
  }

  void goToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.go(Routers.selectLocation);
      },
    );
  }
}
