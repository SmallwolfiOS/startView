//
//  ViewController.m
//  startView
//
//  Created by Jason on 16/3/22.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *firstImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;

@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet UIButton *enterBtn;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _enterBtn.layer.cornerRadius = _enterBtn.frame.size.height/2;
    _enterBtn.layer.masksToBounds = YES;
    NSArray * array  = nil;
    if (iPhone4) {
        array = @[@"defoult_640X960_1.png",@"defoult_640X960_2.png",@"defoult_640X960_3.png"];
    }else if (iPhone5){
        array = @[@"defoult_640X1136_1.png",@"defoult_640X1136_2.png",@"defoult_640X1136_3.png"];
    }else if (iPhone6){
        array = @[@"defoult_750X1334_1.png",@"defoult_750X1334_2.png",@"defoult_750X1334_3.png"];
    }else if (iPhone6p){
        array = @[@"defoult_828X1472_1.png",@"defoult_828X1472_2.png",@"defoult_828X1472_3.png"];
    }
    _firstImageView.image = [UIImage imageNamed:array[0]];
    _secondImageView.image = [UIImage imageNamed:array[1]];
    _thirdImageView.image = [UIImage imageNamed:array[2]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
