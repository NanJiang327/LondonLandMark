//
//  BarChartViewController.h
//  particeApp
//
//  Created by NAN JIANG on 2017/8/2.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "particeApp-Bridging-Header.h"

@interface BarChartViewController : UIViewController{
    NSArray *date;
    NSInteger onlineStoreNumbers[10];
    NSArray *offlineStoreNumber;
}

@end
