import 'package:flutter/material.dart';

class NodoItem extends StatelessWidget {
  String _itemName;
  String _dateCreated;
  int _id;

  NodoItem(this._itemName, this._dateCreated);

  NodoItem.map(dynamic obj){
    this._itemName = obj["itemName"];
    this._dateCreated = obj["dateCreated"];
    this._id = obj["id"];
  }

  NodoItem.fromMap(Map<String, dynamic> map){
    this._itemName = map["itemName"];
    this._dateCreated = map["dateCreated"];
    this._id = map["id"];
  }

  Map<String, dynamic> toMap(){
    var map = new Map<String, dynamic>();
    map["itemName"] = _itemName;
    map["dateCreated"] = _dateCreated;

    if(_id!=null){
      map["id"] = _id;
    }

    return map;
  }

  String get itemName => this._itemName;
  String get dateCreate => this._dateCreated;
  int get id => this._id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_itemName,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16.9),
          ),

          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text("Created on $_dateCreated",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 13.5,
                fontStyle: FontStyle.italic
              ),),
          )
        ],
      ),
    );
  }
}
