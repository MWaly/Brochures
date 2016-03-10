//
//  MWBImageDownloader.m
//  Brochures
//
//  Created by Mokhles on 09/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBImageDownloader.h"
@interface MWBImageDownloader()

@property (nonatomic , strong) NSCache * imagesCache ;

@end

@implementation MWBImageDownloader

#pragma mark - Setup -

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static id _sharedInstance = nil;
    dispatch_once(&once, ^{
        _sharedInstance = [[self alloc] init];
        
    });
    return _sharedInstance;
}

#pragma mark - Actual Caching -
- (void) fetchImageFromURL: (NSString*) urlString ondDidLoad:(ImageDidLoadBlock)callback
{

dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0ul);
dispatch_async(queue, ^{
    NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
    
        UIImage *image = [UIImage imageWithData:imageData];
        // placeholder image
        if (!image)
        {
            image= [UIImage imageNamed:@"NA"];
        }
        
        callback(image);

});
}
@end
