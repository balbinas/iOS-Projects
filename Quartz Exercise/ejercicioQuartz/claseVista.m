//
//  claseVista.m
//  ejercicioQuartz
//
//  Created by Balbina Santana on 3/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "claseVista.h"

@implementation claseVista

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

 - (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef contexto = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(contexto, 2.0);
    CGLayerRef capaRect = CGLayerCreateWithContext(contexto, self.frame.size, nil);//rectangulo
    CGLayerRef capaTri = CGLayerCreateWithContext(contexto, self.frame.size, nil);//triangulo
    CGLayerRef capaCir = CGLayerCreateWithContext(contexto, self.frame.size, nil);//circulo
     
    CGContextRef contextoRect = CGLayerGetContext(capaRect);
    CGContextRef contextoTri = CGLayerGetContext(capaTri);
    CGContextRef contextoCir = CGLayerGetContext(capaCir);
    
    if(self.swiRect)
    {
        CGContextSetLineWidth(contextoRect, 2.0);
        CGContextSetFillColorWithColor(contextoRect, [UIColor redColor].CGColor);
        CGContextSetStrokeColorWithColor(contextoRect, [UIColor orangeColor].CGColor);
        CGRect unRect = CGRectMake(30, 100, 100, 80);
        CGContextFillRect(contextoRect, unRect);
        CGContextStrokeRect(contextoRect, unRect);
        CGContextDrawLayerInRect(contexto, self.frame, capaRect);
    }
    
     if(self.swiCir)
     {
         CGContextSetLineWidth(contextoCir, 2.0);
         CGContextSetFillColorWithColor(contextoCir, [UIColor purpleColor].CGColor);
         CGContextSetStrokeColorWithColor(contextoCir, [UIColor magentaColor].CGColor);
         CGRect cir = CGRectMake(150, 100, 100, 100);
         CGContextFillEllipseInRect(contextoCir, cir);
         CGContextStrokeEllipseInRect(contextoCir, cir);
         CGContextDrawLayerInRect(contexto, self.frame, capaCir);
     }
     
     if(self.swiTri)
     {
         CGContextSetLineWidth(contextoTri, 2.0);
         CGColorRef colorTrans = CGColorCreateCopyWithAlpha([UIColor cyanColor].CGColor, 0.5);
         CGContextSetFillColorWithColor(contextoTri, colorTrans);
         CGContextSetStrokeColorWithColor(contextoTri, [UIColor blueColor].CGColor);
         
         CGContextMoveToPoint(contextoTri, 200, 50);
         CGContextAddLineToPoint(contextoTri, 200, 200);
         CGContextAddLineToPoint(contextoTri, 50, 200);
         CGContextClosePath(contextoTri);
         CGContextFillPath(contextoTri);
         
         CGContextMoveToPoint(contextoTri, 200, 50);
         CGContextAddLineToPoint(contextoTri, 200, 200);
         CGContextAddLineToPoint(contextoTri, 50, 200);
         CGContextClosePath(contextoTri);
         CGContextStrokePath(contextoTri);
         
         CGContextDrawLayerInRect(contexto, self.frame, capaTri);
     }

 }

@end
