//
//  MWBListUserInterface.h
//  Brochures
//
//  This is the protocol which will be interfacing with presenter layer
//
//  Created by Mokhles on 04/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MWBDisplayableSectorsContainer;


// Defines the public interface that something else can use to drive the user interface
@protocol MWBListUseViewInterface <NSObject>

- (void) showNetworkErrorMessage;
- (void) showDataForList:(MWBDisplayableSectorsContainer*)sections;

@end