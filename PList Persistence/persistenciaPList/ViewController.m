//
//  ViewController.m
//  persistenciaPList
//
//  Created by Balbina Santana on 3/19/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString	*filePath =	[self dataFilePath];
    
    if	([[NSFileManager defaultManager]	fileExistsAtPath:	filePath])
    {
        NSArray	*array	=	[	[NSArray alloc]	initWithContentsOfFile:	filePath];
        self.tfDato1.text	=	[array objectAtIndex:	0];
        self.tfDato2.text	=	[array	objectAtIndex:	1];
        self.tfDato3.text	=	[array	objectAtIndex:	2];
        self.tfDato4.text	=	[array	objectAtIndex:	3];
    }
    
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter]
     addObserver: self
     selector: @selector(aplicacionTerminara:)
     name:	UIApplicationDidEnterBackgroundNotification
     object: app];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-	(NSString *) dataFilePath
{
    NSArray * paths	=	NSSearchPathForDirectoriesInDomains (	NSDocumentDirectory, NSUserDomainMask,	YES);
    NSString *documentsDirectory = [paths	objectAtIndex: 0];
    return	[documentsDirectory stringByAppendingPathComponent:
             @"notif.plist"];
}

-	(void)	aplicacionTerminara:	(NSNotification	*)	notification
{	NSMutableArray	*listaDatos =	[[NSMutableArray alloc]	init];
    [listaDatos	addObject: self.tfDato1.text];
    [listaDatos addObject: self.tfDato2.text];
    [listaDatos addObject: self.tfDato3.text];
    [listaDatos addObject: self.tfDato4.text];
    [listaDatos writeToFile: [self dataFilePath] atomically: YES];
}


@end
