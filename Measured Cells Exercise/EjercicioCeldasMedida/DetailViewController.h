//
//  DetailViewController.h
//  EjercicioCeldasMedida
//
//  Created by Balbina Santana on 3/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary * detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
