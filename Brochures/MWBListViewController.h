//
//  ViewController.h
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWBListUserInterface.h"
#import "MWBListModuleInterface.h"
@interface MWBListViewController : UIViewController<MWBListUseViewInterface>


@property (nonatomic, weak) id<MWBListModuleInterface>    moduleEventHandler;

@end

