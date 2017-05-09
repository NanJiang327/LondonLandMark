//
//  TableViewCell.h
//  particeApp
//
//  Created by Nan on 2017/5/1.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;

@end
