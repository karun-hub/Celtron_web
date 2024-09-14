import 'package:flutter/material.dart';

class FeaturesSection extends StatefulWidget {
  @override
  _FeaturesSectionState createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends State<FeaturesSection> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final surfaceColor = Theme.of(context).colorScheme.surface;
    final headingColor = Theme.of(context).textTheme.headline6?.color ?? Colors.black;
    final defaultColor = Colors.deepOrangeAccent;
    final accentColor = Colors.deepOrange;
    final contrastColor = Theme.of(context).colorScheme.onSecondary;

    return Container(
      color: surfaceColor,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Wrap tab items with Expanded to prevent overflow
                Expanded(
                  child: _buildCustomTab(
                    context: context,
                    icon: Icons.remove_red_eye,
                    title: 'Solar Plant installations',
                    isActive: _selectedIndex == 0,
                    onTap: () => setState(() => _selectedIndex = 0),
                    accentColor: accentColor,
                    defaultColor: defaultColor,
                    headingColor: headingColor,
                    contrastColor: contrastColor,
                  ),
                ),
                Expanded(
                  child: _buildCustomTab(
                    context: context,
                    icon: Icons.inventory,
                    title: 'Solar Accessories',
                    isActive: _selectedIndex == 1,
                    onTap: () => setState(() => _selectedIndex = 1),
                    accentColor: accentColor,
                    defaultColor: defaultColor,
                    headingColor: headingColor,
                    contrastColor: contrastColor,
                  ),
                ),
                Expanded(
                  child: _buildCustomTab(
                    context: context,
                    icon: Icons.brightness_high,
                    title: 'Annual maintenance contract',
                    isActive: _selectedIndex == 2,
                    onTap: () => setState(() => _selectedIndex = 2),
                    accentColor: accentColor,
                    defaultColor: defaultColor,
                    headingColor: headingColor,
                    contrastColor: contrastColor,
                  ),
                ),
                Expanded(
                  child: _buildCustomTab(
                    context: context,
                    icon: Icons.computer,
                    title: 'Research and development',
                    isActive: _selectedIndex == 3,
                    onTap: () => setState(() => _selectedIndex = 3),
                    accentColor: accentColor,
                    defaultColor: defaultColor,
                    headingColor: headingColor,
                    contrastColor: contrastColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.2, // Ensure enough height for the content
            child: _buildTabContent(_selectedIndex),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTab({
    required BuildContext context,
    required IconData icon,
    required String title,
    required bool isActive,
    required Function onTap,
    required Color accentColor,
    required Color defaultColor,
    required Color headingColor,
    required Color contrastColor,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? accentColor : defaultColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(0),
          border: Border.all(
            color: isActive ? accentColor : defaultColor.withOpacity(0.15),
            width: 1.0,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: isActive ? 48 : 36,
                color: isActive ? contrastColor : headingColor,
              ),
              SizedBox(width: 15),
              Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis, // Handle long text
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: isActive ? contrastColor : headingColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(" Solar Plant Installations: A Comprehensive Guide to Harnessing Clean Energy" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("We believe in transparency and honesty. With Celtron Energies, what Looking to save on energy costs while reducing your carbon footprint? Solar plant installations offer an eco-friendly solution by converting sunlight into electricity, powering homes and businesses. Discover the benefits of solar energy and how it can help you achieve energy independence today!",style: TextStyle(fontSize: 18),),
            ],
          )),
        );
      case 1:
        return Center(child: Text("Our dedicated customer support team is available 24/7 to assist you with any questions or concerns. We’re here for you at any time, ensuring that your experience with Celtron Energies is smooth and worry-free."));
      case 2:
        return Center(child: Text("Our dedicated customer support team is available 24/7 to assist you with any questions or concerns. We’re here for you at any time, ensuring that your experience with Celtron Energies is smooth and worry-free."));
      default:
        return Center(child: Text('No content available'));
    }
  }
}
