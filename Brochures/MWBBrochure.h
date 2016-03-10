//
//  MWBBrochure.h
//  Brochures
//
//   This is the entity reposible for brochure retrieved ffrom backend
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBBrochure : NSObject

/**
 *  url for the brochure
 */
@property (nonatomic , copy , readonly) NSString*  urlString;
/**
 *  title of the brochure
 */
@property (nonatomic , copy , readonly) NSString*  title;
/**
 *  retailer name for the goods of this brochure
 */
@property (nonatomic , copy , readonly) NSString*  retailerName;


/**
 *  Brochure application data model initalizer
 *
 *  @param identfier    identfier for brochure
 *  @param urlString    cover image of brochure url
 *  @param title        brochure title
 *  @param retailerName retailer name selling the item of the brochure
 *
 *  @return <#return value description#>
 */
+ (MWBBrochure*) brochureWithURLString:(NSString*)urlString title:(NSString*)title retailerName:(NSString*)retailerName;

@end
