# -*- coding: utf-8 -*-
"""
Created on Tue Mar 31 14:56:55 2020

@author: waqar
"""
class Phone:
    name=""
    phoneNum=""
    __Balance=""
    def __init__(self,name="",phoneNum="",Balance=0.0):
        self.name=name
        self.phoneNum=phoneNum 
        self.__Balance=Balance
    def setName(self,name):
        self.name=name
    def setNum(self,phoneNum):
        self.phoneNum=phoneNum
    def setBal(self,bal):
        self.__Balance=bal
    # method to add balance     
    def addBalance(self,newBal):
        # updating balance         
        self.__Balance=self.__Balance+newBal 
        # Returning total balance         
        return self.__Balance
    def reduceBalance(self,newBal):
        # updating balance         
        self.__Balance=self.__Balance-newBal
        # If balance below 10         
        if(self.__Balance<10):
            print("Note: Balance Below AED 10")
        else:
            print("You reduced but still ou did not reach 10")
            # Returning total balance         
            return self.__Balance
        
# creating class instance 
myPhone = Phone() 
# setting attributes by calling methods 
myPhone.setName("Galaxy") 
myPhone.setNum("+971507934562") 
myPhone.setBal(3)
# creating class instance with arguments 
yourPhone = Phone("Ahmed", "+971557924562",54.0)
# adding balance to myPhone 
myPhoneRemaining = myPhone.addBalance(10) 
print(myPhoneRemaining)
# reducing balance to yourPhone 
yourPhoneRemaining = yourPhone.reduceBalance(50) 
print(yourPhoneRemaining)

