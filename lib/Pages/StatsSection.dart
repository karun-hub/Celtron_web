import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget _buildStatsItem(IconData icon, String title, String counter) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          // height: MediaQuery.of(context).size.height*.1,
          decoration: BoxDecoration(
            color: Colors.white, // Background color for each item
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround  ,
            children: [
              Icon(
                icon,
                size: 40,
                color: _getColorByTitle(title),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    counter,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              SizedBox(),SizedBox()
            ],
          ),
        ),
      );
    }
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200], // Light background color
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            // height: MediaQuery.of(context).size.height*.1,
            child: GridView.count(
              childAspectRatio: 1/.2,
              crossAxisCount: 4, // Adjust this value for different layouts
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // To avoid scroll inside grid
              children: [
                _buildStatsItem(Icons.group, 'Happy Clients', '332'),
                _buildStatsItem(Icons.description, 'Projects', '440'),
                _buildStatsItem(Icons.support_agent_outlined, 'Hours Of Support', '1500+'),
                _buildStatsItem(Icons.workspace_premium, 'Hard Workers', '31'),
              ],
            ),
          ),
        ],
      ),
    );
  }



  Color _getColorByTitle(String title) {
    switch (title) {
      case 'Happy Clients':
        return Colors.blue;
      case 'Projects':
        return Colors.orange;
      case 'Hours Of Support':
        return Colors.green;
      case 'Hard Workers':
        return Colors.pink;
      default:
        return Colors.black;
    }
  }
}