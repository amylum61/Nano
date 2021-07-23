//
//  ViewController.m
//  controlFun
//
//  Created by Admin on 2021/7/22.
//  Copyright © 2021 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *NameField;
@property (weak, nonatomic) IBOutlet UITextField *NumberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftswitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightswitch;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.sliderLabel.text = @"50";
}


- (IBAction)sliderChange:(UISlider *)sender {
    int progress = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d",progress];
}


- (IBAction)backgroundTap:(id)sender {
    [self.NameField resignFirstResponder];
    [self.NumberField resignFirstResponder];
}

- (IBAction)done:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)switchChange:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftswitch setOn:setting animated:YES];
    [self.rightswitch setOn:setting animated:YES];
}


@end
