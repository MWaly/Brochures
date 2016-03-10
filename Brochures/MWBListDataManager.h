//
//  MWBListDataManager.h
//  Brochures
//
//   This is the data manager responsible for list module where data will be retrieved , cached and forwarded
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MWBWebDataStore;

@interface MWBListDataManager : NSObject

@property (nonatomic, strong) MWBWebDataStore *dataStore;

/**
 *  This will invoke network method to fetch enteries live
 *
 *  @param completionBlock block with array of fetched sectors
 */
- (void) sectorFromLiveServerWithCompletionBlock:(void (^)(NSArray *sectors))completionBlock;
@end
