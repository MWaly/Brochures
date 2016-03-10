//
//  MWBDisplayableSectorsContainer.h
//  Brochures
//
//  Created by Mokhles on 04/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBDisplayableSectorsContainer : NSObject


@property (nonatomic , readonly  , copy) NSArray* sectors;

@property (nonatomic , readonly  , copy) NSDictionary* brochures;

/**
 *  array containg all sectors with view adapted items
 *
 *  @param sectors sectors to display
 *
 *  @return object filled with secots displayble data
 */
+ (MWBDisplayableSectorsContainer*) displayableSectorsFromArray:(NSArray*)sectors;
@end
