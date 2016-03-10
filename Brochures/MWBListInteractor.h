//
//  MWBListInteractor.h
//  Brochures
//
//  This will contain all the business logic for list related
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWBListInteractorIO.h"
@class     MWBListDataManager;

@interface MWBListInteractor : NSObject <MWBListInteractorInput>

@property (nonatomic, weak)     id<MWBListInteractorOutput> output;

@property (nonatomic, strong , readonly)     MWBListDataManager *dataManager;

/**
 *  creating a list interactor which will contain the necessary business logic
 *
 *  @param dataManager data manager linked for this interactor
 *
 *  @return interactor intialized
 */
+   (MWBListInteractor*) listInteractorWithDataManager:(MWBListDataManager*) dataManager;
@end
