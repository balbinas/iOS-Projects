//
//  FirstViewController.h
//  ejemploPicker
//
//  Created by Balbina Santana on 4/9/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property (weak, nonatomic) IBOutlet UILabel *lbletra;
@property (weak, nonatomic) IBOutlet UILabel *lbnum;

@end

