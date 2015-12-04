//
//  CRUDeviceID.m
//  godtools
//
//  Created by Michael Harrison on 11/19/15.
//  Copyright © 2015 Michael Harrison. All rights reserved.
//

#import "CRUDeviceID.h"
#import "UICKeyChainStore.h"

@implementation CRUDeviceID

+ (NSString *)UUIDString {
	
	UICKeyChainStore *keychain = [UICKeyChainStore keyChainStoreWithService:@"org.cru.shared.deviceid"
																accessGroup:@"DQ48D9BF2V.org.cru.shared"];
	keychain.synchronizable = NO;
	
	
	NSError *error;
	NSString *keychainDeviceID = [keychain stringForKey:@"deviceid" error:&error];
	NSString *deviceID = keychainDeviceID;
	
	if (!keychainDeviceID) {
		deviceID = [UIDevice currentDevice].identifierForVendor.UUIDString;
	}
	
	if (!error && !keychainDeviceID) {
		[keychain setString:deviceID forKey:@"deviceid" error:&error];
	}
	
	return deviceID;
}

@end
