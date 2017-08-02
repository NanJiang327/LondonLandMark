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
    _lineChartView.noDataText = @"You need to provide data for the chart.";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
