/// requestId : "d69c1159-34a5-4ba0-b406-f56071613723"
/// items : [{"createdAt":"2022-11-05T05:23:46.786Z","name":"Voluptatem aut aut eaque qui.","duration":23,"category":"Books","locked":false,"id":"1"},null]
/// count : 19
/// anyKey : "anyValue"

class Lessons {
  Lessons({
    String? requestId,
    List<Item>? items,
    int? count,
    String? anyKey,
  }) {
    _requestId = requestId;
    _items = items;
    _count = count;
    _anyKey = anyKey;
  }

  Lessons.fromJson(dynamic json) {
    _requestId = json['requestId'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Item.fromJson(v));
      });
    }
    _count = json['count'];
    _anyKey = json['anyKey'];
  }

  String? _requestId;
  List<Item>? _items;
  int? _count;
  String? _anyKey;

  String? get requestId => _requestId;

  List<Item>? get items => _items;

  int? get count => _count;

  String? get anyKey => _anyKey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['requestId'] = _requestId;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    map['anyKey'] = _anyKey;
    return map;
  }
}

/// createdAt : "2022-11-05T05:23:46.786Z"
/// name : "Voluptatem aut aut eaque qui."
/// duration : 23
/// category : "Books"
/// locked : false
/// id : "1"

class Item {
  Item({
    String? createdAt,
    String? name,
    int? duration,
    String? category,
    bool? locked,
    String? id,
  }) {
    _createdAt = createdAt;
    _name = name;
    _duration = duration;
    _category = category;
    _locked = locked;
    _id = id;
  }

  Item.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _duration = json['duration'];
    _category = json['category'];
    _locked = json['locked'];
    _id = json['id'];
  }

  String? _createdAt;
  String? _name;
  int? _duration;
  String? _category;
  bool? _locked;
  String? _id;

  String? get createdAt => _createdAt;

  String? get name => _name;

  int? get duration => _duration;

  String? get category => _category;

  bool? get locked => _locked;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['duration'] = _duration;
    map['category'] = _category;
    map['locked'] = _locked;
    map['id'] = _id;
    return map;
  }
}
