# ELMS (Eğitim Yönetim Sistemi)

Bu uygulama, öğretmenlerin kurs oluşturup yönetebildiği, öğrencilerin kurslara kayıt olup ilerlemelerini takip edebildiği bir eğitim platformudur.

## Kurulum ve Çalıştırma

1. **Gereksinimler:**
   - Ruby 3.x
   - Rails 7.x
   - PostgreSQL veya SQLite (varsayılan)

2. **Bağımlılıkları yükleyin:**
   ```sh
   bundle install
   ```

3. **Veritabanını oluşturun ve seed verilerini yükleyin:**
   ```sh
   rails db:setup
   # veya ayrı ayrı:
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Sunucuyu başlatın:**
   ```sh
   rails server
   ```

5. **Uygulamayı açın:**
   Tarayıcınızda `http://localhost:3000` adresine gidin.

## Test Kullanıcıları

Aşağıdaki kullanıcılarla giriş yaparak sistemi test edebilirsiniz:

| Rol      | E-posta              | Şifre      |
|----------|----------------------|------------|
| Admin    | admin@example.com    | password   |
| Öğretmen | ali@example.com      | password   |
| Öğrenci  | zeynep@example.com   | password   |

## Özellikler
- **Admin:** Tüm kursları ve kullanıcıları yönetebilir.
- **Öğretmen:** Kurs ekleyebilir, güncelleyebilir ve kendi kursunu silebilir.
- **Öğrenci:** Kurslara kayıt olabilir, ilerlemesini görebilir.

## Kurs Silme
- Öğretmenler sadece kendi oluşturdukları kursları silebilir.
- Admin tüm kursları silebilir.
- Öğrenciler kurs silemez.

## Notlar
- Kullanıcı rolleri ve yetkileri seeds.rb dosyasında tanımlıdır.
- Frontend dosyaları klasik Rails yapısında, asset pipeline ile yönetilmektedir.
- Geliştirme ortamında test için yukarıdaki kullanıcıları kullanabilirsiniz.

## Ekran Görüntüleri

### Giriş ve Kayıt
- [Giriş Ekranı](/screenshots/giris.png)
- [Kayıt Ol](/screenshots/kayıtol.png)

### Admin Paneli
- [Giriş Ekranı](/screenshots/admin/yoneticipaneli.png)
- [Tüm Kurslar](/screenshots/admin/tumkurslar.png)
- [Kurs Detayları](/screenshots/admin/kursdetay.png)

### Öğretmen Paneli
- [Giriş Ekranı](/screenshots/teacher/yöneticipaneli.png)
- [Tüm Kurslar](/screenshots/teacher/tümkurslar.png)
- [Yeni Kurs Ekle](/screenshots/teacher/yenikursekleme.png)
- [Yeni Kurs Eklendi](/screenshots/teacher/kurseklendi.png)

### Öğrenci Paneli
- [Giriş Ekranı](/screenshots/student/giris.png)
- [Tüm Kurslar](/screenshots/student/tümkurslar.png)
- [Kayıtlı Kurs Detayı](/screenshots/student/kursbilgileri.png)
- [Kayıtlı Kurs Bilgileri](/screenshots/student/kayıtlıkurslar.png)



