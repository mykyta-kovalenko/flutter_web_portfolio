import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/project.dart';

class ProjectsDataSourceService extends DataGridSource {
  List<DataGridRow> _projects = [];

  ProjectsDataSourceService(
    BuildContext context, {
    required List<Project> projects,
  }) {
    _projects = projects.map((project) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(columnName: 'name', value: project.name),
          DataGridCell<List<String>>(
            columnName: 'platform',
            value: project.projectPlatform
                .map((platform) => platform.getName(context))
                .toList(),
          ),
          DataGridCell<String>(
            columnName: 'status',
            value: project.projectStatus.getName(context),
          ),
          DataGridCell<String>(
            columnName: 'location',
            value: project.projectLocation.getName(context),
          ),
          DataGridCell<String>(
            columnName: 'description',
            value: project.description,
          ),
        ],
      );
    }).toList();
  }

  @override
  List<DataGridRow> get rows => _projects;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    final cells = row.getCells();

    return DataGridRowAdapter(
      cells: [
        Text(cells[0].value),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cells[1].value[0]),
            if (cells[1].value.length > 1) Text(cells[1].value[1]),
          ],
        ),
        Text(cells[2].value),
        Text(cells[3].value),
        Text(cells[4].value),
      ],
    );
  }
}
