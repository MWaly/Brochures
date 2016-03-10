//
//  MWBListDataManager.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListDataManager.h"
#import "MWBWebDataStore.h"
#import "MWBListNetworkItem.h"
#import "MWBList.h"
@implementation MWBListDataManager


#pragma mark - Data Fetchers -

- (void) sectorFromLiveServerWithCompletionBlock:(void (^)(NSArray *sectors))completionBlock
{
    [self.dataStore fetchEnteriesWithCompletionBlock:^(MWBListNetworkItem *list) {
        
        MWBList* listAppModel = [MWBList listWithSectorsArray:list.sectors];
         completionBlock(listAppModel.sectors);
    }];
}
@end
