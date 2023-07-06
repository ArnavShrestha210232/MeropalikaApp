import "package:flutter/material.dart";
import "package:meropalika/utils/colors.dart";

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          padding: const EdgeInsets.all(10.0), // Padding for the grid
          children: [
            DashboardCard(
              title: 'समावेस घरधुरी ',
              subtitle: '१',
              icon: Icons.home,
              color: Colors.blue,
              onPressed: () {},
            ),
            DashboardCard(
              title: 'समावेस जनसंख्या ',
              subtitle: '५',
              icon: Icons.group,
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 20 / 7,
              children: const [
                DashboardCardSecond(
                  color: Colors.blueAccent,
                  title: 'पुरुष',
                  count: '3',
                ),
                DashboardCardSecond(
                  color: Colors.pinkAccent,
                  title: 'महिला',
                  count: '2',
                ),
                DashboardCardSecond(
                  color: Colors.amber,
                  title: 'अन्य',
                  count: '0',
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(12),
          child: const Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.group_rounded,
                    size: 30,
                    color: kPrimary,
                  ),
                  Text(
                    'जनसंख्या विवरण',
                    style: TextStyle(
                      fontSize: 27.0,
                      color: kPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DashboardCardSecond extends StatelessWidget {
  const DashboardCardSecond({
    super.key,
    required this.color,
    required this.count,
    required this.title,
  });

  final Color color;
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color.withOpacity(0.3),
          ),
          child: Icon(
            Icons.male,
            color: color,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: color.withOpacity(0.3),
              ),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
