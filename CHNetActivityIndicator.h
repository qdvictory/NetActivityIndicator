//
//  CHNetActivityIndicator.h
//  WeiBo
//
//  Created by Gao Semaus on 11-12-6.
//  Copyright (c) 2011年 Chlova. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHNetActivityIndicator : NSObject
{
    int count;
}
+(CHNetActivityIndicator *)activityIndicator;
- (void)show;
- (void)hide;
@end
