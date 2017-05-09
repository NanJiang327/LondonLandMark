//
//  DetailViewController.h
//  particeApp
//
//  Created by Nan on 2017/5/2.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController{
    
    double latitude;
    double longtitude;
    
}

@property (nonatomic,strong) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescription;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *directionsButton;
- (IBAction)direction:(id)sender;


@end
