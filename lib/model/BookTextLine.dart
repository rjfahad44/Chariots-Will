
class BookTextLine {
  String title;
  String subTitle;
  String type;
  String date;
  List<String> lines;

  BookTextLine({
    this.title = '',
    this.subTitle = '',
    this.type = '',
    this.date = '',
    List<String>? lines,
  }): lines = lines ?? [];

  Map<String, dynamic> toJson() => {
    'title': title,
    'subTitle': subTitle,
    'type': type,
    'date': date,
    'lines': lines,
  };

  factory BookTextLine.fromJson(Map<String, dynamic> data) {
    return BookTextLine(
      title: data['title'],
      subTitle: data['subTitle'],
      type: data['type'],
      date: data['date'],
      lines: data['lines'],
    );
  }

  @override
  String toString() => '{'
      'title: $title, '
      'subTitle: $subTitle, '
      'type: $type, '
      'date: $date, '
      'lines: $lines, '
      '}';
}