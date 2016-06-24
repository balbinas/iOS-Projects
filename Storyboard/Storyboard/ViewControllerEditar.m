//
//  ViewControllerEditar.m
//  Storyboard
//
//  Created by Balbina Santana on 1/29/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewControllerEditar.h"

@interface ViewControllerEditar ()

@end

@implementation ViewControllerEditar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
 
 ViewControllerInicialViewController *viewIni = [segue destinationViewController];
 
 if (sender == self.bSave)
 {
 viewIni.nombre = self.tfnombre.text;
 viewIni.email = self.tfemail.text;
 }
}


@end
