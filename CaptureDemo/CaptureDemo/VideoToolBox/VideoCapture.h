//
//  VideoCapture.h
//  CaptureDemo
//
//  Created by Tian on 2021/5/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoCapture : NSObject

- (void)startCapture:(UIView *)preview;

- (void)stopCapture;

@end

NS_ASSUME_NONNULL_END
