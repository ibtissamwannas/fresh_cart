import 'package:flutter/material.dart';
import 'package:fresh_cart/core/utils/app_images.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/widgets/page_view_items.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItems(
          image: Assets.imagesPageViewItem1,
          backgroundImage: Assets.imagesBgPageViewItem1,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحبًا بك في FruitHUB",
              ),
              Text(
                "Fruit",
              ),
              Text(
                "HUB",
              ),
            ],
          ),
        ),
        PageViewItems(
          image: Assets.imagesPageViewItem2,
          backgroundImage: Assets.imagesBgPageViewItem2,
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
