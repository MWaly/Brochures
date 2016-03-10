//
//  MWBListPresenter.h
//  Brochures
//
//   The presenter will make the interacitons between the bussiness logic controller (interactor) and  view layers , also navigation controller will be passed to the wireframe from here
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWBListInteractorIO.h"
#import "MWBListWireFrame.h"
#import "MWBListModuleInterface.h"
#import "MWBListUserInterface.h"
@interface MWBListPresenter : NSObject <MWBListInteractorOutput , MWBListModuleInterface>

@property (nonatomic , strong) MWBListWireFrame * listWireFrame;
@property (nonatomic , strong) id <MWBListInteractorInput> listInteractor;
@property (nonatomic, strong) UIViewController<MWBListUseViewInterface> *userInterface;

@end
