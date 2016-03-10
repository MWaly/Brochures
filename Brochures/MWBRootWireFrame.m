//
//  MWBRootWireFrame.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBRootWireFrame.h"

@implementation MWBRootWireFrame
- (void)showRootViewController:(UIViewController *)viewController
                      inWindow:(UIWindow *)window
{
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    navigationController.viewControllers = @[viewController];
}


- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    
    return navigationController;
}

@end
