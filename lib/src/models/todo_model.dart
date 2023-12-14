import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo_model.freezed.dart';

const uuid = Uuid();

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String desc,
    @Default(false) bool isCompleted,
  }) = _Todo;

  factory Todo.add(String desc) {
    return Todo(
      id: uuid.v4(), // 자동으로 id를 생성
      desc: desc,
    );
  }
}
