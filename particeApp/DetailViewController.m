//
//  DetailViewController.m
//  particeApp
//
//  Created by Nan on 2017/5/2.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailTitle.text = _detailModal[0];
    self.detailDescription.text  = _detailModal[1];
    self.detailImageView.image = [UIImage imageNamed:_detailModal[2]];
    self.navigationItem.title = _detailModal[0];
    //detial title的字体颜色
    self.detailTitle.textColor = [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0];
    //按钮的背景颜色
    self.directionsButton.backgroundColor =  [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0]; 
    //地图的圆角度
    self.mapView.layer.cornerRadius = 5;
    self.directionsButton.layer.cornerRadius = 5;
    if([self.detailTitle.text isEqualToString:@"Big Ben"]){
        self.detailTextView.text = @"Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower as well.";
        latitude = 51.50072919999999;
        longtitude = -0.12462540000001354;
    }
    if([self.detailTitle.text isEqualToString:@"Buckingham Palace"]){
        self.detailTextView.text = @"Buckingham Palace is the London residence and administrative headquarters of the reigning monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.";
        
        latitude = 51.501364;
        longtitude = -0.1418899999999894;
    }
    if([self.detailTitle.text isEqualToString:@"London Eye"]){
        self.detailTextView.text = @"The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. ";
        latitude = 51.503324;
        longtitude = -0.1195430000000215;
    }
    if([self.detailTitle.text isEqualToString:@"St Paul's Cathedral"]){
        self.detailTextView.text = @"St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade 1 listed building.";
        latitude = 51.5138453;
        longtitude = -0.0983506000000034;
    }
    if([self.detailTitle.text isEqualToString:@"Tower Bridge"]){
        self.detailTextView.text = @"Tower Bridge is a combined bascule and suspension bridge in London built in 1886–1894. The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London.";
        latitude = 51.5043073;
        longtitude = -0.07617579999998725;
    }
    if([self.detailTitle.text isEqualToString:@"Westminster Abbey"]){
        self.detailTextView.text = @"Westminster Abbey, formally titled the Collegiate Church of St Peter at Westminster, is a large, mainly Gothic abbey church in the City of Westminster, London, just to the west of the Palace of Westminster.";
        latitude = 51.4994174;
        longtitude = -0.1275705000000471;
    }
    //设置地图的初始位置
    MKCoordinateRegion region = {{0.0,0.0},{0.0,0.0}};
    region.center.latitude = latitude;
    region.center.longitude = longtitude;
    region.span.latitudeDelta = 0.01f;
    region.span.longitudeDelta = 0.01f;
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc]init];
    ann.title = _detailModal[0];
    ann.subtitle = _detailModal[1];
    ann.coordinate = region.center;
    [self.mapView addAnnotation:ann];
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

- (IBAction)direction:(id)sender {
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%f,%f",latitude,longtitude];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
}
@end
