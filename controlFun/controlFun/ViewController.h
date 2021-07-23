//
//  ViewController.h
//  controlFun
//
//  Created by Admin on 2021/7/22.
//  Copyright © 2021 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)done:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)sliderChange:(UISlider *)sender;

@end

