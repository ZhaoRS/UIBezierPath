//
//  ViewController.m
//  ZRSUIBezierPath
//
//  Created by 赵瑞生 on 2017/6/27.
//  Copyright © 2017年 赵瑞生. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    /*  贝塞尔曲线的属性
    
    + (instancetype)bezierPath; //初始化贝塞尔曲线（无形状）
    + (instancetype)bezierPathWithRect:(CGRect)rect; //绘制矩形贝塞尔曲线
    + (instancetype)bezierPathWithOvalInRect:(CGRect)rect; //绘制椭圆形贝塞尔曲线
    + (instancetype)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius; // rounds all corners with the same horizontal and vertical radius 绘制含有圆角的贝塞尔曲线
    + (instancetype)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii; //绘制可选择圆角方位的贝塞尔曲线
    + (instancetype)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise;//绘制圆弧曲线
    + (instancetype)bezierPathWithCGPath:(CGPathRef)CGPath;//根据CGPathRef绘制贝塞尔曲线
    
    - (instancetype)init NS_DESIGNATED_INITIALIZER;
    - (nullable instancetype)initWithCoder:(NSCoder *)aDecoder NS_DESIGNATED_INITIALIZER;
    
    // Returns an immutable CGPathRef which is only valid until the UIBezierPath is further mutated.
    // Setting the path will create an immutable copy of the provided CGPathRef, so any further mutations on a provided CGMutablePathRef will be ignored.
    @property(nonatomic) CGPathRef CGPath;
    - (CGPathRef)CGPath NS_RETURNS_INNER_POINTER CF_RETURNS_NOT_RETAINED;
    
    // Path construction
    
    - (void)moveToPoint:(CGPoint)point; //贝塞尔曲线开始的点
    - (void)addLineToPoint:(CGPoint)point; //添加直线到该点
    - (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2; //添加二次曲线到该点
    - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint;//添加曲线到该点
    - (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise NS_AVAILABLE_IOS(4_0);//添加圆弧 上一个点会以直线的形式链接到圆弧的起点
    - (void)closePath;//闭合曲线
    
    - (void)removeAllPoints;//去掉所有的曲线点
    
    // Appending paths
    
    - (void)appendPath:(UIBezierPath *)bezierPath;
    
    // Modified paths
    
    - (UIBezierPath *)bezierPathByReversingPath NS_AVAILABLE_IOS(6_0);
    
    // Transforming paths
    
    - (void)applyTransform:(CGAffineTransform)transform;
    
    // Path info
    
    @property(readonly,getter=isEmpty) BOOL empty;
    @property(nonatomic,readonly) CGRect bounds;
    @property(nonatomic,readonly) CGPoint currentPoint;
    - (BOOL)containsPoint:(CGPoint)point;
    
    // Drawing properties
    
    @property(nonatomic) CGFloat lineWidth;
    @property(nonatomic) CGLineCap lineCapStyle;
    @property(nonatomic) CGLineJoin lineJoinStyle;
    @property(nonatomic) CGFloat miterLimit; // Used when lineJoinStyle is kCGLineJoinMiter 线条最大宽度最大限度
    @property(nonatomic) CGFloat flatness;
    @property(nonatomic) BOOL usesEvenOddFillRule; // Default is NO. When YES, the even-odd fill rule is used for drawing, clipping, and hit testing.
    
    - (void)setLineDash:(nullable const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase;
    - (void)getLineDash:(nullable CGFloat *)pattern count:(nullable NSInteger *)count phase:(nullable CGFloat *)phase;
    
    // Path operations on the current graphics context
    
    - (void)fill;//填充曲线内部
    - (void)stroke;//绘制曲线的边框
    
    // These methods do not affect the blend mode or alpha of the current graphics context
    - (void)fillWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
    - (void)strokeWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
    
    - (void)addClip;

    */
    
    
    BezierPathView *view = [[BezierPathView alloc] initWithFrame:self.view.bounds];
//    [view drawRect:self.view.frame];
    [self.view addSubview:view];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
