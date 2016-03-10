//
//  MWBSector.m
//  Brochures
//
//  This is the entity reposible for sectors retrieved ffrom backend
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBSector.h"
#import "MWBBrochure.h"
#import "MWBBrochureNetworkItem.h"

@interface MWBSector ()
@property (nonatomic , copy ,   readwrite) NSString*  identfier;
@property (nonatomic , copy ,   readwrite) NSString*  urlString;
@property (nonatomic , copy ,   readwrite) NSString*  name;
@property (nonatomic , strong , readwrite) NSArray* brochures;
@end

@implementation MWBSector


#pragma mark - Initalizing Methods

+ (MWBSector*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochures:(NSArray*)brochures
{
    
    MWBSector *sector = [[MWBSector alloc]init];
    
    sector.identfier = identfier;
    sector.urlString = urlString;
    sector.name=name;
    
    NSMutableArray* brochuresMutableArray = [@[]mutableCopy];
    //TODO: safe nil value checker for brochure dictionary objects
    
    for (MWBBrochureNetworkItem *brochureNetworkItem in brochures) {
        [brochuresMutableArray addObject:[MWBBrochure brochureWithURLString:brochureNetworkItem.urlString title:brochureNetworkItem.title retailerName:brochureNetworkItem.retailerName ]];
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
        MWBSector *sectorToCompare=(MWBSector*)object;
        return [self.identfier isEqualToString:sectorToCompare.identfier];
    }
}

@end
