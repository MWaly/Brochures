//
//  MWBListInteractor.m
//  Brochures
//
//   This will contain all the business logic here  , will collect data needed from the data stores and forward results to presenter through delegate method
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListInteractor.h"
#import "MWBListDataManager.h"

@interface MWBListInteractor ()

@property (nonatomic, strong , readwrite)     MWBListDataManager *dataManager;

@end
@implementation MWBListInteractor

#pragma mark - Initalising - 

+  (MWBListInteractor*) listInteractorWithDataManager:(MWBListDataManager*) dataManager
{
    MWBListInteractor* listInteractor = [[MWBListInteractor alloc]init];
    listInteractor.dataManager=dataManager;
    return listInteractor;
}

#pragma mark -  I/O calls
- (void)findBrouchers
{
    __weak typeof(self) welf = self;
    [self.dataManager  sectorFromLiveServerWithCompletionBlock:^(NSArray *sectors) {
    // applying the sorting business requirement here
        
    [welf.output foundBrouchers:[welf sortArray:sectors]];
}];
}

- (NSArray*) sortArray:(NSArray*) arrayToSort
{
    NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
  NSArray* returnValue =  [arrayToSort sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    return returnValue;
    
}
@end
