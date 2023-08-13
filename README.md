# Install
 - Lakukan ```composer install```
 - Konfigurasi database .env file
```

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravelcustomauth
DB_USERNAME=root
DB_PASSWORD=
```

- Buat database dengan nama laravelcustomauth atau  bebas
 - Import file <b>laravelcustomauth.sql</b> pada laragon / phpmyadmin
 - jalankan  ```php artisan serve```
 - jalankan ```npm run dev```