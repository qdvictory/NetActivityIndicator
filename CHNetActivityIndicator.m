//
//  CHNetActivityIndicator.m
//  WeiBo
//
//  Created by Gao Semaus on 11-12-6.
//  Copyright (c) 2011年 Chlova. All rights reserved.
//

#import "CHNetActivityIndicator.h"

@implementation CHNetActivityIndicator
static CHNetActivityIndicator *_activityIndicator;
+(CHNetActivityIndicator *)activityIndicator
{
    if (nil == _activityIndicator) {
        _activityIndicator = [[CHNetActivityIndicator alloc] init];
    }
    
    return _activityIndicator;
}

- (void)dealloc
{
    [_activityIndicator release];
    [super release];
}

- (void)show
{
    if (++count > 0) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    }
}

- (void)hide
{
    if (--count <= 0) {
        count = 0;
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    }
}
@end
