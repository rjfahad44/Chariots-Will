class NoteModel {
  String date;
  String note;
  String uid;

  NoteModel({
    this.date = '',
    this.note = '',
    this.uid = ''
  });

  Map<String, dynamic> toJson() => {
    'date': date,
    'note': note,
    'uid': uid,
  };

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      date: json['date'] as String,
      note: json['note'] as String,
      uid: json['uid'] as String,
    );
  }

  @override
  String toString() => '{'
      'date: $date, '
      'note: $note, '
      'uid: $uid '
      '}';
}