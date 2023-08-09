import 'package:flutter/material.dart';
import 'package:impl/models/benefit_banner.dart';
import 'package:impl/theme.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({Key? key}) : super(key: key);

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  Future _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              padding: EdgeInsets.only(left: 22),
              color: Color(0xeff4e4da * (index + 1)),
              height: 140,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        '${benefitBannerList[index].title}',
                        style: textTheme().bodyMedium,
                      ),
                      Text(
                        '${benefitBannerList[index].benefit}',
                        style: textTheme()
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      benefitBannerList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: benefitBannerList.length,
      ),
    );
  }
}
