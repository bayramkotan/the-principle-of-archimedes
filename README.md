# Arşimet Prensibi - Sıvıların Kaldırma Kuvveti Simülasyonu

[🌐 Canlı Demo](https://bayramkotan.github.io/the-principle-of-archimedes/)

Arşimet prensibini (kaldırma kuvveti) görselleştiren interaktif bir eğitim simülasyonu. Farklı yoğunluklardaki cisim ve sıvılar için kaldırma kuvvetini hesaplar ve animasyonlu olarak gösterir.

## 🎯 Özellikler

- **Dinamik Simülasyon**: Cismin sıvı içindeki hareketini gerçek zamanlı animasyonla gösterir
- **Hazır Malzemeler**: Su, benzin, zeytinyağı gibi sıvılar ve altın, demir, alüminyum gibi katılar
- **Keyfi Değerler**: İstediğiniz özkütle değerlerini manuel girebilme
- **3 Durum Analizi**:
  - **Batar** (ρc > ρs): Cisim dibe çöker
  - **Yüzer** (ρc < ρs): Cisim kısmen batarak dengede kalır
  - **Asılı Kalır** (ρc = ρs): Cisim sıvı içinde herhangi bir seviyede dengelenir
- **Kuvvet Vektörleri**: Ağırlık (G) ve kaldırma kuvveti (Fk) okları
- **Detaylı Sonuçlar**: Hacim, kütle, batan hacim, yükseklik oranı

## 📐 Fizik Formülleri

```
Kaldırma Kuvveti:  Fk = ρs × Vb × g
Ağırlık:          G = m × g = ρc × Vc × g
Denge Durumu:     Fk = G (yüzen veya asılı cisimler için)
Yükseklik Oranı:  hb/hc = ρc/ρs
```

Değişkenler:
- `ρs`: Sıvının yoğunluğu (g/cm³)
- `ρc`: Cismin yoğunluğu (g/cm³)
- `Vb`: Batan hacim (cm³)
- `Vc`: Cismin toplam hacmi (cm³)
- `g`: Yerçekimi ivmesi (9.80665 m/s²)

## 🚀 Kurulum

### Gereksinimler

- Node.js 18+
- npm veya yarn

### Yerel Geliştirme

```bash
# Repoyu klonla
git clone https://github.com/bayramkotan/the-principle-of-archimedes.git
cd the-principle-of-archimedes/web

# Bağımlılıkları yükle
npm install

# Geliştirme sunucusunu başlat
npm run dev
```

### Production Build

```bash
npm run build
npm run preview
```

## 📁 Dosya Yapısı

```
the-principle-of-archimedes/
├── web/                      # React + Vite projesi
│   ├── src/
│   │   ├── App.jsx          # Ana bileşen
│   │   ├── App.css          # Stiller
│   │   ├── main.jsx         # Entry point
│   │   └── index.css        # Global stiller
│   ├── .github/
│   │   └── workflows/
│   │       └── deploy.yml   # GitHub Actions
│   ├── index.html
│   ├── package.json
│   └── vite.config.js
│
├── vb6/                      # Orijinal VB6 dosyaları
│   ├── Form1.frm
│   ├── Form1.frx
│   ├── Project1.vbp
│   └── ...
│
├── README.md
└── LICENSE
```

## 🛠️ Teknolojiler

- **React 18** - UI framework
- **Vite 5** - Build tool
- **Canvas API** - Simülasyon çizimi
- **GitHub Actions** - CI/CD
- **GitHub Pages** - Hosting

## 🎓 Eğitim Amaçlı

Bu simülasyon, fizik eğitiminde Arşimet prensibini anlamak için tasarlanmıştır:

- **Batma**: Cismin yoğunluğu sıvıdan büyükse, kaldırma kuvveti ağırlıktan küçüktür
- **Yüzme**: Cismin yoğunluğu sıvıdan küçükse, cisim kısmen batarak dengede kalır
- **Askıda Kalma**: Yoğunluklar eşitse, cisim sıvı içinde herhangi bir derinlikte kalabilir

## 📜 Geçmiş

Bu uygulama, orijinal olarak Visual Basic 6.0 ile yazılmış eğitim simülasyonunun modern web versiyonudur.

## 👨‍💻 Yazar

**Bayram Kotan**
- GitHub: [@bayramkotan](https://github.com/bayramkotan)

## 📄 Lisans

MIT License

---

# The Principle of Archimedes - Buoyancy Force Simulation

[🌐 Live Demo](https://bayramkotan.github.io/the-principle-of-archimedes/)

An interactive educational simulation visualizing Archimedes' principle (buoyancy force).

## 🎯 Features

- Real-time animation of object movement in fluid
- Preset materials (water, gasoline, metals)
- Custom density input
- Three state analysis: sinks, floats, suspended
- Force vectors visualization

## 🛠️ Tech Stack

- React 18 + Vite 5
- Canvas API
- GitHub Actions + GitHub Pages

## 👨‍💻 Author

**Bayram Kotan** - [@bayramkotan](https://github.com/bayramkotan)

## 📄 License

MIT License
