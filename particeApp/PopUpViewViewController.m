//
//  PopUpViewViewController.m
//  particeApp
//
//  Created by NAN JIANG on 2017/8/2.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import "PopUpViewViewController.h"

@interface PopUpViewViewController ()

- (IBAction)backButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *popUpView;
@property (strong, nonatomic) IBOutlet UIImageView *londonEyeView;
@property (strong, nonatomic) IBOutlet UIImageView *bigBenView;
- (IBAction)segmentedControll:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedController;

@end

@implementation PopUpViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //self.navigationController.navigationBar.translucent = YES;
    _popUpView.layer.cornerRadius = 10;
    _londonEyeView.layer.cornerRadius = 10;
    _bigBenView.layer.cornerRadius = 10;
    _popUpView.hidden = NO;
    _londonEyeView.hidden = YES;
    _bigBenView.hidden = YES;
    
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

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)segmentedControll:(id)sender {
    switch (_segmentedController.selectedSegmentIndex) {
        case 0:
            _popUpView.hidden = NO;
            _londonEyeView.hidden = YES;
            _bigBenView.hidden = YES;
            break;
        case 1:
            _popUpView.hidden = YES;
            _londonEyeView.hidden = NO;
            _bigBenView.hidden = YES;
            break;
        case 2:
            _popUpView.hidden = YES;
            _londonEyeView.hidden = YES;
            _bigBenView.hidden = NO;
            break;
        default:
            break;
    }
}
@end
