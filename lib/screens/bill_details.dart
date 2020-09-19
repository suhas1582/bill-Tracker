import 'package:flutter/material.dart';

class Bill {
  int _id;
  String _type;
  String _title;
  String _date;
  String _month;
  int _amount;
  int _paymentStatus;

  Bill(this._type, this._title, this._amount, this._date, this._month,
      this._paymentStatus);
  Bill.with_Id(this._id, this._type, this._title, this._amount, this._date,
      this._month, this._paymentStatus);

// Getters
  int get id => _id;
  String get type => _type;
  String get title => _title;
  String get date => _date;
  String get month => _month;
  int get amount => _amount;
  int get paymentStatus => _paymentStatus;

// Setters
  set type(String newType) {
    if (newType.length < 255) {
      this._type = newType;
    }
  }

  set title(String newTitle) {
    if (newTitle.length < 255) {
      this._title = newTitle;
    }
  }

  set date(String newDate) {
    if (newDate.length < 255) {
      this._date = newDate;
    }
  }

  set month(String newMonth) {
    if (newMonth.length < 255) {
      this._month = newMonth;
    }
  }

  set amount(int newAmount) {
    if (newAmount != 0) {
      this._amount = newAmount;
    }
  }

  set paymentStatus(int newStatus) {
    if (newStatus >= 0 && newStatus <= 1) {
      this._paymentStatus = newStatus;
    }
  }

// Used to save and retrieve from the database

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if(_id != null) {
      map['id'] = _id;
    }
    map['type'] = _type;
    map['title'] = _title;
    map['date'] = _date;
    map['month'] = _month;
    map['amount'] = _amount;
    map['paymentStatus'] = _paymentStatus;
  }

  Bill.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this.type = map['type'];
    this._title = map['title'];
    this._date = map['date'];
    this._month = map['month'];
    this._amount = map['amount'];
    this._paymentStatus = map['paymentStatus'];
  }

}
