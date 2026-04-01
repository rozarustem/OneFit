# 🏋️ OneFit — Terminal Ilovasi

**OneFit** — foydalanuvchiga sport markazlari, sport turlari, obuna tariflari va mashg'ulot jadvalini **terminal orqali** tanlash imkonini beruvchi konsol ilovasidir.

> Pure Dart asosida yozilgan — Flutter UI ishlatilmagan.

---

## 🚀 Ishga tushirish

### Talablar

- [Dart SDK](https://dart.dev/get-dart) — versiya `>=3.0.0 <4.0.0`

### Qadamlar

```bash
# 1. Repozitoriyani clone qiling
git clone https://github.com/username/onefit.git

# 2. Loyiha papkasiga kiring
cd onefit

# 3. Dasturni ishga tushiring
dart run main.dart
```

---

## 🎯 Dastur nima qiladi?

Dastur ishga tushganda foydalanuvchidan quyidagi ma'lumotlar so'raladi:

| Bosqich | Mazmuni |
|---------|---------|
| 👤 Kirish | Ism, familiya va yosh kiritiladi |
| 📍 Viloyat | Mavjud hududlar ichidan bittasi tanlanadi |
| 🏟 Klub | Tanlangan viloyat bo'yicha sport klublari ko'rsatiladi |
| ⚽ Sport | Tanlangan klubdagi sport yo'nalishlari ko'rsatiladi |
| 📋 Batafsil | Sport, murabbiy va tavsif ma'lumoti chiqariladi |
| 💰 Narxlar | Obuna tariflari tanlanadi |
| 📅 Jadval | Kun, vaqt va ustoz bo'yicha jadval ko'rsatiladi |
| ✅ Profil | Tanlangan barcha ma'lumotlar yakuniy ko'rinishda chiqariladi |

---

## 🛠 Texnologiya

- **Dart** — `dart:io`, `dart:convert`
- **Ma'lumotlar** — JSON fayllar (`assets/data/`)
- **Arxitektura** — Model / Service / Screen qatlamlari

---

## 📁 Fayl tuzilmasi

```
onefit/
├── main.dart               # Asosiy boshqaruv
├── pubspec.yaml            # Loyiha konfiguratsiyasi
├── assets/
│   └── data/
│       ├── regions.json
│       ├── clubs.json
│       ├── sports.json
│       ├── schedule.json
│       └── subscriptions.json
└── lib/
    ├── models/
    │   └── models.dart
    ├── services/
    │   └── data_service.dart
    └── screens/
        ├── ui_helper.dart
        ├── screen_kirish.dart
        ├── screen_viloyat.dart
        ├── screen_klublar.dart
        ├── screen_sport.dart
        ├── screen_batafsil.dart
        ├── screen_narxlar.dart
        ├── screen_jadval.dart
        └── screen_profil.dart
```

---

## 👤 Muallif

Tayyorlangan sana: **2026-03-27**
