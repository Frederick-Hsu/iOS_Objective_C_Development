/**************************************************************************************************
 * File name    : MasterViewController.h
 * Description  : Create a new Cocoa class MasterViewController, which inherited from 
 *              : NSViewController parent class.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef MASTERVIEWCONTROLLER_H
#define MASTERVIEWCONTROLLER_H


    #import <Cocoa/Cocoa.h>

    @interface MasterViewController : NSViewController

        @property (nonatomic, strong)NSMutableArray *bugs;

    @end


#endif  /* MASTERVIEWCONTROLLER_H */
