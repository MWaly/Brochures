//
//  MWBListInteractorIO.h
//  Brochures
//
//  Created by Mokhles on 29/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MWBListInteractorInput <NSObject>
/**
 *  Protocol to be called to invoke sectors calling
 */
- (void)findBrouchers;

@end

@protocol MWBListInteractorOutput <NSObject>

- (void)foundBrouchers:(NSArray *)brochures;
@end