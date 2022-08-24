import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  final String title;
  final String id;
  bool? isDone;
  bool? isDeleted;
  Task({required this.title, required this.id, isDone, isDeleted})
      : this.isDone = isDone ?? false,
        this.isDeleted = isDeleted ?? false;
  Task copyWith({
    String? title,
    String? id,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
        title: title ?? this.title,
        id: id ?? this.id,
        isDone: isDone ?? this.isDone,
        isDeleted: isDeleted ?? this.isDeleted);
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'id': id, 'isDone': isDone, 'isDeleted': isDeleted};
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
        title: map['title'] ?? '',
        id: map['id'] ?? '',
        isDone: map['isDone'],
        isDeleted: map['isDeleted']);
  }

  @override
  List<Object?> get props => [title, isDone, isDeleted, id];
}
