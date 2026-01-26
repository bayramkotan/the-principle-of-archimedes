<div align="center">

# 🌊 ARŞİMET PRENSİBİ

### Sıvıların Kaldırma Kuvveti Simülasyonu

<img src="assets/Istanbul_Universitesi.png" alt="İstanbul Üniversitesi" width="120">

**İstanbul Üniversitesi - 2009**

---

[![Canlı Demo](https://img.shields.io/badge/🌐_Canlı_Demo-Tıkla-00d4aa?style=for-the-badge)](https://bayramkotan.github.io/the-principle-of-archimedes/)
[![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react&logoColor=white)](https://react.dev/)
[![Vite](https://img.shields.io/badge/Vite-5-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)
[![License](https://img.shields.io/badge/Lisans-MIT-green?style=for-the-badge)](LICENSE)

<br>

<img src="https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png" alt="rainbow" width="100%">

<br>

### ✨ Arşimet prensibini görselleştiren interaktif fizik simülasyonu ✨

<br>

| 🔴 **BATAR** | 🟢 **YÜZER** | 🟡 **ASILI KALIR** |
|:---:|:---:|:---:|
| ρ_cisim > ρ_sıvı | ρ_cisim < ρ_sıvı | ρ_cisim = ρ_sıvı |
| Fk < G | Fk = G | Fk = G |

<br>

<img src="https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png" alt="rainbow" width="100%">

</div>

<br>

## 🎯 Proje Hakkında

> **"Bir sıvıya batırılan cisim, taşırdığı sıvının ağırlığına eşit büyüklükte yukarı yönlü bir kuvvetle itilir."**
> 
> — *Arşimet, M.Ö. 287-212*

Bu proje, **Arşimet Prensibi**'ni interaktif olarak öğretmek için tasarlanmış bir fizik simülasyonudur. Orijinal olarak **2009 yılında İstanbul Üniversitesi**'nde Visual Basic 6.0 ile geliştirilmiş, şimdi modern web teknolojileriyle yeniden hayata geçirilmiştir.

<br>

## 🚀 Özellikler

<table>
<tr>
<td width="50%">

### 🎮 İnteraktif Simülasyon
- ⚡ Gerçek zamanlı animasyonlar
- 🎯 Kuvvet vektörleri (G ve Fk)
- 🔄 Üç farklı durum simülasyonu
- 📊 Anlık hesaplama sonuçları

</td>
<td width="50%">

### 🧪 Zengin Malzeme Kütüphanesi
- 💧 8 farklı sıvı seçeneği
- 🔩 11 farklı katı madde
- ✏️ Keyfi değer girişi
- 📐 Kütle veya hacim bazlı hesaplama

</td>
</tr>
</table>

<br>

## 🧪 Hazır Malzemeler

<div align="center">

### 💧 Sıvılar

| Malzeme | Özkütle (g/cm³) |
|:-------:|:---------------:|
| 💧 Su (+4°C) | 1.00 |
| 🧴 Kloroform | 1.49 |
| 🫒 Zeytinyağı | 0.91 |
| ⛽ Benzin | 0.88 |
| 🍺 Etil Alkol | 0.78 |
| 🌊 Deniz Suyu | 1.025 |
| 🥛 Süt | 1.03 |
| 🍯 Bal | 1.42 |

### 🔩 Katı Maddeler

| Malzeme | Özkütle (g/cm³) |
|:-------:|:---------------:|
| 🥇 Altın | 19.30 |
| ⚫ Kurşun | 11.30 |
| 🟤 Bakır | 8.92 |
| ⚙️ Demir | 7.86 |
| 🔘 Alüminyum | 2.70 |
| 🪟 Cam | 2.50 |
| 🧱 Beton | 2.40 |
| 🧊 Buz | 0.92 |
| 🪵 Ahşap (Meşe) | 0.75 |
| 🍾 Mantar | 0.24 |

</div>

<br>

## 📐 Fizik Formülleri

<div align="center">

```
╔═══════════════════════════════════════════════════════════════╗
║                                                               ║
║     🌊 KALDIRMA KUVVETİ                                       ║
║     ─────────────────────────────────────────                 ║
║                                                               ║
║         Fk = ρs × Vb × g                                      ║
║                                                               ║
║     ⚖️ AĞIRLIK                                                ║
║     ─────────────────────────────────────────                 ║
║                                                               ║
║         G = m × g = ρc × Vc × g                               ║
║                                                               ║
║     📏 YÜKSEKLİK ORANI                                        ║
║     ─────────────────────────────────────────                 ║
║                                                               ║
║         hb/hc = ρc/ρs                                         ║
║                                                               ║
║     🔬 SABİTLER                                               ║
║     ─────────────────────────────────────────                 ║
║                                                               ║
║         g = 9.80665 m/s²                                      ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

</div>

| Sembol | Açıklama | Birim |
|:------:|:---------|:-----:|
| **Fk** | Kaldırma Kuvveti | N |
| **G** | Ağırlık | N |
| **ρs** | Sıvı Yoğunluğu | g/cm³ |
| **ρc** | Cisim Yoğunluğu | g/cm³ |
| **Vb** | Batan Hacim | cm³ |
| **Vc** | Cisim Hacmi | cm³ |
| **g** | Yerçekimi İvmesi | m/s² |

<br>

## 🖥️ Kurulum

### Gereksinimler

- [Node.js](https://nodejs.org/) v18+
- npm veya yarn

### Yerel Geliştirme

```bash
# 1️⃣ Repoyu klonlayın
git clone https://github.com/bayramkotan/the-principle-of-archimedes.git

# 2️⃣ Web dizinine gidin
cd the-principle-of-archimedes/web

# 3️⃣ Bağımlılıkları yükleyin
npm install

# 4️⃣ Geliştirme sunucusunu başlatın
npm run dev
```

Tarayıcınızda `http://localhost:5173` adresini açın 🎉

### Production Build

```bash
npm run build
npm run preview
```

<br>

## 📖 Kullanım Kılavuzu

<div align="center">

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│  1️⃣  SIVI SEÇ        →  Listeden veya keyfi değer gir      │
│                                                             │
│  2️⃣  CİSİM SEÇ       →  Listeden veya keyfi değer gir      │
│                                                             │
│  3️⃣  BÜYÜKLÜK GİR    →  Kütle (g) veya Hacim (cm³)         │
│                                                             │
│  4️⃣  HESAPLA         →  ⚡ Butona tıkla ve izle!           │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

</div>

### 💡 İpuçları

- 🟡 Yoğunluklar eşit olduğunda **"Asılı Kalır"** durumu oluşur
- 🎮 Asılı durumda cismin konumunu butonlarla değiştirebilirsiniz
- 🎯 Kuvvet okları cismin merkezinden başlar

<br>

## 🛠️ Teknolojiler

<div align="center">

| | Teknoloji | Kullanım |
|:---:|:---:|:---:|
| ⚛️ | **React 18** | UI Framework |
| ⚡ | **Vite 5** | Build Tool |
| 🎨 | **Canvas API** | Simülasyon Çizimi |
| 🚀 | **GitHub Actions** | CI/CD |
| 🌐 | **GitHub Pages** | Hosting |

</div>

<br>

## 📁 Proje Yapısı

```
the-principle-of-archimedes/
│
├── 🌐 web/                          # React + Vite Web Uygulaması
│   ├── 📂 src/
│   │   ├── ⚛️ App.jsx              # Ana bileşen
│   │   ├── 🎨 App.css              # Stiller
│   │   ├── 📄 main.jsx             # Entry point
│   │   └── 🎨 index.css            # Global stiller
│   ├── 📂 public/
│   │   └── 📂 assets/              # Statik dosyalar
│   ├── 📄 index.html
│   ├── 📄 package.json
│   └── ⚙️ vite.config.js
│
├── 🖼️ assets/                       # Görseller
│   └── 🏛️ Istanbul_Universitesi.png
│
├── 📂 .github/workflows/            # CI/CD
│   └── 🚀 deploy.yml
│
├── 💾 src/                          # Kaynak kodlar (yedek)
│
├── 📜 README.md                     # Bu dosya
└── 📄 LICENSE                       # MIT Lisansı
```

<br>

## 📜 Tarihçe

<div align="center">

```
    2009                                      2025
      │                                         │
      ▼                                         ▼
┌──────────┐                            ┌──────────┐
│          │                            │          │
│   VB6    │  ════════════════════════▶ │  React   │
│          │       Modernizasyon        │          │
└──────────┘                            └──────────┘
      │                                         │
      │    İstanbul Üniversitesi               │
      │    Fizik Eğitimi için                  │
      │    geliştirildi                        │
      │                                         │
      └─────────────────────────────────────────┘
```

| Versiyon | Teknoloji | Yıl | Durum |
|:--------:|:---------:|:---:|:-----:|
| 1.0 | Visual Basic 6.0 | 2009 | 📦 Arşiv |
| 2.0 | React + Vite | 2025 | ✅ Aktif |

</div>

<br>

## 👨‍💻 Geliştirici

<div align="center">

<img src="https://github.com/bayramkotan.png" width="100" style="border-radius: 50%">

### **Bayram Kotan**

<img src="assets/Istanbul_Universitesi.png" alt="İstanbul Üniversitesi" width="60">

*İstanbul Üniversitesi - 2009*

[![GitHub](https://img.shields.io/badge/GitHub-bayramkotan-181717?style=for-the-badge&logo=github)](https://github.com/bayramkotan)

</div>

<br>

## 📄 Lisans

<div align="center">

Bu proje **MIT Lisansı** ile lisanslanmıştır.

```
MIT License - Copyright (c) 2025 Bayram Kotan

Özgürce kullanabilir, değiştirebilir ve dağıtabilirsiniz.
```

</div>

<br>

---

<div align="center">

### ⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın! ⭐

<br>

**Made with ❤️ by [Bayram Kotan](https://github.com/bayramkotan)**

<br>

<img src="assets/Istanbul_Universitesi.png" alt="İstanbul Üniversitesi" width="80">

*İstanbul Üniversitesi © 2009*

</div>
