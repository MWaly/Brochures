//
//  MWBList.m
//  Brochures
//
//  This will be the holder of all the data hilding sectors after adapting it to application model
//
//  Created by Mokhles on 01/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBList.h"
#import "MWBSectorNetworkItem.h"
#import "MWBSector.h"

@implementation MWBList

+ (MWBList*)listWithSectorsArray:(NSArray*)sectors
{
    
    MWBList *list = [[MWBList alloc]init];
    NSMutableArray* appProcessedSectorsListArray = [@[]mutableCopy];
    
    for (MWBSectorNetworkItem* sector in sectors)
    {
        [appProcessedSectorsListArray addObject:[MWBSector sectorWithIdentfier:sector.identfier urlString:sector.urlString name:sector.name brochures:sector.brochures ]];
    }
    

    list.sectors=[NSArray arrayWithArray:appProcessedSectorsListArray];
    
    return list;
}
@end
