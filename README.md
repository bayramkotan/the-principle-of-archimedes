# 🌊 Arşimet Prensibi - Sıvıların Kaldırma Kuvveti

<div align="center">

![Fizik](https://img.shields.io/badge/Fizik-Simülasyon-blue?style=for-the-badge)
![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-5-646CFF?style=for-the-badge&logo=vite&logoColor=white)
![License](https://img.shields.io/badge/Lisans-MIT-green?style=for-the-badge)

**Arşimet prensibini görselleştiren interaktif fizik simülasyonu**

[🌐 Canlı Demo](https://bayramkotan.github.io/the-principle-of-archimedes/) • [📖 Dokümantasyon](#-kullanım) • [🐛 Hata Bildir](https://github.com/bayramkotan/the-principle-of-archimedes/issues)

---

</div>

## 📋 İçindekiler

- [Hakkında](#-hakkında)
- [Özellikler](#-özellikler)
- [Fizik Temelleri](#-fizik-temelleri)
- [Canlı Demo](#-canlı-demo)
- [Kurulum](#-kurulum)
- [Kullanım](#-kullanım)
- [Teknolojiler](#️-teknolojiler)
- [Proje Yapısı](#-proje-yapısı)
- [Katkıda Bulunma](#-katkıda-bulunma)
- [Lisans](#-lisans)

## 🎯 Hakkında

Bu proje, **Arşimet Prensibi**'ni (kaldırma kuvveti) interaktif olarak öğretmek için tasarlanmış bir fizik simülasyonudur. Farklı yoğunluklardaki cisim ve sıvılar için kaldırma kuvvetini hesaplar ve gerçek zamanlı animasyonlarla görselleştirir.

> **Arşimet Prensibi:** Bir sıvıya batırılan cisim, taşırdığı sıvının ağırlığına eşit büyüklükte yukarı yönlü bir kuvvetle itilir.

### 🎓 Eğitim Amaçlı

Bu simülasyon özellikle şu konuları anlamak için idealdir:

| Durum | Koşul | Açıklama |
|-------|-------|----------|
| 🔴 **Batma** | ρ_cisim > ρ_sıvı | Cisim tamamen dibe çöker |
| 🟢 **Yüzme** | ρ_cisim < ρ_sıvı | Cisim kısmen batarak dengede kalır |
| 🟡 **Askıda Kalma** | ρ_cisim = ρ_sıvı | Cisim sıvı içinde herhangi bir seviyede kalabilir |

## ✨ Özellikler

### 🎮 İnteraktif Simülasyon
- Gerçek zamanlı animasyonlu cisim hareketi
- Kuvvet vektörlerinin (G ve Fk) görselleştirilmesi
- Üç farklı durum için dinamik davranış

### 🧪 Hazır Malzemeler

<table>
<tr>
<td>

**Sıvılar**
- 💧 Su (+4°C)
- 🧴 Kloroform
- 🫒 Zeytinyağı
- ⛽ Benzin
- 🍺 Etil Alkol
- 🌊 Deniz Suyu
- 🥛 Süt
- 🍯 Bal

</td>
<td>

**Katılar**
- 🥇 Altın
- ⚫ Kurşun
- 🟤 Bakır
- ⚙️ Demir
- 🔘 Alüminyum
- 🪟 Cam
- 🧱 Beton
- 🧊 Buz
- 🪵 Ahşap

</td>
</tr>
</table>

### 📊 Detaylı Hesaplamalar
- Cismin hacmi ve kütlesi
- Batan hacim miktarı
- Yükseklik oranı (hb/hc)
- Ağırlık (G) ve Kaldırma Kuvveti (Fk)

## 📐 Fizik Temelleri

### Temel Formüller

```
┌─────────────────────────────────────────────────────┐
│                                                     │
│   Kaldırma Kuvveti:    Fk = ρs × Vb × g            │
│                                                     │
│   Ağırlık:             G = m × g = ρc × Vc × g     │
│                                                     │
│   Denge Koşulu:        Fk = G  (yüzen cisimler)    │
│                                                     │
│   Yükseklik Oranı:     hb/hc = ρc/ρs               │
│                                                     │
└─────────────────────────────────────────────────────┘
```

### Değişkenler

| Sembol | Açıklama | Birim |
|--------|----------|-------|
| `ρs` | Sıvının yoğunluğu | g/cm³ |
| `ρc` | Cismin yoğunluğu | g/cm³ |
| `Vb` | Batan hacim | cm³ |
| `Vc` | Cismin toplam hacmi | cm³ |
| `g` | Yerçekimi ivmesi | 9.80665 m/s² |
| `Fk` | Kaldırma kuvveti | N |
| `G` | Ağırlık | N |

### Durum Analizi

```
        ρc > ρs                    ρc < ρs                    ρc = ρs
    ┌───────────┐              ┌───────────┐              ┌───────────┐
    │ ～～～～～ │              │ ～～～～～ │              │ ～～～～～ │
    │ ～～～～～ │              │ ～░░░░░～ │              │ ～～～～～ │
    │ ～～～～～ │              │ ～░░░░░～ │              │ ～░░░░░～ │
    │ ～～～～～ │              │ ～～～～～ │              │ ～░░░░░～ │
    │ ░░░░░░░░░ │              │ ～～～～～ │              │ ～～～～～ │
    └───────────┘              └───────────┘              └───────────┘
       BATAR                      YÜZER                   ASILI KALIR
      Fk < G                     Fk = G                     Fk = G
```

## 🌐 Canlı Demo

Uygulamayı hemen deneyin:

**👉 [https://bayramkotan.github.io/the-principle-of-archimedes/](https://bayramkotan.github.io/the-principle-of-archimedes/)**

## 🚀 Kurulum

### Gereksinimler

- [Node.js](https://nodejs.org/) (v18 veya üzeri)
- npm veya yarn

### Yerel Geliştirme

```bash
# 1. Repoyu klonlayın
git clone https://github.com/bayramkotan/the-principle-of-archimedes.git

# 2. Web dizinine gidin
cd the-principle-of-archimedes/web

# 3. Bağımlılıkları yükleyin
npm install

# 4. Geliştirme sunucusunu başlatın
npm run dev
```

Tarayıcınızda `http://localhost:5173` adresini açın.

### Production Build

```bash
# Build oluştur
npm run build

# Önizleme
npm run preview
```

## 📖 Kullanım

### Adım 1: Sıvı Seçin
Listeden hazır bir sıvı seçin veya **"Keyfi"** işaretleyip özkütle değerini manuel girin.

### Adım 2: Cisim Seçin
Listeden hazır bir malzeme seçin veya **"Keyfi"** işaretleyip özkütle değerini manuel girin.

### Adım 3: Büyüklük Girin
Cismin **kütlesini (g)** veya **hacmini (cm³)** girin.

### Adım 4: Hesapla
**"⚡ Hesapla"** butonuna tıklayın ve simülasyonu izleyin!

### 💡 İpuçları

- Yoğunluklar eşit olduğunda **"Asılı Kalır"** durumu oluşur
- Asılı durumda cismin konumunu butonlarla değiştirebilirsiniz
- Kuvvet okları animasyon bittikten sonra görünür

## 🛠️ Teknolojiler

<div align="center">

| Teknoloji | Kullanım |
|-----------|----------|
| ![React](https://img.shields.io/badge/React-18-61DAFB?logo=react&logoColor=white) | UI Framework |
| ![Vite](https://img.shields.io/badge/Vite-5-646CFF?logo=vite&logoColor=white) | Build Tool |
| ![Canvas](https://img.shields.io/badge/Canvas-API-orange) | Simülasyon Çizimi |
| ![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=github-actions&logoColor=white) | CI/CD |
| ![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-222222?logo=github&logoColor=white) | Hosting |

</div>

## 📁 Proje Yapısı

```
the-principle-of-archimedes/
│
├── 📂 web/                          # React + Vite projesi
│   ├── 📂 src/
│   │   ├── 📄 App.jsx              # Ana bileşen (simülasyon mantığı)
│   │   ├── 📄 App.css              # Bileşen stilleri
│   │   ├── 📄 main.jsx             # React entry point
│   │   └── 📄 index.css            # Global stiller
│   │
│   ├── 📂 .github/
│   │   └── 📂 workflows/
│   │       └── 📄 deploy.yml       # GitHub Actions workflow
│   │
│   ├── 📄 index.html               # HTML şablonu
│   ├── 📄 package.json             # Proje bağımlılıkları
│   ├── 📄 vite.config.js           # Vite yapılandırması
│   └── 📄 README.md
│
├── 📂 vb6/                          # Orijinal VB6 kaynak kodları
│   ├── 📄 Form1.frm                # Ana form
│   ├── 📄 Form1.frx                # Form kaynakları
│   ├── 📄 Project1.vbp             # VB6 proje dosyası
│   └── 📄 ...
│
├── 📄 README.md                     # Bu dosya
└── 📄 LICENSE                       # MIT Lisansı
```

## 🤝 Katkıda Bulunma

Katkılarınızı memnuniyetle karşılıyoruz! 

1. Bu repoyu **fork** edin
2. Feature branch oluşturun (`git checkout -b feature/yeni-ozellik`)
3. Değişikliklerinizi commit edin (`git commit -m 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeni-ozellik`)
5. **Pull Request** açın

### 💡 Öneriler

- Yeni sıvı veya malzeme eklemeleri
- Farklı cisim şekilleri (küre, silindir)
- Çoklu cisim simülasyonu
- Dil desteği (İngilizce, vb.)

## 📜 Tarihçe

Bu uygulama, **2000'li yılların başında Visual Basic 6.0** ile yazılmış eğitim amaçlı bir simülasyonun modern web versiyonudur. Orijinal uygulama, fizik derslerinde Arşimet prensibini öğretmek için kullanılmıştır.

| Versiyon | Teknoloji | Yıl |
|----------|-----------|-----|
| 1.0 | Visual Basic 6.0 | 2000s |
| 2.0 | React + Vite | 2025 |

## 👨‍💻 Yazar

<div align="center">

**Bayram Kotan**

[![GitHub](https://img.shields.io/badge/GitHub-bayramkotan-181717?style=for-the-badge&logo=github)](https://github.com/bayramkotan)

</div>

## 📄 Lisans

Bu proje [MIT Lisansı](LICENSE) ile lisanslanmıştır.

```
MIT License

Copyright (c) 2025 Bayram Kotan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software...
```

---

<div align="center">

**⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın!**

Made with ❤️ by [Bayram Kotan](https://github.com/bayramkotan)

</div>
