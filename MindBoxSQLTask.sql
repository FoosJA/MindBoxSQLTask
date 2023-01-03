--�������� ��
CREATE DATABASE MaindBoxDB;
--�������� ������
Create table Products
( 
	Id INT NOT NULL CONSTRAINT primary_id_Product PRIMARY KEY IDENTITY (0,1),
	Name CHAR(30) NOT NULL
)

Create table Categories
( 
	Id INT NOT NULL CONSTRAINT primary_id_Category PRIMARY KEY IDENTITY (0,1),
	Name CHAR(30) NOT NULL
)

Create table ProductsCategories
( 
	ProductId INT NOT NULL CONSTRAINT foreign_product FOREIGN KEY REFERENCES Products (Id), 
	CategoriesId INT NOT NULL CONSTRAINT foreign_category FOREIGN KEY REFERENCES Categories (Id)
)

--���������� ������
INSERT INTO Products ("Name") VALUES('������')
INSERT INTO Products ("Name") VALUES('�����')
INSERT INTO Products ("Name") VALUES('��������')
INSERT INTO Products ("Name") VALUES('�����')

INSERT INTO Categories ("Name") VALUES('�������')
INSERT INTO Categories ("Name") VALUES('�������')
INSERT INTO Categories ("Name") VALUES('�������')

INSERT INTO ProductsCategories (ProductId, CategoriesId) VALUES('0', '0')
INSERT INTO ProductsCategories (ProductId, CategoriesId) VALUES('0', '2')
INSERT INTO ProductsCategories (ProductId, CategoriesId) VALUES('1', '1')
INSERT INTO ProductsCategories (ProductId, CategoriesId) VALUES('2', '2')

--����� ���� ��� "��� �������� - ��� ���������"
SELECT Products.Name, Categories.Name
from Products
LEFT JOIN ProductsCategories on ProductsCategories.ProductId = Products.Id
LEFT JOIN Categories on ProductsCategories.CategoriesId = Categories.Id
