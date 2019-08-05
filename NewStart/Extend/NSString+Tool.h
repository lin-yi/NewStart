//
//  NSString+Tool.h
//  NewStart
//
//  Created by 林一 on 2019/7/10.
//  Copyright © 2019 Kangjiedeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Tool)

- (NSData*)hexToBytes;

- (NSData*)stringToByte;

void HexStrToByte(const char* source, unsigned char* dest, int sourceLen);

@end

NS_ASSUME_NONNULL_END
