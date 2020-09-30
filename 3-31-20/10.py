# -*- coding: utf-8 -*-
"""
Created on Tue Mar 31 15:11:34 2020

@author: waqar
"""

class s:
    def __inti__(self):
        self.name=""
    def setN(self,n):
        self.name=n
    def get(self):
        return self.name
s1=s()
s1.setN("samir")
print (s1.__doc__)