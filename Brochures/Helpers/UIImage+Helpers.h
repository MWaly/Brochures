//
//  UIImage+Helpers.h
//  Brochures
//
//  Created by Mokhles on 08/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Helpers)

typedef void (^ImageDidLoadBlock)(UIImage *image);

- (void) fetchImageFromURL: (NSString*) urlString ondDidLoad:(ImageDidLoadBlock)callback;

@end
