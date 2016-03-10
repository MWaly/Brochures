//
//  MWBSectionViewItem.m
//  Brochures
//
//  Created by Mokhles on 29/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBSectionViewItem.h"
#import "MWBImageDownloader.h"

@interface MWBSectionViewItem ()
/**
 *  key of the section
 */
@property (nonatomic , copy , readwrite  )   NSString*  identfier;
@property (nonatomic , copy , readwrite  )   NSString*  imageURLString;


/**
 *  image presented
 */
@property (nonatomic , strong , readwrite)   UIImage*  image;
@property (nonatomic , copy ,   readwrite)   NSString*  name;
@property (nonatomic , strong , readwrite)   NSNumber*  sectionsNumber;
@property (nonatomic , assign) BOOL didLoadImage;



@end
@implementation MWBSectionViewItem

#pragma mark - Initialisor -

+ (MWBSectionViewItem*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochuresCounter:(NSUInteger)brochures
{
    MWBSectionViewItem* sectionViewItem= [[MWBSectionViewItem alloc]init];
    
    sectionViewItem.identfier= identfier;
    sectionViewItem.imageURLString=urlString;
    sectionViewItem.name=name;
    sectionViewItem.sectionsNumber= @(brochures);
    
    return sectionViewItem;
}

#pragma mark - DEBUG - 

- (NSString *)description
{
    return  [NSString stringWithFormat:@"Seciton view item with identfier %@ and name  %@ ",self.identfier , self.name];
}

- (BOOL)isEqual:(id)object
{

    if (![object isKindOfClass:[self class]]) {
        return NO;
    }
    else
        return  ([[(MWBSectionViewItem*)object  identfier] isEqualToString:[self identfier]] );
}


#pragma mark - Image Loading - 
- (UIImage *)image
{
    
    // lazy loading images
    if (!self.didLoadImage) {
        _image =  [UIImage imageNamed:@"brochure"];
        __weak MWBSectionViewItem *weakSelf = self;

        [[MWBImageDownloader sharedInstance] fetchImageFromURL:self.imageURLString ondDidLoad:^(UIImage *image) {
            
            _image=image;
            weakSelf.didLoadImage=YES;
            [[NSNotificationCenter defaultCenter] postNotificationName:@"Image Retrieved" object:self.identfier];
        }];
    }
    
    return _image;
}
@end
