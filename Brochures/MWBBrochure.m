//
//  MWBBrochure.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBBrochure.h"

@interface MWBBrochure ()

@property (nonatomic , copy , readwrite) NSString*  urlString;
@property (nonatomic , copy , readwrite) NSString*  title;
@property (nonatomic , copy , readwrite) NSString*  retailerName;

@end

@implementation MWBBrochure


+ (MWBBrochure*) brochureWithURLString:(NSString*)urlString title:(NSString*)title retailerName:(NSString*)retailerName
{
    MWBBrochure* brochure= [[MWBBrochure alloc]init];
    
    brochure.urlString=urlString;
    brochure.retailerName=retailerName;
    brochure.title=title;
    
    return brochure;

}


#pragma mark - DEBUG -

- (NSString *)description
{
    return [NSString stringWithFormat:@"MWBBrochure with  url string %@ title %@ retailer name%@",self.urlString,self.title, self.retailerName];
}

- (BOOL)isEqual:(id)object
{
    if (![object isMemberOfClass:[self class]]) {
        return NO;
    }
    else
    {
        MWBBrochure* brochureToCompare=(MWBBrochure*)object;
        return [self.title isEqualToString:brochureToCompare.title]&& [self.urlString isEqualToString:brochureToCompare.urlString] && [self.retailerName isEqualToString:brochureToCompare.retailerName];
    }
}

@end
