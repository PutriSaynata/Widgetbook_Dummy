// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dummy_app/utils/todo_list.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'utils',
    children: [
      _i1.WidgetbookComponent(
        name: 'TodoList',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Checked',
            builder: _i2.checked,
          ),
          _i1.WidgetbookUseCase(
            name: 'unChecked',
            builder: _i2.unchecked,
          ),
        ],
      )
    ],
  )
];
