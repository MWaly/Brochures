//
//  MWBBrochureViewItem.h
//  Brochures
//
//  Created by Mokhles on 29/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIImage.h>

@interface MWBBrochureViewItem : NSObject


/**
 *  identfier of the brochre
 */
@property (nonatomic , copy , readonly) NSString*  identfier;

/**
 *  image of the brochre
 */
@property (nonatomic , copy , readonly) UIImage*  imageOfBrochure;
/**
 *  cover url for a brochure image
 */
@property (nonatomic , copy , readonly) NSString*  coverURLString;
/**
 *  corresponding to "title" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  title;
/**
 *  corresponding to "retailerName" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  retailerName;

/**
 *  Returinng a displayable item filled with data for a certain brochure
 *
 *  @param imageOfBrochureURL brochure imageURL
 *  @param title           title of brochure
 *  @param retailerName    the name of the retailer rp4esenting this brochure
 *  @param identfier       identfier of this brochure
 *
 *  @return displayable item filled with data for a certain brochure
 */
+ (MWBBrochureViewItem*) brochureDisplayItemWithImageURL:(NSString*)imageOfBrochureURL title:(NSString*)title  retailerName:(NSString*)retailerName
    ;


@end
