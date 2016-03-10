//
//  MWBBrochureNetworkItem.h
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBBrochureNetworkItem : NSObject

/*****************************************************
 *      Data Objects
 ****************************************************/


/**
 *  corresponding to "coverUrl" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  urlString;
/**
 *  corresponding to "title" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  title;
/**
 *  corresponding to "retailerName" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  retailerName;

+ (MWBBrochureNetworkItem*) brochureWithURLString:(NSString*)urlString title:(NSString*)title retailerName:(NSString*)retailerName;
@end
