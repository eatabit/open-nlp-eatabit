class Menu

  CATEGORIES        = [
    'Pizza',
    'Pizzas',
    'Sandwiches',
    'Extras',
    'Toppings',
    'Gourmet toppings',
    'Salads',
    'Salad dressings',
    'Appetizers',
    'Desserts',
    'Beverages',
    'Wings',
    'Kids'
  ].freeze

  pizzas            = [
    { name: 'The Italian American Pizza', category: 'Pizza', price: 16.99 },
    { name: "Meaty and Beefy Pizza", category: 'Pizza', price: 16.99 },
    { name: 'Veggie Delight Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Margherita Pizza', category: 'Pizza', price: 16.99 },
    { name: 'The Zeus Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Flyin Hawiian Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Rocky Balboa Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Chicken Parm Pie Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Speedy Gonzales Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Bacon Rancheros Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Dinosaur BBQ Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Flavor Country Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Green Thumb Pizza', category: 'Pizza', price: 16.99 },
    { name: 'The Colbert Pizza', category: 'Pizza', price: 16.99 },
    { name: "St Nick Pizza", category: 'Pizza', price: 16.99 },
    { name: 'BLTO Pizza Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Ranchzilla Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Capriccio Pizza', category: 'Pizza', price: 16.99 },
    { name: 'Fat Boy Pizza', category: 'Pizza', price: 15.99 },
    { name: 'Da Dougie Pizza', category: 'Pizza', price: 17.99 } 
  ]
  sandwiches        = [
    { name: 'Ham Classic Sandwich', category: 'Sandwiches', price: 7.99 },
    { name: 'Turkey Classic Sandwich', category: 'Sandwiches', price: 7.99 },
    { name: 'Italian Stallion Sandwich', category: 'Sandwiches', price: 7.99 },
    { name: 'NY Style Parmesan Sandwich', category: 'Sandwiches', price: 8.49 },
    { name: 'Philly Cheese Steak Sandwich', category: 'Sandwiches', price: 7.99 },
    { name: 'George Street Sandwich', category: 'Sandwiches', price: 8.49 },
    { name: 'Veggie Sandwich', category: 'Sandwiches', price: 7.49 },
    { name: 'Bufflao Chicken Sandwich', category: 'Sandwiches', price: 8.49 },
    { name: 'Pizza Sub Sandwich', category: 'Sandwiches', price: 7.49 },
    { name: 'Mozzarella Fresca Sandwich', category: 'Sandwiches', price: 8.49 },
    { name: 'BLT Sandwich', category: 'Sandwiches', price: 6.99 },
    { name: 'Gyro Sandwich', category: 'Sandwiches', price: 7.49 },
    { name: 'Chipotle Chicken Sandwich', category: 'Sandwiches', price: 8.49 } 
  ]
  extras   = [
    { name: 'Chips', category: 'Extras', price: 0 },
    { name: 'Ketchup', category: 'Extras', price: 0 },
    { name: 'Mustard', category: 'Extras', price: 0 } 
  ]
  toppings          = [
    { name: 'Anchovies', category: 'Toppings', price: 0.5 },
    { name: 'Bacon', category: 'Toppings', price: 0.5 },
    { name: 'Black Olives', category: 'Toppings', price: 0.5 },
    { name: 'Fresh Basil', category: 'Toppings', price: 0.5 },
    { name: 'Fresh Garlic', category: 'Toppings', price: 0.5 },
    { name: 'Green Peppers', category: 'Toppings', price: 0.5 },
    { name: 'Ground Beef', category: 'Toppings', price: 0.5 },
    { name: 'Ham', category: 'Toppings', price: 0.5 },
    { name: 'Jalapenos', category: 'Toppings', price: 0.5 },
    { name: 'Mushrooms', category: 'Toppings', price: 0.5 },
    { name: 'Red Onions', category: 'Toppings', price: 0.5 },
    { name: 'White Onions', category: 'Toppings', price: 0.5 },
    { name: 'Banana Peppers', category: 'Toppings', price: 0.5 },
    { name: 'Pepperoni', category: 'Toppings', price: 0.5 },
    { name: 'Pineapple', category: 'Toppings', price: 0.5 },
    { name: 'Salami', category: 'Toppings', price: 0.5 },
    { name: 'Sausage', category: 'Toppings', price: 0.5 },
    { name: 'Spinach', category: 'Toppings', price: 0.5 },
    { name: 'Turkey', category: 'Toppings', price: 0.5 },
    { name: 'Feta', category: 'Toppings', price: 0.5 },
    { name: 'Tomatoes', category: 'Toppings', price: 0.5 },
    { name: 'Cheese', category: 'Toppings', price: 0.5 },
    { name: 'Cheddar', category: 'Toppings', price: 0.5 } 
  ]
  gourmet_toppings  = [
    { name: 'Artichoke Hearts', category: 'Gourmet toppings', price: 1 },
    { name: 'Broccoli', category: 'Gourmet toppings', price: 1 },
    { name: 'Grilled or Fried Chicken', category: 'Gourmet toppings', price: 1 },
    { name: 'Meatballs', category: 'Gourmet toppings', price: 1 },
    { name: 'Roasted Red Peppers', category: 'Gourmet toppings', price: 1 },
    { name: 'Sundried Tomatoes', category: 'Gourmet toppings', price: 1 } 
  ]
  salads            = [
    { name: 'NY Chopped Salad', category: 'Salad', price: 7.49 },
    { name: "Mom's Spinach Salad", category: 'Salad', price: 7.49 },
    { name: 'Club Salad', category: 'Salad', price: 7.99 },
    { name: 'Greek Salad', category: 'Salad', price: 7.49 },
    { name: 'Chef Salad', category: 'Salad', price: 8.49 },
    { name: 'Caesar Salad', category: 'Salad', price: 6.49 },
    { name: 'Grilled Chicken Salad', category: 'Salad', price: 8.49 },
    { name: 'Garden Salad', category: 'Salad', price: 6.49 },
    { name: 'Side Salad', category: 'Salad', price: 4.24 },
    { name: 'Broccoli Salad', category: 'Salad', price: 4.49 },
    { name: 'Caesar Side Salad', category: 'Salad', price: 4.49 }
  ]
  salad_dressings   = [
    { name: 'Cilantropeno', category: 'Salad dressing', price: 0 },
    { name: 'Honey Mustard', category: 'Salad dressing', price: 0 },
    { name: 'Greek', category: 'Salad dressing', price: 0 },
    { name: 'Italian', category: 'Salad dressing', price: 0 },
    { name: 'Balsamic', category: 'Salad dressing', price: 0 },
    { name: 'Red Wine Vinaigrette', category: 'Salad dressing', price: 0 },
    { name: 'Caesar', category: 'Salad dressing', price: 0 },
    { name: 'Ranch Side', category: 'Salad dressing', price: 0 },
    { name: 'Blue Cheese', category: 'Salad dressing', price: 0 } 
  ]
  appetizers        = [
    { name: 'Chicken Nuggets', category: 'Appetizers', price: 5.49 },
    { name: 'Mozzarella Sticks', category: 'Appetizers', price: 6.49 },
    { name: 'Chicken Sliders', category: 'Appetizers', price: 7.49 },
    { name: 'Beef Sliders', category: 'Appetizers', price: 7.49 },
    { name: 'Bacon Provolone Fries', category: 'Appetizers', price: 4.99 },
    { name: 'Garlic Rolls', category: 'Appetizers', price: 5.49 },
    { name: 'Blue Chips', category: 'Appetizers', price: 4.99 },
    { name: 'French Fries', category: 'Appetizers', price: 2.49 },
    { name: 'Cheasy Bread', category: 'Appetizers', price: 6.49 },
    { name: 'Pickle Spears', category: 'Appetizers', price: 5.49 },
    { name: 'Chipotle Chicken Nachos', category: 'Appetizers', price: 7.49 },
  ]
  beverages         = [
    { name: 'Coke bottle', category: 'Beverages', price: 1.79 },
    { name: 'Diet Coke bottle', category: 'Beverages', price: 1.79 },
    { name: 'Sprite bottle', category: 'Beverages', price: 1.79 },
    { name: 'Root Beer bottle', category: 'Beverages', price: 1.79 },
    { name: 'Mr. Pibb bottle', category: 'Beverages', price: 1.79 },
    { name: 'Grape Fanta bottle', category: 'Beverages', price: 1.79 },
    { name: 'Orange Fanta bottle', category: 'Beverages', price: 1.79 },
    { name: 'Sweet Tea', category: 'Beverages', price: 1.79 },
    { name: 'Unsweet Tea bottle', category: 'Beverages', price: 1.79 },
    { name: 'Coke 2 liter', category: 'Beverages', price: 2.99 },
    { name: 'Diet Coke 2-liter', category: 'Beverages', price: 2.99 },
    { name: 'Sprite 2-liter', category: 'Beverages', price: 2.99 }
  ]
  desserts          = [
    { name: 'Cinna Sticks', category: 'Dessert', price: 5.49 },
    { name: 'Zeppoles', category: 'Dessert', price: 2.99 },
    { name: 'Cannoli Balls', category: 'Dessert', price: 5.49 },
    { name: 'Cholocate Balls', category: 'Dessert', price: 5.49 }
  ]
  wings             = [
    { name: 'Mild', category: 'Wings', price: 7.99 },
    { name: 'Medium', category: 'Wings', price: 7.99 },
    { name: 'Hot', category: 'Wings', price: 7.99 },
    { name: 'Hot Garlic', category: 'Wings', price: 7.99 },
    { name: 'Atomic', category: 'Wings', price: 7.99 },
    { name: 'BBQ', category: 'Wings', price: 7.99 },
    { name: 'Honey BBQ', category: 'Wings', price: 7.99 },
    { name: 'Hot BBQ', category: 'Wings', price: 7.99 },
    { name: 'Teriyaki', category: 'Wings', price: 7.99 },
    { name: 'Hot Teriyaki', category: 'Wings', price: 7.99 },
    { name: 'Honey Mustard', category: 'Wings', price: 7.99 },
    { name: 'Plum', category: 'Wings', price: 7.99 },
    { name: 'Lemon Pepper', category: 'Wings', price: 7.99 },
    { name: 'Ranch', category: 'Wings', price: 7.99 },
    { name: 'Cajun', category: 'Wings', price: 7.99 },
    { name: 'Jerk', category: 'Wings', price: 7.99 } 
  ]
  kids              = [
    { name: 'Grilled Cheese & Fries', category: 'Kids', price: 5.99 },
    { name: 'Chicken Fingers & Fries', category: 'Kids', price: 5.99 },
    { name: 'Cheesy Pita', category: 'Kids', price: 5.99 }
  ]

  ITEMS             = [
    pizzas, 
    toppings, 
    gourmet_toppings, 
    sandwiches,
    extras,
    salad_dressings,
    salads,
    appetizers,
    beverages,
    desserts,
    wings,
    kids
  ].flatten.freeze
end