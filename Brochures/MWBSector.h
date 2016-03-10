//
//  MWBSector.h
//  Brochures
//
//  This is the entity reposible for sectors retrieved ffrom backend
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBSector : NSObject

/**
 *  Properties of application data model represnting sector
 */
@property (nonatomic , copy  ,   readonly)  NSString*  identfier;
@property (nonatomic , copy  ,   readonly)  NSString*  urlString;
@property (nonatomic , copy  ,   readonly)  NSString*  name;
@property (nonatomic , strong ,  readonly)  NSArray* brochures;


/**
 *  Responsible for returning an application data model filled sector objects
 *
 *  @param identfier id of the sector
 *  @param urlString url tot he image
 *  @param name      name of the sector
 *  @param brochures brochures array linked to this sector
 *
 *  @return sector with necessary data filled
 */
+ (MWBSector*) sectorWithIdentfier:(NSString*)identfier urlString:(NSString*)urlString name:(NSString*) name  brochures:(NSArray*)brochures;
@end
