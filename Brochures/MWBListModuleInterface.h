//
//  MWBListModuleInterface.h
//  Brochures
//
//  Created by Mokhles on 05/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MWBDisplayableSectorsContainer;


// Defines the public interface that something else can use to drive the user interface
@protocol MWBListModuleInterface <NSObject>

- (void) updateList;
@end