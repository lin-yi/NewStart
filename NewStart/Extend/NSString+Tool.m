//
//  NSString+Tool.m
//  NewStart
//
//  Created by 林一 on 2019/7/10.
//  Copyright © 2019 Kangjiedeng. All rights reserved.
//

#import "NSString+Tool.h"

@implementation NSString (Tool)


-(NSData*)hexToBytes{
    NSMutableData* data = [NSMutableData data];
    int index;
    for (index = 0; index+2 <= self.length; index+=2) {
        NSRange range = NSMakeRange(index, 2);
        NSString *hexStr = [self substringWithRange:range];
        NSScanner *scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    return data;
}

// 第一个方法
- (NSData*)stringToByte
{
    NSString *hexString=[[self uppercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([hexString length]%2!=0) {
        return nil;
    }
    Byte tempbyt[1]={0};
    NSMutableData* bytes=[NSMutableData data];
    for(int i=0;i<[hexString length];i++)
    {
        unichar hex_char1 = [hexString characterAtIndex:i];
        int int_ch1;
        if(hex_char1 >= '0' && hex_char1 <='9')
            int_ch1 = (hex_char1-48)*16;
        else if(hex_char1 >= 'A' && hex_char1 <='F')
            int_ch1 = (hex_char1-55)*16;
        else
            return nil;
        i++;
        
        unichar hex_char2 = [hexString characterAtIndex:i];
        int int_ch2;
        if(hex_char2 >= '0' && hex_char2 <='9')
            int_ch2 = (hex_char2-48);
        else if(hex_char2 >= 'A' && hex_char2 <='F')
            int_ch2 = hex_char2-55;
        else
            return nil;
        
        tempbyt[0] = int_ch1+int_ch2;
        [bytes appendBytes:tempbyt length:1];
    }
    return bytes;
}


void HexStrToByte(const char* source, unsigned char* dest, int sourceLen)
{
    short i;
    unsigned char highByte, lowByte;
    
    for (i = 0; i < sourceLen; i += 2)
    {
        highByte = toupper(source[i]);
        lowByte  = toupper(source[i + 1]);
        
        if (highByte > 0x39)
            highByte -= 0x37;
        else
            highByte -= 0x30;
        
        if (lowByte > 0x39)
            lowByte -= 0x37;
        else
            lowByte -= 0x30;
        
        dest[i / 2] = (highByte << 4) | lowByte;
    }
    return ;
}


@end
