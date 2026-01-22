# BookCart API Test Suite

### Prerequisites
- **Node.js** (v14+): [Download here](https://nodejs.org/)
- **Postman** (Optional - for GUI): [Download here](https://www.postman.com/downloads/)

### One-Command Setup
```bash
# Install Newman + HTML Reporter
npm install -g newman newman-reporter-htmlextra
```

---

## Test Coverage

### All Endpoints Covered (6 Categories)

####  **Books API** (12 tests)
-  Get all books
-  Get book by ID (valid/invalid)
-  Get categories
-  Get similar books
-  Response validation
-  Performance checks

#### **User Management** (15 tests)
-  Register user (valid/invalid)
-  Validate username availability
-  Password pattern validation
-  Required field validation
-  Get user details
-  Error handling

#### **Authentication** (6 tests)
-  Login with valid credentials
-  Invalid username/password
-  Empty credentials
-  Token generation
-  Security validation

#### **Shopping Cart** (14 tests)
-  View cart
-  Add items
-  Update quantity
-  Remove items
-  Clear cart
-  Transfer cart
-  Edge cases

#### **Wishlist** (8 tests)
-  View wishlist
-  Add/remove items
-  Clear wishlist
-  Authorization checks

#### **Orders** (6 tests)
-  Checkout process
-  View order history
-  Empty order validation
-  Authorization

---