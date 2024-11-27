CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100)
);

-- Создание таблицы категорий
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(100)
);

-- Создание таблицы для связи продуктов и категорий
CREATE TABLE ProductCategories (
    ProductID INT,
    CategoryID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Вставка данных в таблицу продуктов
INSERT INTO Products (ProductID, ProductName) VALUES
(1, 'Товар A'),
(2, 'Товар B'),
(3, 'Товар C'),
(4, 'Товар D');

-- Вставка данных в таблицу категорий
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Категория 1'),
(2, 'Категория 2');

-- Вставка данных в таблицу связей
INSERT INTO ProductCategories (ProductID, CategoryID) VALUES
(1, 1),
(1, 2),
(2, 1);


SELECT
    p.ProductName AS ИмяПродукта,
    c.CategoryName AS ИмяКатегории
FROM
    Products p
        LEFT JOIN
    ProductCategories pc ON p.ProductID = pc.ProductID
        LEFT JOIN
    Categories c ON pc.CategoryID = c.CategoryID
ORDER BY
    p.ProductName, c.CategoryName;