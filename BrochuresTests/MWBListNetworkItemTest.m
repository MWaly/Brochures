//
//  MWBListNetworkItemTest.m
//  Brochures
//
//  Created by Mokhles on 08/03/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MWBListNetworkItem.h"
#import "MWBSectorNetworkItem.h"
@interface MWBListNetworkItemTest : XCTestCase

@property (nonatomic , strong) MWBListNetworkItem* listItem ;
@end

@implementation MWBListNetworkItemTest

- (void)setUp {
    [super setUp];
    self.listItem=[MWBListNetworkItem listWithDictionary:@{@"sectors":@[@{@"id":@78992 , @"brochures":@[@{@"coverUrl":@"http://imageTest",@"id":@3232,@"title":@"fun savings", @"retailerName":@"Walmart"},@{@"coverUrl":@"http://imageTest2",@"id":@3e32,@"title":@"fun savings2", @"retailerName":@"Walmar2t"}],@"url":@"httpSectorImage",@"name":@"Sector1"},@{@"id":@992 , @"brochures":@[@{@"coverUrl":@"http://imageTest4",@"id":@232,@"title":@"fun ", @"retailerName":@"OTTO"},@{@"coverUrl":@"http://imageTestddd",@"id":@32,@"title":@"fun 2", @"retailerName":@"Walmar2t"}],@"url":@"httpSectorImage",@"name":@"Sector1"}]}];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSectorsCount
{
    XCTAssertEqual(self.listItem.sectors.count, (NSUInteger)2, @"Wrong array size.");


}

- (void)testSectorType
{
    XCTAssert([[self.listItem.sectors firstObject] isKindOfClass:[MWBSectorNetworkItem class]]);

}




@end
