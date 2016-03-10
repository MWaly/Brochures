//
//  MWBListPresenter.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListPresenter.h"
#import "MWBDisplayableSectorsContainer.h"

@implementation MWBListPresenter

- (void)foundBrouchers:(NSArray *)brochures
{
    if ([brochures count]==0)
    {
        [self.userInterface showNetworkErrorMessage];
    }
    else
    {
        [self.userInterface showDataForList:[MWBDisplayableSectorsContainer displayableSectorsFromArray:brochures]];
    }
}

- (void) getBrochures
{
    [self.listInteractor findBrouchers];
}

- (void)updateList
{
    [self getBrochures];
}
@end
