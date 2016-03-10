//
//  UIImage+Helpers.m
//  Brochures
//
//  Created by Mokhles on 08/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "UIImage+Helpers.h"

@implementation UIImage (Helpers)

- (void) fetchImageFromURL: (NSString*) urlString ondDidLoad:(ImageDidLoadBlock)callback
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    dispatch_async(queue, ^{
        NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
        dispatch_async(dispatch_get_main_queue(), ^{
      
            UIImage *image = [UIImage imageWithData:imageData];
            // placeholder image
            if (!image) {
                image= [UIImage imageNamed:@"NA"];
            }
            callback(image);
        });
    });
}
@end
