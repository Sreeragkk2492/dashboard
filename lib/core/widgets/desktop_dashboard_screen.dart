import 'dart:math';

import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/dashboard_card.dart';
import 'package:dashboard/core/widgets/line_chart_card.dart';
import 'package:dashboard/core/widgets/summary_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DesktopDashboardScreen extends StatelessWidget {
  DesktopDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 500.w, child: LineChartCard()),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: DashboardCard(
                            title: 'new orders',
                            value: '87.4',
                            icon: Image.asset(
                              'assets/circular.png',
                              width: 30.w,
                            ),
                            backgroundColor: AppColors.grayWhite,
                            textColor: AppColors.blackColor,
                            width: 300.w,
                            subtitle: '54.9%'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
                        child: DashboardCard(
                            title: 'Today Sales',
                            value: '+12%',
                            icon: Image.asset(
                              'assets/clipboard.png',
                              width: 30.w,
                            ),
                            backgroundColor: AppColors.grayWhite,
                            textColor: AppColors.blackColor,
                            width: 300.w,
                            subtitle: '62.7%'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: DashboardCard(
                            title: 'New Users',
                            value: '17.2k',
                            icon: Image.asset(
                              'assets/greengift.png',
                              width: 30.w,
                            ),
                            backgroundColor: AppColors.grayWhite,
                            textColor: AppColors.blackColor,
                            width: 300.w,
                            subtitle: '72.1%'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
                        child: DashboardCard(
                            title: 'Pending Issues',
                            value: '63.2k',
                            icon: Image.asset(
                              'assets/dashboard.png',
                              width: 30.w,
                            ),
                            backgroundColor: AppColors.grayWhite,
                            textColor: AppColors.blackColor,
                            width: 300.w,
                            subtitle: '175.5%'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.h, left: 20.w, right: 20.w, bottom: 20.h),
                  child: Container(
                    width: 800.w, 
                    height: 450.h,
                    decoration: BoxDecoration(
                        color: AppColors.buttonSuccessColor,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Text(
                              'Table',
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            width: 800.w,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                final double dataTableWidth =
                                    max(kScreenWidthMd, constraints.maxWidth);

                                return Scrollbar(
                                  // controller:
                                  //     _dataTableHorizontalScrollController,
                                  thumbVisibility: true,
                                  trackVisibility: true,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    // controller:
                                    //     _dataTableHorizontalScrollController,
                                    child: SizedBox(
                                      width: dataTableWidth,
                                      child: DataTable(
                                        showCheckboxColumn: false,
                                        showBottomBorder: true,
                                        columns: const [
                                          DataColumn(label: Text('No.')),
                                          DataColumn(label: Text('Date')),
                                          DataColumn(label: Text('Item')),
                                          DataColumn(
                                            label: Text('Rating'),
                                          ),
                                          DataColumn(
                                            label: Text('qty'),
                                          ),
                                          DataColumn(
                                            label: Text('Price'),
                                          ),
                                        ],
                                        rows: List.generate(5, (index) {
                                          return DataRow.byIndex(
                                            index: index,
                                            cells: [
                                              DataCell(Text('#${index + 1}')),
                                              const DataCell(
                                                  Text('2022-06-30')),
                                              DataCell(
                                                  Text('Item ${index + 1}')),
                                              DataCell(Text(
                                                  '${Random().nextInt(50)}')),
                                              DataCell(Text(
                                                  '${Random().nextInt(100)}')),
                                              DataCell(Text(
                                                  '${Random().nextInt(10000)}')),
                                            ],
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only( top: 20.h, left: 20.w, right: 20.w, bottom: 20.h), 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    children: [
                      SummaryCard(
                          title: 'new orders',
                          value: '87.4',
                          icon: Icons.shopping_basket,
                          backgroundColor: AppColors.bgGreyColor,
                          textColor: AppColors.blackColor,
                          iconColor: AppColors.greycolor,
                          width: 330), 
                           Padding(
                             padding: const EdgeInsets.only(top: 20),
                             child: SummaryCard(
                                                       title: 'today sale',
                                                       value: '+12%',
                                                       icon: Icons.line_axis,
                                                       backgroundColor: AppColors.bgGreyColor,
                                                       textColor: AppColors.blackColor,
                                                       iconColor: AppColors.greycolor,
                                                       width: 330),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,bottom: 20), 
                             child: SummaryCard(
                                                       title: 'new users',
                                                       value: '25.5',
                                                       icon: Icons.person_2,
                                                       backgroundColor: AppColors.bgGreyColor,
                                                       textColor: AppColors.blackColor,
                                                       iconColor: AppColors.greycolor,
                                                       width: 330),
                           ),
                           SummaryCard(
                          title: 'pending issues',
                          value: '50',
                          icon: Icons.dangerous, 
                          backgroundColor: AppColors.bgGreyColor,
                          textColor: AppColors.blackColor,
                          iconColor: AppColors.greycolor,
                          width: 330)     
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget chartcard() {
  return Container(
    height: 400.h,
    width: 700.w,
    // constraints: BoxConstraints(maxWidth: 400),
    padding: EdgeInsets.all(kDefaultPadding),
    decoration: BoxDecoration(
        //  color: themeData.cardColor,
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.greycolor,
        boxShadow: [
          BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 6)
        ]),
    child: SfCartesianChart(
      borderColor: AppColors.whiteColor,
      backgroundColor: AppColors.buttonSuccessColor,
      primaryXAxis: CategoryAxis(),
      // Chart title
      title: ChartTitle(text: 'Chart'),
      // Enable legend
      legend: Legend(isVisible: true),
      // Enable tooltip
      tooltipBehavior: TooltipBehavior(enable: true),
      series: [
        LineSeries<SalesData, String>(
            dataSource: data,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales),

        //  name: 'Sales',
        // dataLabelSettings: DataLabelSettings(isVisible: true),
      ],
    ),
  );
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

final List<SalesData> data = [
  SalesData('Jan', 35),
  SalesData('Feb', 28),
  SalesData('Mar', 34),
  SalesData('Apr', 32),
  SalesData('May', 40)
];
