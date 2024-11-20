# Real-Books-Survey

# Database Structure
Books Table: Contains information about each book (ID, title, author, date of publication, quantity available).

Columns:

BookID
Title
Author
DatePublished
QuantityAvailable
Orders Table: Stores order details (Order ID, Book ID, Order Date, Amount Paid, Quantity, Order Status, Shipping Address).

Columns:

OrderID
BookID
DatePurchased
AmountPaid
Quantity
OrderStatus
ShippingAddress
Customer Survey Table: Contains survey responses from customers (Customer ID, Satisfaction levels for various aspects like product quality, delivery, customer service, etc.).

Columns:

CustomerID
Recommendation
Quality
Delivery
Prices
CustomerService
StaffSupport
RewardSystem

# Python
Python Libraries:
Pandas
Numpy
Matplotlib
Seaborn
