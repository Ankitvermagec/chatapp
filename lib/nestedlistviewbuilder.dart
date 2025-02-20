import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // For date formatting

class LeadsPage extends StatelessWidget {
  final String jsonString = '''{
    "LeadsDetails": [
      {
        "date": "no_followups",
        "follow_up": [
          {
            "id": "391",
            "name": "Shalini",
            "email": "mailto:shalinsri@yahoo.co.in",
            "age": "11",
            "parent_name": "Parent Name",
            "contact_number": "9144200060",
            "status": "1",
            "status_txt": "In progress",
            "area": "area",
            "message": "message",
            "campaign_name": "Walk-in",
            "created_at": "15-Jan-25",
            "assign_user_name": "",
            "next_followup": " --",
            "last_followup": " --",
            "updated_by": null
          },
          {
            "id": "389",
            "name": "DB Lead Student",
            "email": "mailto:pandey17pradeep@gmail.com",
            "age": "22",
            "parent_name": "Parent Name",
            "contact_number": "9144200060",
            "status": "1",
            "status_txt": "In progress",
            "area": "test area",
            "message": "ok",
            "campaign_name": "Walk-in",
            "created_at": "14-Jan-25",
            "assign_user_name": "teacher",
            "next_followup": " --",
            "last_followup": " --",
            "updated_by": null
          }
        ]
      },
      {
        "date": "14-Jan-25",
        "follow_up": [
          {
            "id": "400",
            "name": "John",
            "email": "mailto:john@example.com",
            "age": "23",
            "parent_name": "Parent Name",
            "contact_number": "9144200077",
            "status": "1",
            "status_txt": "In progress",
            "area": "area",
            "message": "Message here",
            "campaign_name": "Walk-in",
            "created_at": "14-Jan-25",
            "assign_user_name": "",
            "next_followup": " --",
            "last_followup": " --",
            "updated_by": "admin"
          }
        ]
      }
    ],
    "msg": "Data found.",
    "errorFlg": 501
  }''';

  @override
  Widget build(BuildContext context) {
    // Parse the JSON string
    final Map<String, dynamic> jsonData = jsonDecode(jsonString);

    // Create a map grouping leads by the date
    Map<String, List<Lead>> groupedLeads = {};

    for (var leadData in jsonData['LeadsDetails']) {
      String date = leadData['date'];  // Get the date for this group
      List<dynamic> leadsData = leadData['follow_up'];
      List<Lead> leads = leadsData.map((e) => Lead.fromJson(e)).toList();

      // Add leads to the respective date group
      groupedLeads[date] = leads;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Leads List'),
      ),
      body: ListView.builder(
        itemCount: groupedLeads.keys.length,
        itemBuilder: (context, index) {
          // Get the date and leads for this date group
          String date = groupedLeads.keys.elementAt(index);
          List<Lead> leads = groupedLeads[date]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the date as a header
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Date: $date', // The date for this group
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // Display the leads for this date
              ...leads.map((lead) {
                // Convert the date from '15-Jan-25' to '15 Jan 2025'
                DateTime createdDate = DateFormat("d-MMM-yy").parse(lead.createdAt);
                String formattedDate = DateFormat("d MMM yyyy").format(createdDate);

                return ListTile(
                  title: Text(lead.name),
                  subtitle: Text('Status: ${lead.statusTxt}'),
                  trailing: Text(formattedDate),
                  onTap: () {
                    // Handle tap on the lead if needed
                  },
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}

class Lead {
  String id;
  String name;
  String email;
  String age;
  String parentName;
  String contactNumber;
  String status;
  String statusTxt;
  String area;
  String message;
  String campaignName;
  String createdAt;
  String assignUserName;
  String nextFollowUp;
  String lastFollowUp;
  String updatedBy;

  Lead({
    required this.id,
    required this.name,
    required this.email,
    required this.age,
    required this.parentName,
    required this.contactNumber,
    required this.status,
    required this.statusTxt,
    required this.area,
    required this.message,
    required this.campaignName,
    required this.createdAt,
    required this.assignUserName,
    required this.nextFollowUp,
    required this.lastFollowUp,
    required this.updatedBy,
  });

  factory Lead.fromJson(Map<String, dynamic> json) {
    return Lead(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      age: json['age'],
      parentName: json['parent_name'],
      contactNumber: json['contact_number'],
      status: json['status'],
      statusTxt: json['status_txt'],
      area: json['area'],
      message: json['message'],
      campaignName: json['campaign_name'],
      createdAt: json['created_at'],
      assignUserName: json['assign_user_name'],
      nextFollowUp: json['next_followup'],
      lastFollowUp: json['last_followup'],
      updatedBy: json['updated_by'] ?? '',
    );
  }
}
