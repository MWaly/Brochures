//
//  MWBListNetworkItem.h
//  Brochures
//
//  Created by Mokhles on 06/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBListNetworkItem : NSObject

@property (nonatomic , readonly , copy) NSArray* sectors;
/**
 *  returning fully parsed model of complete list , since it is not iterative no need for caching or more handling
 *
 *  @param dictionary deseralzied json data
 *
 *  @return MWBListNetwork with items filled 
 */
+ (MWBListNetworkItem*) listWithDictionary:(NSDictionary*)dictionary;
@end
