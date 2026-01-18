# Abdulaziz Store 🛍️

> A modern e-commerce platform built with Laravel

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Laravel](https://img.shields.io/badge/Laravel-11.x-orange.svg)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-8.2+-777BB4.svg?logo=php)](https://www.php.net/)

Abdulaziz Store is a comprehensive e-commerce solution designed to provide a seamless shopping experience. Built on the robust Laravel framework, it offers advanced features for online retail businesses.

## ✨ Features

- **User Authentication & Authorization** - Secure login, registration, and role management
- **Product Management** - Comprehensive catalog with categories, attributes, and variants
- **Shopping Cart** - Full-featured cart with persistent sessions
- **Checkout Process** - Streamlined multi-step checkout with multiple payment gateways
- **Order Management** - Complete order tracking and administration
- **Admin Dashboard** - Intuitive interface for store management
- **SEO Optimized** - Built-in SEO tools for better search engine visibility
- **Responsive Design** - Mobile-friendly layout for all devices
- **Multi-language Support** - Internationalization ready
- **Payment Integration** - Multiple payment gateway options

## 🚀 Quick Start

Follow these steps to get the application running locally:

### Prerequisites

- PHP >= 8.2
- Composer
- Node.js & npm/yarn
- MySQL/MariaDB

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Ahmed-ELnakieb/abdulaziz-store.git
   cd abdulaziz-store
   ```

2. Install PHP dependencies:
   ```bash
   composer install
   ```

3. Install frontend dependencies:
   ```bash
   npm install
   # or
   yarn install
   ```

4. Copy the environment file and configure your settings:
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. Configure your database in the `.env` file:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_database_name
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```

6. Run database migrations:
   ```bash
   php artisan migrate --seed
   ```

7. Build frontend assets:
   ```bash
   npm run dev
   # or for production
   npm run build
   ```

8. Start the development server:
   ```bash
   php artisan serve
   ```

The application will be available at [http://localhost:8000](http://localhost:8000)

## 🛠️ Development

### Running Tests

```bash
php artisan test
```

### Building Assets

```bash
# Development build
npm run dev

# Production build
npm run build

# Watch for changes during development
npm run watch
```

### Useful Commands

```bash
# Clear caches
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Generate application key
php artisan key:generate

# Run migrations
php artisan migrate

# Seed the database
php artisan db:seed
```

## 🤝 Contributing

We welcome contributions to this project! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

Please make sure to update tests as appropriate and adhere to the existing code style.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## 🐛 Bug Reports & Feature Requests

If you encounter any bugs or have ideas for improvements, please open an issue on GitHub. We appreciate detailed bug reports with steps to reproduce.

## 👨‍💻 Author

**Abdulaziz**

- GitHub: [@Ahmed-ELnakieb](https://github.com/Ahmed-ELnakieb)
- Email: [your-email@example.com](mailto:your-email@example.com)

## 💬 Support

If you need help with the installation or have any questions, feel free to reach out to us via email or open an issue on GitHub.

Made with ❤️ using Laravel