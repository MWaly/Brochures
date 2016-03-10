//
//  MWBSectorNetworkItem.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBSectorNetworkItem.h"
#import "MWBBrochureNetworkItem.h"

@interface MWBSectorNetworkItem ()

@property (nonatomic , copy ,   readwrite) NSString*  identfier;
@property (nonatomic , copy ,   readwrite) NSString*  urlString;
@property (nonatomic , copy ,   readwrite) NSString*  name;
@property (nonatomic , strong , readwrite) NSArray* brochures;

@end


@implementation MWBSectorNetworkItem

#pragma mark - Initalizing Methods
+ (MWBSectorNetworkItem*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochures:(NSArray*)brochures
{
    
    MWBSectorNetworkItem *sector = [[MWBSectorNetworkItem alloc]init];
    
    sector.identfier = identfier;
    sector.urlString = urlString;
    sector.name=name;
    
    NSMutableArray* brochuresMutableArray = [@[]mutableCopy];
    //TODO: safe nil value checker for brochure dictionary objects
    
    for (NSDictionary*brochureDict in brochures) {
        [brochuresMutableArray addObject:[MWBBrochureNetworkItem brochureWithURLString:brochureDict[@"coverUrl"] title:brochureDict[@"title"] retailerName:brochureDict[@"retailerName"]]];
    }
    sector.brochures= [NSArray arrayWithArray:brochuresMutableArray];
    
    return sector;
}

#pragma mark - DEBUG -

- (NSString *)description
{
    return [NSString stringWithFormat:@"MWBSector with id %@  url string %@ name %@ brochures count%li",self.identfier,self.urlString,self.name, self.brochures.count];
}

- (BOOL)isEqual:(id)object
{
    if (![object isMemberOfClass:[self class]]) {
        return NO;
    }
    else
    {
        MWBSectorNetworkItem* sectorToCompare=(MWBSectorNetworkItem*)object;
        return [self.identfier isEqualToString:sectorToCompare.identfier];
    }
}
@end
