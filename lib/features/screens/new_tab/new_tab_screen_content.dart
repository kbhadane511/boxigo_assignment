import 'package:boxio_assignment/features/screens/new_leads/new_leads.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTabScreenContent extends StatelessWidget {
  const NewTabScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Booking Details'),
        ),
        body: Center(
          child: BookingDetails(
            date: 'Aug 23',
            time: '23:45',
            location: 'Bangalore',
            address:
                '1 MG-Lido Mall, Swami Vivekananda Road, Someshwarpura, Halasuru, Bengaluru Karnataka',
            bookingId: 'E53352',
            details: [
              BookingDetail(icon: Icons.home, label: '2 BHK'),
              BookingDetail(icon: Icons.inventory, label: '70 items'),
              BookingDetail(icon: Icons.archive, label: '20 boxes'),
              BookingDetail(icon: Icons.location_on, label: '12.3 kms'),
            ],
          ),
        ),
      ),
    );
  }
}

class BookingDetails extends StatelessWidget {
  final String date;
  final String time;
  final String location;
  final String address;
  final String bookingId;
  final List<BookingDetail> details;

  const BookingDetails({super.key, 
    required this.date,
    required this.time,
    required this.location,
    required this.address,
    required this.bookingId,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      date.split(' ')[0],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      date.split(' ')[1],
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      time,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            bookingId,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Text(
                        address,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: details
                  .map(
                    (detail) => Column(
                      children: [
                        Icon(detail.icon, color: Colors.red),
                        Text(detail.label),
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16.0),
            Text(
              location,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              address,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.to(const NewLeads());
                  },
                  child: const Text(
                    'View Details',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Submit Quote'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BookingDetail {
  final IconData icon;
  final String label;

  BookingDetail({required this.icon, required this.label});
}