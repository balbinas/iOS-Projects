//
//  CustomUIView.m
//  QUARTZ
//
//  Created by alumno on 3/12/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    CGContextRef contexto = UIGraphicsGetCurrentContext();
    CGLayerRef caparectangulo = CGLayerCreateWithContext(contexto, self.frame.size,  NULL);
    CGLayerRef capatriangulo = CGLayerCreateWithContext(contexto, self.frame.size,  NULL);
    CGLayerRef capacirculo = CGLayerCreateWithContext(contexto, self.frame.size,  NULL);
    CGContextRef contextoRect = CGLayerGetContext(caparectangulo);
    CGContextRef contextoTria = CGLayerGetContext(capatriangulo);
    CGContextRef contextoCirc = CGLayerGetContext(capacirculo);
    
    if(self.boolTria){
        CGContextSetLineWidth(contextoTria,  2.0);
        CGContextSetFillColorWithColor(contextoTria, [UIColor cyanColor].CGColor);
        CGContextSetStrokeColorWithColor(contextoTria, [UIColor blueColor].CGColor);
        CGContextMoveToPoint(contextoTria,  180, 10 );
        CGContextAddLineToPoint(contextoTria,  180,  50);
        CGContextAddLineToPoint(contextoTria,  120,  50);
        CGContextClosePath(contextoTria);
        CGContextFillPath(contextoTria);
        CGContextMoveToPoint(contextoTria,  180, 10 );
        CGContextAddLineToPoint(contextoTria,  180,  50);
        CGContextAddLineToPoint(contextoTria,  120,  50);
        CGContextClosePath(contextoTria);
        CGContextStrokePath(contextoTria);
        CGContextDrawLayerInRect(contexto, self.frame, capatriangulo);
    }
    
    if(self.boolCir){
        CGContextSetLineWidth(contextoCirc,  2.0);
        CGContextSetFillColorWithColor(contextoCirc, [UIColor redColor].CGColor);
        CGContextSetStrokeColorWithColor(contextoCirc, [UIColor blackColor].CGColor);
        CGRect circulo = CGRectMake(2, 2, 100, 100);
        CGContextFillEllipseInRect(contextoCirc, circulo);
        CGContextStrokeEllipseInRect(contextoCirc, circulo);
        CGContextDrawLayerInRect(contexto, self.frame, capacirculo);
    }
    if(self.boolRect){
        CGContextSetLineWidth(contextoRect,  2.0);
        CGContextSetFillColorWithColor(contextoRect, CGColorCreateCopyWithAlpha([UIColor magentaColor].CGColor,.4));
        CGContextSetStrokeColorWithColor(contextoRect, [UIColor cyanColor].CGColor);
        CGRect rectangulo = CGRectMake(50, 50, 100, 100);
        CGContextFillRect(contextoRect, rectangulo);
        CGContextStrokeRect(contextoRect, rectangulo);
        CGContextDrawLayerInRect(contexto, self.frame, caparectangulo);
    }
}

@end
