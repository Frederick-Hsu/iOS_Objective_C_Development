/* File name    : protocols.m
 * Description  : Define some user protocols here
 *
 */

@protocol NSCoding

- (void)encodeWithCoder:(NSCoder*)cCoder;
- (id)initWithCoder:(NSCoder*)aDecoder;

@end