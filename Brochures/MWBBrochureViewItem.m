//
//  MWBBrochureViewItem.m
//  Brochures
//
//  Created by Mokhles on 29/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBBrochureViewItem.h"
#import "MWBImageDownloader.h"

@interface MWBBrochureViewItem ()

@property (nonatomic , copy , readwrite) NSString*  coverURLString;
@property (nonatomic , copy , readwrite) UIImage*  imageOfBrochure;
@property (nonatomic , copy , readwrite) NSString*  title;
@property (nonatomic , copy , readwrite) NSString*  retailerName;
@property (nonatomic , copy , readwrite) NSString* identfier;
@property (nonatomic , assign) BOOL didLoadImage;

@end
@implementation MWBBrochureViewItem

+ (MWBBrochureViewItem*) brochureDisplayItemWithImageURL:(NSString*)imageOfBrochureURL title:(NSString*)title  retailerName:(NSString*)retailerName
{

    MWBBrochureViewItem* brochureViewItem = [[MWBBrochureViewItem alloc]init];
    
    brochureViewItem.coverURLString= imageOfBrochureURL;
    brochureViewItem.title=title;
    brochureViewItem.retailerName=retailerName;
    
  
    return brochureViewItem;
}

- (UIImage *)imageOfBrochure
{
    
    // lazy loading images
    if (!self.didLoadImage) {
        _imageOfBrochure =  [UIImage imageNamed:@"brochure"];
        __weak MWBBrochureViewItem *weakSelf = self;

        [[MWBImageDownloader sharedInstance] fetchImageFromURL:self.coverURLString ondDidLoad:^(UIImage *image) {
            
           _imageOfBrochure=image;
                 
            weakSelf.didLoadImage=YES;
            [[NSNotificationCenter defaultCenter] postNotificationName:@"Image Retrieved" object:self.identfier];
        }];
    }
    
    
    return _imageOfBrochure;
}

- (NSString *)identfier
{
    if (!_identfier) {
        _identfier = [[NSUUID UUID]UUIDString];
    }
    return _identfier;
}
@end
