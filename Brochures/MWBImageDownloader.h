//
//  MWBImageDownloader.h
//  Brochures
//
//  This will act as a single point of contact for images downloading where it caches all images and posts notfication when done
//
//  Created by Mokhles on 09/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//
@import UIKit;
@import Foundation;

@interface MWBImageDownloader : NSObject
typedef void (^ImageDidLoadBlock)(UIImage *image);

// the singleton manager 
+ (instancetype) sharedInstance;
/**
 *  Images Fetching
 *
 *  @param urlString url To fetch images from
 *  @param callback  image laoding results callback
 */

- (void) fetchImageFromURL: (NSString*) urlString ondDidLoad:(ImageDidLoadBlock)callback;
@end
