/**************************************************************************************************
 * File name    : Person.h
 * Description  : Define a class "Person", which should abide by the protocol "MyProtocol".
 * Creator      : Frederick Hsu
 * Creation date: Wed.  07 Sep. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef PERSON_H
#define PERSON_H

    #import <Foundation/Foundation.h>

    #import "MyProtocol.h"

    @interface ProtPerson : NSObject <MyProtocol>

    @end

#endif  /* PERSON_H */