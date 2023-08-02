/// requestId : "a2c49098-8c16-4311-a6ff-added054ec87"
/// items : [{"createdAt":"2023-06-15T20:25:40.228Z","name":"Recycled Rubber Fish","category":"Jewelery","lesson":5,"id":"28"}]
/// count : 28
/// anyKey : "anyValue"

class Programs {
  Programs({
    String? requestId,
    List<Items>? items,
    int? count,
    String? anyKey,
  }) {
    _requestId = requestId;
    _items = items;
    _count = count;
    _anyKey = anyKey;
  }

  Programs.fromJson(dynamic json) {
    _requestId = json['requestId'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _count = json['count'];
    _anyKey = json['anyKey'];
  }

  String? _requestId;
  List<Items>? _items;
  int? _count;
  String? _anyKey;

  String? get requestId => _requestId;

  List<Items>? get items => _items;

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

/// createdAt : "2023-06-15T20:25:40.228Z"
/// name : "Recycled Rubber Fish"
/// category : "Jewelery"
/// lesson : 5
/// id : "28"

class Items {
  Items({
    String? createdAt,
    String? name,
    String? category,
    int? lesson,
    String? id,
  }) {
    _createdAt = createdAt;
    _name = name;
    _category = category;
    _lesson = lesson;
    _id = id;
  }

  Items.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _category = json['category'];
    _lesson = json['lesson'];
    _id = json['id'];
  }

  String? _createdAt;
  String? _name;
  String? _category;
  int? _lesson;
  String? _id;

  String? get createdAt => _createdAt;

  String? get name => _name;

  String? get category => _category;

  int? get lesson => _lesson;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['category'] = _category;
    map['lesson'] = _lesson;
    map['id'] = _id;
    return map;
  }
}
