//
//  BasicViewController.m
//  particeApp
//
//  Created by NAN JIANG on 2017/8/1.
//  Copyright © 2017年 Nan. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController (){
    bool menushowing;
}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingConstraints;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *traillingConstranit;
- (IBAction)menuButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *mainView;

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    menushowing = NO;
    // Do any additional setup after loading the view.
    _mainView.layer.shadowOpacity = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)menuButton:(id)sender {
    if(menushowing){
        _leadingConstraints.constant = 0;
        _traillingConstranit.constant = 0;
    }else{
        _leadingConstraints.constant = 140;
        _traillingConstranit.constant = -140;
    }
    [UIView animateWithDuration:0.3 animations:^{[self.view layoutIfNeeded];}];

    
    menushowing = !menushowing;
    
}
@end
