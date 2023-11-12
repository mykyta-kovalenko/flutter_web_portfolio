import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../utils/build_context_ext.dart';

class ProjectsBlock extends StatelessWidget {
  final DataGridSource projects;

  const ProjectsBlock({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDesktop;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.projectsStatuses,
          style: isDesktop
              ? context.textTheme.mainTitle
              : context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        _buildDataGrid(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${context.strings.total}: ${projects.rows.length}',
              style: isDesktop
                  ? context.textTheme.mobileBodyText
                  : context.textTheme.mainBodyText,
            ),
            Text(
              context.strings.dataGridDoesntInclude,
              style: context.textTheme.mobileBodyText.copyWith(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: context.colorTheme.black.withOpacity(.6),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildDataGrid(BuildContext context) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(gridLineStrokeWidth: 2),
      child: SfDataGrid(
        source: projects,
        shrinkWrapRows: true,
        columnWidthMode: ColumnWidthMode.fitByCellValue,
        columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
        columns: <GridColumn>[
          _buildColumnCell(
            context,
            columnName: 'name',
            label: context.strings.name,
          ),
          _buildColumnCell(
            context,
            columnName: 'platform',
            label: context.strings.platform,
          ),
          _buildColumnCell(
            context,
            columnName: 'status',
            label: context.strings.status,
          ),
          _buildColumnCell(
            context,
            columnName: 'location',
            label: context.strings.location,
          ),
          _buildColumnCell(
            context,
            columnName: 'description',
            label: context.strings.description,
          ),
        ],
      ),
    );
  }

  GridColumn _buildColumnCell(
    BuildContext context, {
    required String columnName,
    required String label,
  }) {
    return GridColumn(
      columnName: columnName,
      label: Text(
        label,
        style: context.textTheme.mobileBodyText.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
