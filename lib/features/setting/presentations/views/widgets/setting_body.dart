import '../../../../../core/utils/mange_routers/imports.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsData = [
      SettingCategory(
        title: 'Account',
        items: [
          SettingItem(title: 'Security', icon: Icons.security),
          SettingItem(title: 'Notifications', icon: Icons.notifications_none_outlined),
          SettingItem(title: 'Privacy', icon: Icons.privacy_tip_outlined),
        ],
      ),
      SettingCategory(
        title: 'Support & About',
        items: [
          SettingItem(title: 'My Subscription', icon: Icons.subscriptions_outlined),
          SettingItem(title: 'Help & Support', icon: Icons.help_outline),
          SettingItem(title: 'Terms and Policies', icon: Icons.policy_outlined),
        ],
      ),
      SettingCategory(
        title: 'Cache & Cellular',
        items: [
          SettingItem(title: 'Free up space', icon: Icons.cleaning_services_outlined),
          SettingItem(title: 'Data Saver', icon: Icons.data_usage_outlined),
        ],
      ),
      SettingCategory(
        title: 'Actions',
        items: [
          SettingItem(title: 'Report a problem', icon: Icons.report_problem_outlined),
          SettingItem(title: 'Add account', icon: Icons.person_add_outlined),
          SettingItem(title: 'Log out', icon: Icons.logout_outlined),
        ],
      ),
    ];

    return Padding(
      padding:  EdgeInsets.all(7.w(context)),
      child: Column(
        children: [
          Text('Setting'),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, bigIndex) {
                  final category = settingsData[bigIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category.title, style: TextStyles.style18_700(context, CustomColor.black)),
                      Card(
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 19.w(context),vertical: 12.h(context)),
                          shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = category.items[index];

                              return ListTile(
                                 minTileHeight: 0,
                                contentPadding: EdgeInsets.zero,
                                  title: Text(item.title),
                              leading: item.icon != null ? Icon(item.icon) : null,);
                            },
                            itemCount: bigIndex==2?2:3),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBoxApp(h: 10.h(context)),
                itemCount: 4),
          )
        ],
      ),
    );
  }
}
class SettingCategory {
  final String title;
  final List<SettingItem> items;

  SettingCategory({required this.title, required this.items});
}

class SettingItem {
  final String title;
  final IconData? icon;

  SettingItem({required this.title, this.icon});
}
