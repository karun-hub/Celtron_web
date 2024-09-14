import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // light-background equivalent
      padding: EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          // Section Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Text(
                  'Ready to Begin Your Solar Journey?',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Discover how easy it is to go solar with Celtron Energies™.',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          // Service Items Grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                // Row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: _buildServiceItem(Icons.business, "Complimentary Consultation", "Book a complimentary appointment with a solar expert who will assess your energy requirements,address your inquiries, and provide a detailed savings estimate for your transition to solar.", context, 100)),
                    Expanded(child: _buildServiceItem(Icons.checklist, "Tailored System Design", "Our skilled design team will craft a customized solar solution tailored to your specific needs. Leveraging their expertise, they will create a unique system that maximizes energy efficiency and delivers the most cost-effective results.", context, 200)),
                  ],
                ),
                SizedBox(height: 20.0),
                // Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: _buildServiceItem(Icons.bar_chart, "Effortless Permitting", "Your dedicated Project Manager will manage all necessary paperwork and permits required by your city and local utility providers. Relax while we handle the details and ensure a smooth permitting process for your project.", context, 300)),
                    Expanded(child: _buildServiceItem(Icons.remove_red_eye, "Precision Installation", "Our team will thoroughly inspect your roof to determine any necessary preparations for solar panel installation. We then proceed with a swift and precise installation of your new solar system, ensuring everything is set up efficiently and effectively.", context, 400)),
                  ],
                ),
                SizedBox(height: 20.0),
                // Row 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: _buildServiceItem(Icons.brightness_high, "Smooth System Activation", "We manage all necessary approvals from your local utility to swiftly activate your newly installed system, so you can begin generating clean energy without delay", context, 500)),
                    Expanded(child: _buildServiceItem(Icons.calendar_today, "Ongoing Support and Upkeep", "For any system issues or performance concerns, our team of qualified experts is just a call away. We also provide routine compliance checks and panel cleaning to ensure optimal performance.", context, 600)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String title, String description, BuildContext context, int delay) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40.0,
                color: Colors.deepOrange,
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
