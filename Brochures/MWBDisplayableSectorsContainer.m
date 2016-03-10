//
//  MWBDisplayableSectorsContainer.m
//  Brochures
//
//  Created by Mokhles on 04/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBDisplayableSectorsContainer.h"
#import "MWBSectionViewItem.h"
#import "MWBBrochureViewItem.h"
#import "MWBSector.h"
#import "MWBBrochure.h"

@interface MWBDisplayableSectorsContainer ()

@property (nonatomic , readwrite , copy) NSArray* sectors;
@property (nonatomic , readwrite  , copy) NSDictionary* brochures;

@end

@implementation MWBDisplayableSectorsContainer


/**
 *  This method will handle transforming form App Data model to View Data Models
 *
 *  @param sectors sectors app data models retrieved from thelist
 *
 *  @return displayable section container with view models to dsiplay sectiions and brochures
 */
+ (MWBDisplayableSectorsContainer*) displayableSectorsFromArray:(NSArray*)sectors
{
    MWBDisplayableSectorsContainer* displayableDataContainer =  [[MWBDisplayableSectorsContainer alloc]init];
    
    NSMutableArray* mutableArrayOfSectorViewItems = [@[]mutableCopy];
    NSMutableDictionary* dictionaryOfBrochures = [@{}mutableCopy];
    
    for (MWBSector* sector in sectors)
    {
        MWBSectionViewItem* section = [MWBSectionViewItem sectorWithIdentfier:sector.identfier urlString:sector.urlString name:sector.name brochuresCounter:sector.brochures.count];
        [mutableArrayOfSectorViewItems addObject:section];
        NSMutableArray* arrayOfBrochuresForSection = [@[]mutableCopy];
        
        for (MWBBrochure* brochure in sector.brochures)
        {
            MWBBrochureViewItem* viewItem = [MWBBrochureViewItem brochureDisplayItemWithImageURL:brochure.urlString title:brochure.title retailerName:brochure.retailerName];
            [arrayOfBrochuresForSection addObject:viewItem];

        }
        
        dictionaryOfBrochures[sector.identfier]= [NSArray arrayWithArray:arrayOfBrochuresForSection];
    }
    
    displayableDataContainer.sectors = [NSArray arrayWithArray:mutableArrayOfSectorViewItems];
    displayableDataContainer.brochures = [NSDictionary dictionaryWithDictionary:dictionaryOfBrochures];
    
    return displayableDataContainer;
    
}
@end
