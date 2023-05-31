

# def fname(fruits):
#     for  x in fruits:
#         print (x)
# fruits=["orange","apple","banana","grapes"]
# fname(fruits)

#RETURN VALUES
# def fname(parameter):
#     return parameter+5
# print(fname(10))

#LAMBDA
#lambda argument : expression

# x=lambda a,b :a+b
# print(x(2,2))

# x=lambda a,b :a+b+c   #expression onnu matre add cheyyan pttu allel error varum
# print(x(2,2))

# x=lambda a,b,c, :a+b
# print(x(2,2,4))

# a=lambda x,y,z : y*z
# print(a(2,3,4))

# def fname(n):
#     return lambda a : a*n
# multiply=fname(2)
# print (multiply(11))

# def fname(n):
#     return lambda a : a*n
# multiply=fname(2)
# mull=fname(7)
# multi=fname(10)
# print (multiply(11))
# print  (mull(2))
# print (multi(4))

#ARRAY

# list=["clt","wynd","tvm","ekm"]
# list.clear()


# list=["clt","wynd","tvm","ekm"]
# list.reverse()
# print(list)


#python and objects

# class myclass:
#     x=10

# class myclass:
#     x=10
# r=myclass()
# print(r.x)

# class focus:
#     h="shibin"
# e=focus()
# print(e.h)


# class person:
#     def __init__(self,name,age):
#         self.name=name
#         self.age=age
# p=person("sarah",22)
# print(p.name)
# print(p.age)

# class person:
#     def __init__(self,name,age):
#         self.name=name
#         self.age=age

#     def __str__(self):
#      return f"{self.name} {self.age}"
# p=person("shibin",23)
# print(p)

# class person:
#     def __init__(self,name,age):
#         self.name=name
#         self.age=age

#     def __str__(self):
#      return f"{self.name} ({self.age})"
# p=person("shibin",23)
# print(p)


# class shibin:
#     sbn=500
# u=shibin()

# print(u.sbn)

# class focus:
#     mall="grand hyper mall"
# floor=focus()
# print(floor.mall)

# class students:
#     def __init__(self,name,rollnum,std):
#         self.name=name
#         self.rollnum=rollnum
#         self.std=std
# sbn=students("shibin",23,"8b")
# print(sbn.name)
# print(sbn.rollnum)
# print(sbn.std)

# class students:
#     def __init__(self,name,age,std):
#         self.name=name
#         self.age=age
#         self.std=std
#     def __str__(self):
#         return f"{self.name} {self.age} {self.std}"
# sbn=students("shibin",23,"8b")
# print(sbn)