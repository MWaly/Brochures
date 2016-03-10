//
//  MWBSectorNetworkItem.h
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBSectorNetworkItem : NSObject

/************************************************************
 *      Data Objects parsed from network response
 ************************************************************/

/**
 *  corresponding to "id" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  identfier;
/**
 *  corresponding to "url" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  urlString;
/**
 *  corresponding to "name" in the response object
 */
@property (nonatomic , copy , readonly) NSString*  name;
/**
 *  corresponding to "brochures " in the response object
 */
@property (nonatomic , strong , readonly) NSArray* brochures;

/************************************************************
 *      Initlaizing Methods
 ************************************************************/

/**
 *  Responsible for returning a sector with necessary data filled
 *
 *  @param identfier id of the sector
 *  @param urlString url tot he image
 *  @param name      name of the sector
 *  @param brochures brochures array linked to this sector
 *
 *  @return sector with necessary data filled
 */
+ (MWBSectorNetworkItem*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochures:(NSArray*)brochures;
@end
