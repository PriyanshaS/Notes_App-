class Note{
  String? id;
  String? user_id;
  String? title;
  String? content;
  DateTime? dateAdded;

  Note({this.id,this.user_id,this.content,this.dateAdded,this.title});

  factory Note.fromMap(Map<String,dynamic> map) {
    return Note(
      id: map['id'],
      user_id: map['user_id'],
      title: map['title'],
      content: map['content'],
      dateAdded: DateTime.tryParse(map['dateAdded']),
    );
  }

  Map<String , dynamic> toMap(){
    return {
      "id":id,
      "user_id":user_id,
      "title":title,
      "content":content,
      "dateAdded":dateAdded!.toIso8601String(),
    };
  }
}

