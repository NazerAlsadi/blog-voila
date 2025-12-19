# Laravel Blog Project

## Overview  
This project is a blog system built using the Laravel framework. It provides a public-facing website for displaying articles, categories, comments, and a contact form, as well as an admin panel for managing content, comments, and messages.

---

## Project Structure

### 1. Public Routes (Website Frontend)

- **Home Page**  
  - URL: `/`  
  - Displays the homepage with a list of articles or main content.
  
- **Search**  
  - URL: `/search`  
  - Provides search functionality for articles or site content.
  
- **Article Details**  
  - URL: `/articles/{slug}`  
  - Shows a single article based on the article slug.
  
- **Category Page**  
  - URL: `/categories/{slug}`  
  - Shows all articles that belong to a specific category.
  
- **Comments**  
  - POST `/comments`  
  - Submit new comments on articles.
  
- **Contact Page**  
  - GET `/contact` to show the contact form.  
  - POST `/contact` to submit messages from the contact form.

---

### 2. Admin Panel Routes

Prefix: `/admin`

- **Dashboard**  
  - URL: `/admin/dashboard`  
  - Main admin dashboard page.
  
- **Articles Management**  
  - Full CRUD operations on articles via resource controller: `/admin/articles`
  
- **Categories Management**  
  - Full CRUD operations on categories via resource controller: `/admin/categories`
  
- **Comments Management**  
  - View all comments: `/admin/comments`  
  - Approve comment: POST `/admin/comments/{comment}/approve`  
  - Delete comment: DELETE `/admin/comments/{comment}`  
  - Toggle comment status (active/inactive): PATCH `/admin/comments/{comment}/toggle`
  
- **Contact Messages Management**  
  - View messages: `/admin/messages`  
  - Mark message as reviewed: POST `/admin/messages/{message}/review`  
  - Delete message: DELETE `/admin/messages/{id}`

---

## Controllers Overview

- Frontend Controllers:  
  `HomeController`, `ArticleController`, `CategoryController`, `CommentController`, `ContactController`
  
- Admin Controllers:  
  `DashboardController`, `AdminArticleController`, `AdminCategoryController`, `AdminCommentController`, `AdminMessageController`

---

## Technical Requirements

- **Language:** PHP  
- **Framework:** Laravel (latest version recommended)  
- **Database:** MySQL or any other supported by Laravel  
- **Routing:** Laravel routing system with grouped routes for public and admin sections.

---

## Installation and Setup

1. Clone the repository: git clone https://github.com/NazerAlsadi/blog-voila.git
2. Install dependencies: composer install
3. Configure .env file with your database credentials and other environment variables.
4. Run migrations to create database tables: php artisan migrate
5. (Optional) Run seeders to populate sample data: php artisan db:seed
6. Start the development server: php artisan serve
7. Access the website at:
   Public: http://localhost:8000/
   Admin panel: http://localhost:8000/admin/dashboard
8. 
   ```bash
   git clone <repository-url>
