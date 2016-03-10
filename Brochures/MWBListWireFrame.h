//
//  MWBListWireFrame.h
//  Brochures
//
//  This respionsible for carrying out all the routing and presentation of list
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import  <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MWBListPresenter;
@class MWBRootWireFrame;
@class MWBListViewController;

@interface MWBListWireFrame : NSObject

@property (nonatomic, strong) MWBListPresenter *listPresenter;
@property (nonatomic, strong) MWBRootWireFrame *rootWireframe;

/**
 *  presenting the list
 *
 *  @param window window presneted from
 */
- (void) presentListInterfaceFrom:(UIWindow*)window;

@end
