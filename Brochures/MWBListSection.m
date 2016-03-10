//
//  MWBListSection.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListSection.h"

@interface MWBListSection ()

//-------------------------------------------------------
//     View Properties                                  *
//-------------------------------------------------------


@end
@implementation MWBListSection

#pragma mark - Initliazors - 

+ (MWBListSection*) listSectionWithTitle:(NSString*)title logo:(UIImage*)imageOfSector countOfBrouchers:(NSUInteger)countOfBrochuers
{
    MWBListSection * listSection = [[MWBListSection alloc]init];
    
    listSection.sectorTitleLabel.text = title;
    listSection.sectorLogo.image = [UIImage imageNamed:@"NA"];
    listSection.sectorBrochuresCounterLabel .text= [@(countOfBrochuers) stringValue];
    
    return listSection;
}

#pragma mark - Debug -

- (NSString *)description
{
    return [NSString stringWithFormat:@"List Section View Object with Title %@",self.sectorTitleLabel.text];
}
@end
