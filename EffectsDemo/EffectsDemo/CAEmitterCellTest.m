//
//  CAEmitterCellTest.m
//  EffectsDemo
//
//  Created by Tian on 2021/5/19.
//

#import "CAEmitterCellTest.h"

@implementation CAEmitterCellTest

- (void)testCellWithView:(UIView *)view {
    // 1.创建发射器
    CAEmitterLayer *emitterLayer = [[CAEmitterLayer alloc] init];
    
    // 2.设置位置
    emitterLayer.emitterPosition = CGPointMake(200, -200);
    
    // 3.开启三维效果
    emitterLayer.preservesDepth = true;
    
    // 4.设置Cell : 对应一个粒子
    // 4.1.创建粒子
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    
    // 4.2.设置每秒发出多少个粒子
    cell.birthRate = 20;
    
    // 4.3.设置粒子存活时间
    cell.lifetime = 5;
    cell.lifetimeRange = 1.5;
    
    // 4.4.设置缩放比例
    cell.scale = 0.7;
    cell.scaleRange = 0.2;
    
    // 4.5.设置粒子的方向
    cell.emissionLongitude = M_PI_2;
    cell.emissionRange = M_PI_2;
    
    // 4.6.设置粒子的速度
    cell.velocity = 150;
    cell.velocityRange = 100;
    
    cell.spin = M_PI_2;
    
    // 4.7.设置粒子的内容
    cell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"good2_30x30"].CGImage);
    
    // 4.8.将粒子设置到发射器中
    emitterLayer.emitterCells = @[cell];
    
    // 5.将layer添加到父layer中
    [view.layer addSublayer:emitterLayer];
}

@end
