
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FilterDialogView extends StatefulWidget {
  @override
  _FilterDialogViewState createState() => _FilterDialogViewState();
}

class _FilterDialogViewState extends State<FilterDialogView> {
  String? selectedClientType;
  String? selectedStatus;
  DateTime? selectedDateFrom;
  DateTime? selectedDateTo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:
      AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 2,
        // icon: Icon(Icons.arrow_drop_down),
        shape: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(63),
            topRight: Radius.circular(63)),borderSide:
        BorderSide(color: Colors.black12)),
        title: Text('Filter',style: TextStyle(letterSpacing: 1,color: Colors.black87)),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDropdown(
                'Client Type',
                ['Client 1', 'Client 2'],
                selectedClientType,
                    (String? newValue) {
                  setState(() {
                    selectedClientType = newValue;
                  });
                },
              ),
              _buildDropdown(
                'Account Status',
                ['Status 1', 'Status 2'],
                selectedStatus,
                    (String? newValue) {
                  setState(() {
                    selectedStatus = newValue;
                  });
                },
              ),
              _buildDatePicker(
                'From Date',
                selectedDateFrom,
                    (DateTime? newDate) {
                  setState(() {
                    selectedDateFrom = newDate;
                  });
                },
              ),
              _buildDatePicker(
                'To Date',
                selectedDateTo,
                    (DateTime? newDate) {
                  setState(() {
                    selectedDateTo = newDate;
                  });
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: Text('Reset',style: TextStyle(color: Colors.orange,letterSpacing: 1)),
            onPressed: () {
              setState(() {
                selectedClientType = null;
                selectedStatus = null;
                selectedDateFrom = null;
                selectedDateTo = null;
              });
            },
          ),
          TextButton(
            child: Text('Apply',style: TextStyle(letterSpacing: 1,color: Colors.blue)),
            onPressed: () {
              Navigator.of(context).pop();
              // Apply filters to the list
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(
      String label, List<String> items, String? selectedItem, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker(
      String label, DateTime? selectedDate, ValueChanged<DateTime?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                onChanged(pickedDate);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                selectedDate != null
                    ? DateFormat.yMMMd().format(selectedDate)
                    : 'Select Date',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
