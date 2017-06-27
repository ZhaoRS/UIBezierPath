//
//  BezierPathView.m
//  ZRSUIBezierPath
//
//  Created by 赵瑞生 on 2017/6/27.
//  Copyright © 2017年 赵瑞生. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    //矩形贝塞尔曲线
    UIBezierPath *bezierPath_rect = [UIBezierPath bezierPathWithRect:CGRectMake(30, 70, 100, 100)];
    bezierPath_rect.lineCapStyle = kCGLineCapRound;//断点类型
    bezierPath_rect.lineJoinStyle = kCGLineJoinRound; //线条连接类型
    bezierPath_rect.miterLimit = 1;
    CGFloat dash[] = {20, 1};
    [bezierPath_rect setLineDash:dash count:2 phase:0];
    bezierPath_rect.lineWidth = 1;
    
    [[UIColor redColor] set];//设置颜色
    [bezierPath_rect stroke]; //绘制边框
    
    //圆形 椭圆曲线
    UIBezierPath *bezierPath_oval = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(150, 70, 100, 100)];
    bezierPath_oval.lineWidth = 2;
    [[UIColor yellowColor] set];
//    [bezierPath_oval stroke];
    [bezierPath_oval fill];
    
    //有圆角的曲线
    UIBezierPath *bezierPath_reoundedRect = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(280, 70, 100, 100) cornerRadius:20];
    bezierPath_reoundedRect.lineWidth = 3;
    [[UIColor blackColor] set];
    [bezierPath_reoundedRect stroke];
    
    //可选择圆角方位的曲线
    UIBezierPath *bezierPath_reoundedCornerRect = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(30, 200, 100, 100) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];
    bezierPath_reoundedCornerRect.lineWidth = 2;
    [[UIColor greenColor] set];
    [bezierPath_reoundedCornerRect stroke];
    
    
    //绘制圆弧曲线
    UIBezierPath *bezierPath_arcCenter = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 200) radius:50 startAngle:M_PI / 2 * 3 endAngle:M_PI / 3 clockwise:YES];
    [[UIColor blueColor] set];
    [bezierPath_arcCenter stroke];
    
    
    
    //添加二次三次贝塞尔曲线
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2;
    [bezierPath moveToPoint:CGPointMake(30, 400)];
    [bezierPath addLineToPoint:CGPointMake(80, 320)];
    [bezierPath addQuadCurveToPoint:CGPointMake(200, 400) controlPoint:CGPointMake(200, 300)];
    [bezierPath addCurveToPoint:CGPointMake(300, 600) controlPoint1:CGPointMake(400, 400) controlPoint2:CGPointMake(300, 500)];
    [bezierPath addArcWithCenter:CGPointMake(300, 500) radius:50 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    [[UIColor greenColor] set];
    [bezierPath stroke];
    
    CALayer *aniLayer = [CALayer layer];
    aniLayer.backgroundColor = [UIColor redColor].CGColor;
    aniLayer.position = CGPointMake(30, 400);
    aniLayer.bounds = CGRectMake(0, 0, 8, 8);
    aniLayer.cornerRadius = 4;
    [self.layer addSublayer:aniLayer];
    
    CAKeyframeAnimation *keyFrameAni = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyFrameAni.repeatCount = NSIntegerMax;
    keyFrameAni.path = bezierPath.CGPath;
    keyFrameAni.duration = 5;
    keyFrameAni.beginTime = CACurrentMediaTime() + 1;
    [aniLayer addAnimation:keyFrameAni forKey:@"keyFrameAnimation"];
    
    
    
}

@end
