//
//  MWBWebDataStore.m
//  Brochures
//
//  This is responsible for carrying network operations to fetch data from the server 
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBWebDataStore.h"
#import "MWBConstants.h"
#import "MWBListNetworkItem.h"

@interface MWBWebDataStore() <NSURLConnectionDelegate>

@property (nonatomic , strong) NSURLSession *defaultSession;
@property (nonatomic , strong) NSURLSessionDataTask *dataTask;

@end
@implementation MWBWebDataStore



- (void) fetchEnteriesWithCompletionBlock:(void (^)(MWBListNetworkItem *sectors))completionBlock
{

    self.defaultSession =  [NSURLSession  sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:MWBDataEndPoint ];
    
    // TODO: indicate that network activity started here
    

    self.dataTask = [self.defaultSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
        //TODO: halt thte network activity
        
        
        if (error) {
            NSLog(@"Error occured here with description %@",[error localizedDescription]);
            //TODO: display error message to the user  with proper error domain description
        }
        // introspecting and acting accordingly
        else if( [response isMemberOfClass: [NSHTTPURLResponse class] ])
        {
            NSHTTPURLResponse *urlResponse = (NSHTTPURLResponse*)response;
            if ([urlResponse statusCode]>=200 && [urlResponse statusCode] <300) {
                // it falls in success category
                //TODO: send to status code handler to detect proper response , for now consider it as 200
                // now parse the data
           completionBlock([MWBListNetworkItem listWithDictionary:[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil]]);
                
            }
        }

        //TODO: handler for other cases
        
    }];
    
    [self.dataTask resume];

}

@end
