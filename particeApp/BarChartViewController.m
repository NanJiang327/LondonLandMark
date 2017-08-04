//
//  BarChartViewController.m
//  particeApp
//
//  Created by NAN JIANG on 2017/8/2.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import "BarChartViewController.h"

@interface BarChartViewController ()
@property (strong, nonatomic) IBOutlet LineChartView *lineChartView;

@end

@implementation BarChartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Set the display message when there is no data inpu.
    _lineChartView.noDataText = @"You need to provide data for the chart.";
    
    NSArray *yForOnlineStore = @[@"7100",@"7200",@"7300",@"7400",@"7500",@"7600",@"7700"];
   // NSArray *xForOnlineStore = @[@"03/08",@"04/08",@"05/08",@"06/08",@"07/08",@"08/08",@"09/08"];
    NSArray *yForOfflineStore = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7"];
  //  NSArray *xForOfflineStore = @[@"03/08",@"04/08",@"05/08",@"06/08",@"07/08",@"08/08",@"09/08"];
    
    
    date = @[@"03/08",@"04/08",@"05/08",@"06/08",@"07/08",@"08/08",@"09/08"];
    //onlineStoreNumbers[] = {7203,7398,7400,7100,7432,7253,7333,nil,nil,nil};
    offlineStoreNumber = @[@"3",@"4",@"5",@"6",@"8",@"2",@"3"];
    _lineChartView.data = self.setDataForOnlineStore;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark charts

- (LineChartData *)setDataForOnlineStore{
    NSMutableArray *xValue =[[NSMutableArray alloc] init];
    for(int i = 0; i<7;i++){
        [xValue addObject:[NSString stringWithFormat:@"%@",date[i]]];
    }
    //set x axis tags.
    _lineChartView.xAxis.valueFormatter = [[ChartIndexAxisValueFormatter alloc] initWithValues:xValue];
    _lineChartView.xAxis.granularity = 1.0;
    
    NSMutableArray *yValue = [[NSMutableArray alloc] init];
    for(int i = 0; i <7; i++){
        double val = (double)(arc4random() % 1001) + 7000;
        ChartDataEntry *dataEntry = [[ChartDataEntry alloc] initWithX:i y:val];
        [yValue addObject:dataEntry];
    }
    
    LineChartDataSet *set1 = nil;
    if (self.lineChartView.data.dataSetCount > 0){
        LineChartData *data = (LineChartData *)self.lineChartView.data;
        set1 = (LineChartDataSet *)data.dataSets[0];
        set1.values = yValue;
        return data;
    }else{
        set1 = [[LineChartDataSet alloc] initWithValues:yValue label:@"Online Stores"];
        NSMutableArray *dataSet1 = [[NSMutableArray alloc] init];
        [dataSet1 addObject:set1];
        LineChartData *data = [[LineChartData alloc] initWithDataSets:dataSet1];
        return data;
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
