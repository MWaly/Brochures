//
//  MWBList.m
//  Brochures
//
//  This will be the holder of all the data retrieved from network
//
//  Created by Mokhles on 01/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBList : NSObject

// sectors associated with list
@property (nonatomic , copy) NSArray* sectors;

/**
 *    App data for a list object
 */

+ (MWBList*)listWithSectorsArray:(NSArray*)sectors;
@end
