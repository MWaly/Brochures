//
//  MWBListNetworkItem.m
//  Brochures
//
//  Created by Mokhles on 06/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListNetworkItem.h"
#import "MWBSectorNetworkItem.h"

@interface MWBListNetworkItem()

@property (nonatomic , readwrite , copy)  NSArray* sectors;

@end
@implementation MWBListNetworkItem

+ (MWBListNetworkItem*)listWithDictionary:(NSDictionary*)dictionary
{
    MWBListNetworkItem* list = [[MWBListNetworkItem alloc]init];
    
    //TODO: nil safe value checking here
    //TODO: NSCoding objects
    NSMutableArray* mutableArrayOfSectors = [@[]mutableCopy];
    
    for (NSDictionary* object in dictionary[@"sectors"]) {
        
        [ mutableArrayOfSectors addObject:[MWBSectorNetworkItem sectorWithIdentfier:[object[@"id"] stringValue] urlString:object[@"url"] name:object[@"name"]  brochures:object[@"brochures"]]];
    }
    list.sectors =[NSArray arrayWithArray:mutableArrayOfSectors];
    
    return list;
}
@end
