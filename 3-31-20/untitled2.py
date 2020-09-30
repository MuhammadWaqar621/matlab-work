

class LibraryItem:
    def __init__(self,ID="",year="",title=""):
        self.ID=ID
        self.year=year
        self.title=title
    def getLoanPeroid(self):
        return 0
    
class Book(LibraryItem):
    def __init__(self,author,electroinc):
        self.author=author
        self.electroinc=electroinc
    def getLoanPeroid(self):
        if (self.year<2000):
            return 14
        else:
            return 7
class DVD(LibraryItem):
    def __init__(self,length,HD):
        self.length=length
        self.HD=HD
    def getLoanPeroid(self):
        if (self.HD):
            return 5
        else:
            return 14
    