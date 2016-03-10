//
//  MWBListWireFrame.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListWireFrame.h"
#import "MWBListViewController.h"
#import "MWBListPresenter.h"
#import "MWBRootWireFrame.h"

@implementation MWBListWireFrame

- (void) presentListInterfaceFrom:(UIWindow*)window
{
    MWBListViewController *listViewController = [self listViewControllerFromStoryboard];
    self.listPresenter.userInterface = listViewController;
// add presneter here
    
    listViewController.moduleEventHandler = self.listPresenter;
    [self.rootWireframe showRootViewController:listViewController
                                      inWindow:window];
}

- (MWBListViewController *)listViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    MWBListViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"listVC"];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
