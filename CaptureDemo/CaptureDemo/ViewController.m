//
//  ViewController.m
//  CaptureDemo
//
//  Created by Tian on 2021/5/19.
//

#import "ViewController.h"
#import "VideoCapture.h"
//#import <VideoToolbox/VideoToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()<AVCaptureVideoDataOutputSampleBufferDelegate>

@property (nonatomic, strong) VideoCapture *videoCapture;
@property (nonatomic, assign, getter=isCapture) BOOL capture;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (!self.isCapture) {
        [self.videoCapture startCapture:self.view];
    } else {
        [self.videoCapture stopCapture];
    }
    self.capture = !self.capture;
}

- (VideoCapture *)videoCapture {
    if (_videoCapture == nil) {
        _videoCapture = [[VideoCapture alloc] init];
    }
    
    return _videoCapture;
}
@end
