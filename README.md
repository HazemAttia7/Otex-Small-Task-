# 🛍️ Otex App (Task)

An e-commerce Flutter app that allows users to act as both **customers** and **sellers**.  
Customers can browse and buy products, while sellers can create ads, manage products, and subscribe to advertising plans.  
This project highlights my contribution to the **seller side** of the app.

---

## ✨ Features

- 🏠 **Home:** Displays all products with categories (Offers, Clothes, etc.) and subcategories (e.g., Men, Women). Products are shown in a responsive grid layout.  
- 🎯 **Filtering:** Advanced product filtering by price range, payment method, and more.  
- 👤 **Profile / Plans:** Sellers can subscribe to monthly advertising bundles with defined features.  
- 🧭 **Routing & Navigation:** Seamless page transitions using `go_router`.  
- 🌐 **RTL / Localization:** Full support for Arabic right-to-left layout.  
- 💾 **Local Database:** Uses `sqflite` for local caching and persistence.

---

## 🧠 Tech Stack

| Category | Tools / Packages |
|-----------|------------------|
| Framework | Flutter |
| Architecture | MVVM |
| State Management | Bloc (Cubits) |
| Dependency Injection | get_it |
| Database | sqflite |
| Routing | go_router |
| Utility | dartz, flutter_screenutil, flutter_localizations |
| Media | cached_network_image |

---

## 🏗️ Folder Structure

> The app follows the **MVVM architecture** pattern.

Here’s a visual overview (based on your provided structure image):

```
lib/
├── core/
│   ├── database/
│   ├── errors/
│   ├── icons/
│   ├── models/
│   ├── utils/
│   ├── widgetss/
│   └── ...
├── features/
│   ├── home/
│   ├── profile/
│   └── ...
```

---

## 📸 Screenshots

![Home Screen](screenshots/home%201.png)
![Home Screen](screenshots/home%202.png)
![Filter Screen](screenshots/filter%201.png)
![Filter Screen](screenshots/filter%202.png)
![Profile Plans Screen](screenshots/profile%201.png)
![Profile Plans Screen](screenshots/profile%202.png)
