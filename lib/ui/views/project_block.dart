import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../utils/build_context_ext.dart';

class ProjectsBlock extends StatelessWidget {
  final DataGridSource projects;

  const ProjectsBlock({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.projectsStatuses,
          style: context.textTheme.mobileTitle,
        ),
        SfDataGrid(
          source: projects,
          shrinkWrapRows: true,
          shrinkWrapColumns: false,
          columnWidthMode: ColumnWidthMode.fitByCellValue,
          columns: <GridColumn>[
            GridColumn(
              columnName: 'name',
              label: Text(context.strings.name),
            ),
            GridColumn(
              columnName: 'platform',
              label: Text(context.strings.platform),
            ),
            GridColumn(
              columnName: 'status',
              label: Text(context.strings.status),
            ),
            GridColumn(
              columnName: 'location',
              label: Text(context.strings.location),
            ),
            GridColumn(
              columnName: 'description',
              label: Text(context.strings.description),
            ),
          ],
        ),
      ],
    );
  }
}
