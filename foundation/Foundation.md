### Objective-C Foundation framework hierarchy
***
- **Value Objects**
`NSData`	`NSMutableData`
`NSDate`	`NSCalenderDate`
`NSNull`
`NSTimeZone` `NSCalendar`	`NSLocale`
`NSValue`	`NSNumber`		`NSDecimalNumber`

- **String**
`NSAttributedString`	`NSMutableAttributedString`
`NSString`	`NSMutableString`
`NSFormatter`	`NSDateFormatter`	`NSNumberFormatter`
`NSScanner`

- **Collection**
`NSArray`	`NSMutableArray`
`NSCharacterSet`		`NSMutableCharacterSet`
`NSDictionary`	`NSMutableDictionary`
`NSEnumerator`	`NSDictionaryEnumerator`
`NSSet`		`NSMutableSet`	`NSCountedSet`

- **Operating system services**
`NSError` 
`NSHost`	
`NSProcessInfo`	
`NSNetService`
`NSNetServiceBrowser`
`NSRunLoop`	
`NSSpellServer`	
`NSTimer`	
`NSUserDefaults`

- **File system**
`NSBundle`	
`NSFileHandle`	
`NSFileManager`
`NSStream` ---- `NSInputStream` `NSOutputStream`

- **URL**
`NSURL`		
`NSURLHandle`
`NSHTTPCookie`
`NSCachedURLResponse`
`NSURLCache`
`NSURLConnection`
`NSURLCredential`
`NSURLCredentialStorage`
`NSURLDownload`
`NSURLProtectionSpace`

- **Interproces communication**
`NSPipe`
`NSPort`		`NSMatchPort`	`NSMessagePort`		`NSSocketPort`
`NSPortMessage`
`NSPortNameServer`	`NSMatchBootstrapServer`	`NSMessagePortNameServer`	`NSSocketPortNameServer`

- **Locking/Threading**
`NSConditionLock`	
`NSDistributedLock`
`NSLock`
`NSRecursiveLock`
`NSTask`
`NSThread`

- **Notification**
`NSNotification`
`NSNotificationCenter`	`NSDistributedNotificationCenter`
`NSNotificationQueue`

- **Archiving and Serialization**
`NSCoder` --- `NSArchiver`	`NSKeyedArchiver`	`NSKeyedUnarchiver`	`NSPortCoder`	`NSUnarchiver`
`NSPropertySerialization`

- **Objective-C Language Services**
`NSAssertionHandler`
`NSAutoreleasePool`
`NSException`
`NSClassDescription`
`NSInvocation`

- **Scripting**
`NSAppleScript`
`NSAppleEventDescriptor`
`NSAppleEventManager`
`NSScriptCommand`
`NSScriptCommandDescription`
`NSScriptExecutionContext`

- **Distributed Objects**
`NSConnection`
`NSDistantObjectRequest`

- **NSProxy**
`NSDistandObject`
`NSProtocolChecker`
