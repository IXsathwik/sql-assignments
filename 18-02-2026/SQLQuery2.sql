CREATE TABLE restaurants (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(150) NOT NULL,
    description VARCHAR(500),
    is_active BIT DEFAULT 1,         
    is_open BIT DEFAULT 0,           
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
);


CREATE TABLE categories (
    id INT PRIMARY KEY IDENTITY(1,1),
    restaurant_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(300),
    is_active BIT DEFAULT 1,
    display_order INT DEFAULT 0,
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),

    CONSTRAINT fk_category_restaurant
        FOREIGN KEY (restaurant_id)
        REFERENCES restaurants(id)
);


CREATE TABLE menu_items (
    id INT PRIMARY KEY IDENTITY(1,1),
    restaurant_id INT NOT NULL,
    category_id INT NOT NULL,

    name VARCHAR(150) NOT NULL,
    description VARCHAR(1000),
    image_url VARCHAR(500),

    food_type VARCHAR(10) CHECK (food_type IN ('VEG','NON_VEG','EGG')),

    price DECIMAL(10,2) NOT NULL,
    special_price DECIMAL(10,2) NULL,

    preparation_time INT NOT NULL,  

    is_available BIT DEFAULT 1,
    is_out_of_stock BIT DEFAULT 0,
    is_deleted BIT DEFAULT 0,        

    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),

    CONSTRAINT fk_item_restaurant
        FOREIGN KEY (restaurant_id)
        REFERENCES restaurants(id),

    CONSTRAINT fk_item_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
);


CREATE TABLE item_price_history (
    id INT PRIMARY KEY IDENTITY(1,1),
    item_id INT NOT NULL,
    old_price DECIMAL(10,2),
    new_price DECIMAL(10,2),
    changed_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (item_id) REFERENCES menu_items(id)
);



INSERT INTO restaurants (name, description, is_active, is_open)
VALUES 
('Spice Villa', 'Authentic Indian Cuisine', 1, 1),
('Urban Bites', 'Modern Fast Food & Desserts', 1, 0);


INSERT INTO categories (restaurant_id, name, description, is_active, display_order)
VALUES
(1, 'Starters', 'Appetizers and small bites', 1, 1),
(1, 'Main Course', 'Main dishes', 1, 2),
(2, 'Desserts', 'Sweet dishes', 1, 1),
(2, 'Beverages', 'Drinks and coolers', 1, 2);


INSERT INTO menu_items 
(restaurant_id, category_id, name, description, image_url, food_type, price, special_price, preparation_time, is_available, is_out_of_stock, is_deleted)
VALUES


(1, 1, 'Paneer Tikka', 'Grilled paneer cubes with spices', 'paneer.jpg', 'VEG', 250.00, 220.00, 20, 1, 0, 0),

(1, 2, 'Chicken Biryani', 'Hyderabadi style biryani', 'biryani.jpg', 'NON_VEG', 350.00, NULL, 30, 1, 0, 0),


(2, 3, 'Chocolate Brownie', 'Rich chocolate brownie with nuts', 'brownie.jpg', 'VEG', 180.00, 150.00, 15, 0, 1, 0),

(2, 4, 'Cold Coffee', 'Chilled coffee with ice cream', 'coffee.jpg', 'VEG', 120.00, NULL, 10, 1, 0, 0);



INSERT INTO item_price_history (item_id, old_price, new_price)
VALUES
(1, 240.00, 250.00),
(3, 170.00, 180.00);









INSERT INTO restaurants (name, description, is_active, is_open)
VALUES
('Royal Tandoor', 'Premium North Indian Restaurant', 1, 1),
('Healthy Bowl', 'Salads and Diet Meals', 0, 0);  



INSERT INTO categories (restaurant_id, name, description, is_active, display_order)
VALUES
(1, 'Desserts', 'Sweet dishes', 1, 3),

(3, 'Starters', 'Tandoor starters', 1, 1),
(3, 'Main Course', 'Signature dishes', 1, 2),
(3, 'Desserts', 'Indian sweets', 1, 3),

(4, 'Salads', 'Healthy salads', 1, 1),
(4, 'Protein Bowls', 'High protein meals', 1, 2);




INSERT INTO menu_items 
(restaurant_id, category_id, name, description, image_url, food_type, price, special_price, preparation_time, is_available, is_out_of_stock, is_deleted)
VALUES


(1, 1, 'Veg Manchurian', 'Crispy vegetable balls in sauce', 'manchurian.jpg', 'VEG', 220.00, NULL, 18, 1, 0, 0),
(1, 3, 'Gulab Jamun', 'Soft milk-solid sweet', 'gulab.jpg', 'VEG', 90.00, NULL, 10, 1, 0, 0),
(1, 2, 'Egg Curry', 'Spicy egg gravy', 'egg_curry.jpg', 'EGG', 240.00, 210.00, 25, 1, 0, 0),


(2, 3, 'Ice Cream Sundae', 'Vanilla ice cream with toppings', 'sundae.jpg', 'VEG', 150.00, NULL, 8, 1, 0, 0),
(2, 4, 'Strawberry Milkshake', 'Fresh strawberry shake', 'shake.jpg', 'VEG', 130.00, NULL, 12, 0, 1, 0),


(3, 5, 'Tandoori Chicken', 'Charcoal grilled chicken', 'tandoori.jpg', 'NON_VEG', 480.00, 450.00, 35, 1, 0, 0),
(3, 6, 'Butter Naan', 'Soft butter naan bread', 'naan.jpg', 'VEG', 60.00, NULL, 10, 1, 0, 0),
(3, 6, 'Paneer Butter Masala', 'Creamy paneer gravy', 'pbm.jpg', 'VEG', 320.00, 300.00, 25, 1, 0, 0),
(3, 7, 'Rasmalai', 'Bengali sweet dish', 'rasmalai.jpg', 'VEG', 140.00, NULL, 12, 1, 0, 0),


(4, 8, 'Greek Salad', 'Fresh vegetables with feta cheese', 'greek.jpg', 'VEG', 200.00, NULL, 10, 1, 0, 0),
(4, 9, 'Grilled Chicken Bowl', 'High protein meal bowl', 'bowl.jpg', 'NON_VEG', 350.00, NULL, 20, 1, 0, 0),

(3, 5, 'Old Starter Dish', 'Removed from menu', 'old.jpg', 'VEG', 100.00, NULL, 10, 0, 0, 1);



INSERT INTO item_price_history (item_id, old_price, new_price)
VALUES
(6, 200.00, 220.00),
(9, 450.00, 480.00),
(11, 310.00, 320.00),
(14, 130.00, 140.00);








select * from menu_items where is_out_of_stock=1 or is_available=0 or is_deleted=1;


select c.name as  category_name,m.* from categories c join menu_items m 
on c.id = m.category_id where c.name = 'Desserts' and c.is_active=1 and is_deleted=0;


select c.name,count(m.id) as cat_item_cnt from categories c join menu_items m on c.id = m.category_id
where c.restaurant_id=2 and c.is_active=1 and m.is_deleted=0 group by c.name ;


select r.name as restuarent_name,m.*,h.* from restaurants r join menu_items m on r.id=m.restaurant_id 
 left join item_price_history h on m.id = h.item_id where r.id =3 and r.is_active=1 and is_deleted=0;


select top 5 * from menu_items where restaurant_id=3 and is_deleted=0 order by price desc;




select * from restaurants;
select * from categories;
select * from menu_items;
select * from item_price_history ;