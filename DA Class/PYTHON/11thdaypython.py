# class employee:
#     def __init__(self,id,name,salary):
#         self.emp_id=id
#         self.emp_name=name
#         self.emp_salary=salary

# obj1=employee(101,"shibin",50000)
# obj2=employee(102,"kuriakose",70000)
# print(obj1.emp_name)
# print(obj2.emp_name)


# class employee:
#     def __init__(self,id,name,salary):
#         self.emp_id=id
#         self.emp_name=name
#         self.emp_salary=salary
#     def get_function(self):
#         print(self.emp_id,self.emp_name,self.emp_salary)

# obj1=employee(101,"shibin",50000)
# obj2=employee(102,"kuriakose",70000)
# obj1.get_function()
# obj2.get_function()

# class employee:
#     def __init__(self,id,name,salary):
#         self.emp_id=id
#         self.emp_name=name
#         self.emp_salary=salary
#     def get_function(self):
#         print(self.emp_id,self.emp_name,self.emp_salary)

# obj1=employee(101,"shibin",50000)
# obj2=employee(102,"kuriakose",70000)
# obj1.emp_id="501"
# obj2.emp_name="jibin"  # FOR ADDING
# del obj1.emp_name      #FOR DELETE
# obj1.get_function()
# obj2.get_function()

# INHERITANCE

# class students:
#     def __init__(self,name,age,std):
#         self.name=name
#         self.age=age
#         self.std=std
#     def printname(self):
#         print(self.name,self.age,self.std)
# class department(students):
#     pass
# a=department("shibin",23,"8C")
# a.printname()


# class students:
#     def __init__(self,name,age,std):
#         self.name=name
#         self.age=age
#         self.std=std
#     def printname(self):
#         print(self.name,self.age,self.std)
# class department(students):
#     def __init__(self, name, age, std):
#         students.__init__(self, name, age, std)
# a=department("shibin",23,"8C")
# d=department("jibin",26,"8A")
# a.printname()
# d.printname()

# class person:     #EROORRR
#     def __init__(self,fname,lname):
#         self.fname=fname
#         self.lname=lname
#     def individual(self):
#         printname(self.fname,self.lname)
# class student(person):
#      def __init__(self,fname, lname,middle):
#         person.__init__(self,fname, lname)
#         self.middle=middle
#      def__init(self):
#         printname(self.middle)
# a=student("joshua","peter","kk")
# a.printname()
# a.printname2()

