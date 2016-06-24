//
//  ViewControllerEditar.h
//  Storyboard
//
//  Created by Balbina Santana on 1/29/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerEditar : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tfnombre;
@property (weak, nonatomic) IBOutlet UITextField *tfemail;
@property (weak, nonatomic) IBOutlet UIButton *bCancel;
@property (weak, nonatomic) IBOutlet UIButton *bSave;

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;


@end
