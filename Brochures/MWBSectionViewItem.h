//
//  MWBSectionViewItem.h
//  Brochures
//
//  Created by Mokhles on 29/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MWBSectionViewItem : NSObject

/*************************************************************
 *      Data Objects parsed from data manager             *
 ************************************************************/

/**
 *  key of the section
 */
@property (nonatomic , copy , readonly)      NSString*  identfier;
/**
 *  image presented
 */
@property (nonatomic , strong , readonly)   UIImage*  image;
@property (nonatomic , copy ,   readonly)    NSString*  name;
@property (nonatomic , strong , readonly)   NSNumber*  sectionsNumber;



/*************************************************************
 *      Initlaizing Methods                                               *
 ************************************************************/

/**
 *  Responsible for returning a sector with necessary data filled
 *
 *  @param identfier id of the sector
 *  @param urlString url tot he image
 *  @param name      name of the sector
 *  @param brochuresCounter  number of brochures linked to the sector
 *
 *  @return sector with necessary data filled
 */
+ (MWBSectionViewItem*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochuresCounter:(NSUInteger)brochures;

@end
