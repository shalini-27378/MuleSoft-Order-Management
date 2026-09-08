 MuleSoft Order Management System

 Project Overview

The MuleSoft Order Management System is an API-led integration project developed using **MuleSoft Anypoint Platform** and **Anypoint Studio**.

The system manages customer orders by receiving order requests through a REST API, validating the input, retrieving product information, calculating order totals and discounts, and storing the processed order details in a MySQL database.

The project demonstrates how MuleSoft can be used to integrate APIs with external systems and databases as part of a real-world order management workflow.

---

 Objectives

- Receive customer order requests through a REST API.
- Validate incoming order information.
- Retrieve product details based on the requested product ID.
- Calculate the order total.
- Apply discounts based on the order value.
- Store processed order information in a MySQL database.
- Demonstrate API and database integration using MuleSoft.
- Provide a scalable foundation for an order management system.

---

##  System Architecture

```text
                    Client / Postman
                          |
                          | POST /orders
                          ↓
                ┌─────────────────────┐
                │     MuleSoft API    │
                │    HTTP Listener    │
                └──────────┬──────────┘
                           |
                           ↓
                    Input Validation
                           |
                           ↓
                  Store Order Request
                           |
                           ↓
                Get Product Information
                           |
                           ↓
                  Transform & Calculate
                  ┌──────────────────┐
                  │ Price             │
                  │ Total Amount      │
                  │ Discount          │
                  │ Final Amount      │
                  └────────┬─────────┘
                           |
                           ↓
                   MySQL Database
                           |
                           ↓
                    orders tableMuleSoft-Order-Management/
