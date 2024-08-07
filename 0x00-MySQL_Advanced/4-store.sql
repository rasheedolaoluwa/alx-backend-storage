-- Trigger to decrease item quantity after a new order is added.
CREATE TRIGGER buy_trigger
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items 
SET quantity = quantity - NEW.number 
WHERE name = NEW.item_name;
