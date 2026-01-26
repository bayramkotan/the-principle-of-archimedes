import { useState, useRef, useEffect, useCallback } from 'react'
import './App.css'

// Fizik sabitleri
const GRAVITY = 9.80665

// Hazır malzemeler
const FLUIDS = [
  { name: 'Sıvı Seç', value: '' },
  { name: 'Su (+4°C)', value: 1.00 },
  { name: 'Kloroform', value: 1.49 },
  { name: 'Zeytinyağı', value: 0.91 },
  { name: 'Benzin', value: 0.88 },
  { name: 'Etil Alkol', value: 0.78 },
  { name: 'Deniz Suyu', value: 1.025 },
  { name: 'Süt', value: 1.03 },
  { name: 'Bal', value: 1.42 },
]

const MATERIALS = [
  { name: 'Cisim Seç', value: '' },
  { name: 'Altın', value: 19.30 },
  { name: 'Kurşun', value: 11.30 },
  { name: 'Bakır', value: 8.92 },
  { name: 'Demir', value: 7.86 },
  { name: 'Alüminyum', value: 2.70 },
  { name: 'Cam', value: 2.50 },
  { name: 'Beton', value: 2.40 },
  { name: 'Plastik (PVC)', value: 1.40 },
  { name: 'Buz', value: 0.92 },
  { name: 'Ahşap (Meşe)', value: 0.75 },
  { name: 'Mantar', value: 0.24 },
]

function App() {
  // State - Default: Keyfi seçili, Zeytinyağı değeri, Alüminyum değeri, 1000g
  const [customFluid, setCustomFluid] = useState(true)
  const [customObject, setCustomObject] = useState(true)
  const [fluidDensity, setFluidDensity] = useState('0.91')
  const [objectDensity, setObjectDensity] = useState('2.70')
  const [measureType, setMeasureType] = useState('mass')
  const [measureValue, setMeasureValue] = useState('1000')
  const [selectedFluid, setSelectedFluid] = useState('')
  const [selectedObject, setSelectedObject] = useState('')
  const [results, setResults] = useState(null)
  const [status, setStatus] = useState({ text: 'Değerleri Girin', formula: '—' })
  const [suspendedPosition, setSuspendedPosition] = useState(2)
  
  // Animasyon ///
  const canvasRef = useRef(null)
  const animationRef = useRef(null)
  const currentYRef = useRef(0)
  const [isAnimating, setIsAnimating] = useState(false)

  // Sıvı seçimi değiştiğinde
  const handleFluidSelect = (e) => {
    const value = e.target.value
    setSelectedFluid(value)
    if (value) {
      setFluidDensity(value)
    }
  }

  // Cisim seçimi değiştiğinde
  const handleObjectSelect = (e) => {
    const value = e.target.value
    setSelectedObject(value)
    if (value) {
      setObjectDensity(value)
    }
  }

  // Canvas boyutlandırma
  const getCanvasSize = useCallback(() => {
    const width = Math.min(600, window.innerWidth - 40)
    const height = Math.min(500, window.innerHeight - 300)
    return { width, height }
  }, [])

  // Sahneyi çiz
  const drawScene = useCallback((canvas, currentY, calculatedResults, animating) => {
    if (!canvas) return
    
    const ctx = canvas.getContext('2d')
    const w = canvas.width
    const h = canvas.height
    
    // Temizle
    ctx.fillStyle = '#0f2744'
    ctx.fillRect(0, 0, w, h)
    
    // Konteyner boyutları
    const containerLeft = w * 0.2
    const containerRight = w * 0.8
    const containerTop = h * 0.15
    const containerBottom = h * 0.85
    const waterSurface = h * 0.4
    const borderWidth = 4
    
    // Su çiz
    const gradient = ctx.createLinearGradient(0, waterSurface, 0, containerBottom)
    gradient.addColorStop(0, '#3498db')
    gradient.addColorStop(1, '#1a5276')
    ctx.fillStyle = gradient
    ctx.fillRect(
      containerLeft + borderWidth, 
      waterSurface, 
      containerRight - containerLeft - borderWidth * 2, 
      containerBottom - waterSurface - borderWidth
    )
    
    // Su yüzeyi efekti
    ctx.strokeStyle = '#5dade2'
    ctx.lineWidth = 2
    ctx.beginPath()
    for (let x = containerLeft + 10; x < containerRight - 10; x += 30) {
      ctx.moveTo(x, waterSurface)
      ctx.quadraticCurveTo(x + 15, waterSurface - 3, x + 30, waterSurface)
    }
    ctx.stroke()
    
    // Cisim boyutları
    const objWidth = w * 0.25
    const objHeight = h * 0.18
    const objX = (containerLeft + containerRight) / 2 - objWidth / 2
    const objY = currentY
    
    // Cisim gölgesi
    ctx.fillStyle = 'rgba(0, 0, 0, 0.3)'
    ctx.fillRect(objX + 5, objY + 5, objWidth, objHeight)
    
    // Cisim
    const objGradient = ctx.createLinearGradient(objX, objY, objX + objWidth, objY + objHeight)
    objGradient.addColorStop(0, '#00e5ff')
    objGradient.addColorStop(0.5, '#00bcd4')
    objGradient.addColorStop(1, '#0097a7')
    ctx.fillStyle = objGradient
    ctx.fillRect(objX, objY, objWidth, objHeight)
    
    // Cisim kenarlığı
    ctx.strokeStyle = '#004d40'
    ctx.lineWidth = 3
    ctx.strokeRect(objX, objY, objWidth, objHeight)
    
    // Cisim üzerinde parlama efekti
    ctx.fillStyle = 'rgba(255, 255, 255, 0.2)'
    ctx.fillRect(objX + 5, objY + 5, objWidth - 10, 8)
    
    // Konteyner kenarları
    ctx.strokeStyle = '#1a3a5c'
    ctx.lineWidth = borderWidth * 2
    ctx.lineCap = 'round'
    
    // Sol kenar
    ctx.beginPath()
    ctx.moveTo(containerLeft, containerTop)
    ctx.lineTo(containerLeft, containerBottom)
    ctx.stroke()
    
    // Sağ kenar
    ctx.beginPath()
    ctx.moveTo(containerRight, containerTop)
    ctx.lineTo(containerRight, containerBottom)
    ctx.stroke()
    
    // Alt kenar
    ctx.beginPath()
    ctx.moveTo(containerLeft - borderWidth, containerBottom)
    ctx.lineTo(containerRight + borderWidth, containerBottom)
    ctx.stroke()
    
    // Zemin
    ctx.fillStyle = '#0a1628'
    ctx.fillRect(0, containerBottom + 8, w, h - containerBottom - 8)
    
    // Kuvvet okları (sürekli görünür)
    if (calculatedResults) {
      drawForceArrows(ctx, objX, objY, objWidth, objHeight, calculatedResults)
    }
  }, [])

  // Kuvvet okları çiz - ikisi de merkezden başlar
  const drawForceArrows = (ctx, objX, objY, objWidth, objHeight, res) => {
    const centerX = objX + objWidth / 2
    const centerY = objY + objHeight / 2
    const arrowLength = 80
    
    // Ağırlık oku (merkezden aşağı) - kırmızı
    ctx.strokeStyle = '#e74c3c'
    ctx.fillStyle = '#e74c3c'
    ctx.lineWidth = 4
    ctx.lineCap = 'round'
    
    ctx.beginPath()
    ctx.moveTo(centerX, centerY)
    ctx.lineTo(centerX, centerY + arrowLength)
    ctx.stroke()
    
    // Ok başı
    ctx.beginPath()
    ctx.moveTo(centerX - 10, centerY + arrowLength - 12)
    ctx.lineTo(centerX, centerY + arrowLength)
    ctx.lineTo(centerX + 10, centerY + arrowLength - 12)
    ctx.fill()
    
    // G etiketi
    ctx.font = 'bold 16px "Space Mono", monospace'
    ctx.fillStyle = '#e74c3c'
    ctx.fillText('G', centerX + 15, centerY + arrowLength - 5)
    
    // Kaldırma kuvveti oku (merkezden yukarı) - yeşil
    ctx.strokeStyle = '#2ecc71'
    ctx.fillStyle = '#2ecc71'
    
    ctx.beginPath()
    ctx.moveTo(centerX, centerY)
    ctx.lineTo(centerX, centerY - arrowLength)
    ctx.stroke()
    
    // Ok başı
    ctx.beginPath()
    ctx.moveTo(centerX - 10, centerY - arrowLength + 12)
    ctx.lineTo(centerX, centerY - arrowLength)
    ctx.lineTo(centerX + 10, centerY - arrowLength + 12)
    ctx.fill()
    
    // Fk etiketi
    ctx.fillStyle = '#2ecc71'
    ctx.fillText('Fk', centerX + 15, centerY - arrowLength + 15)
    
    // Durum göstergesi
    let statusText = ''
    if (res.status === 'sinks') {
      statusText = 'Fk < G'
    } else {
      statusText = 'Fk = G'
    }
    
    ctx.font = 'bold 28px "Space Mono", monospace'
    ctx.fillStyle = '#f5b041'
    ctx.textAlign = 'center'
    ctx.fillText(statusText, canvasRef.current.width / 2, 45)
    ctx.textAlign = 'left'
  }

  // Animasyon
  const animate = useCallback((targetY, calculatedResults) => {
    const canvas = canvasRef.current
    if (!canvas) return
    
    const diff = targetY - currentYRef.current
    
    if (Math.abs(diff) > 1) {
      currentYRef.current += diff * 0.06
      drawScene(canvas, currentYRef.current, calculatedResults, true)
      animationRef.current = requestAnimationFrame(() => animate(targetY, calculatedResults))
    } else {
      currentYRef.current = targetY
      setIsAnimating(false)
      drawScene(canvas, currentYRef.current, calculatedResults, false)
    }
  }, [drawScene])

  // Hesaplama
  const calculate = () => {
    const fluidD = parseFloat(fluidDensity)
    const objectD = parseFloat(objectDensity)
    const value = parseFloat(measureValue)
    
    // Doğrulama
    if (isNaN(fluidD) || isNaN(objectD) || isNaN(value) ||
        fluidD <= 0 || objectD <= 0 || value <= 0) {
      alert('Lütfen tüm değerleri doğru giriniz!')
      return
    }
    
    // Kütle ve hacim hesapla
    let mass, volume
    if (measureType === 'mass') {
      mass = value
      volume = value / objectD
    } else {
      volume = value
      mass = value * objectD
    }
    
    // Batan hacim ve durum
    let submergedVolume, statusType
    if (objectD > fluidD) {
      submergedVolume = volume
      statusType = 'sinks'
    } else if (objectD < fluidD) {
      submergedVolume = volume * (objectD / fluidD)
      statusType = 'floats'
    } else {
      submergedVolume = volume
      statusType = 'suspended'
    }
    
    // Yuvarla
    volume = Math.round(volume * 10000) / 10000
    mass = Math.round(mass * 10000) / 10000
    submergedVolume = Math.round(submergedVolume * 10000) / 10000
    
    // Kuvvetler
    const weight = mass * GRAVITY
    const buoyancy = submergedVolume * fluidD * GRAVITY
    
    const calculatedResults = {
      volume,
      mass,
      submergedVolume,
      weight: Math.round(weight * 10000) / 10000,
      buoyancy: Math.round(buoyancy * 10000) / 10000,
      ratio: objectD / fluidD,
      status: statusType
    }
    
    setResults(calculatedResults)
    
    // Durum güncelle
    if (statusType === 'sinks') {
      setStatus({ text: 'Cisim Dibe Batar', formula: 'Fk < G' })
    } else if (statusType === 'floats') {
      setStatus({ text: 'Cisim Yüzer', formula: 'Fk = G' })
    } else {
      setStatus({ text: 'Cisim Asılı Kalır', formula: 'Fk = G' })
      setSuspendedPosition(2)
    }
    
    // Animasyonu başlat
    startAnimation(calculatedResults)
  }

  // Animasyonu başlat
  const startAnimation = (calculatedResults) => {
    const canvas = canvasRef.current
    if (!canvas) return
    
    const h = canvas.height
    const containerBottom = h * 0.85
    const waterSurface = h * 0.4
    const objHeight = h * 0.18
    
    // Başlangıç pozisyonu
    currentYRef.current = h * 0.25
    
    // Hedef pozisyon
    let targetY
    if (calculatedResults.status === 'sinks') {
      targetY = containerBottom - objHeight - 4
    } else if (calculatedResults.status === 'floats') {
      const ratio = calculatedResults.ratio
      const submergedHeight = objHeight * ratio
      targetY = waterSurface - (objHeight - submergedHeight)
    } else {
      // Asılı - orta pozisyon
      targetY = waterSurface + (containerBottom - waterSurface) / 2 - objHeight / 2
    }
    
    setIsAnimating(true)
    
    if (animationRef.current) {
      cancelAnimationFrame(animationRef.current)
    }
    
    animationRef.current = requestAnimationFrame(() => animate(targetY, calculatedResults))
  }

  // Asılı durumda pozisyon değiştir
  const handlePositionChange = (pos) => {
    if (!results || results.status !== 'suspended') return
    
    setSuspendedPosition(pos)
    
    const canvas = canvasRef.current
    if (!canvas) return
    
    const h = canvas.height
    const containerBottom = h * 0.85
    const waterSurface = h * 0.4
    const objHeight = h * 0.18
    
    const positions = {
      1: containerBottom - objHeight - 4, // Alt
      2: waterSurface + (containerBottom - waterSurface) / 2 - objHeight / 2, // Orta
      3: waterSurface + 10 // Üst
    }
    
    const targetY = positions[pos]
    
    setIsAnimating(true)
    if (animationRef.current) {
      cancelAnimationFrame(animationRef.current)
    }
    animationRef.current = requestAnimationFrame(() => animate(targetY, results))
  }

  // İlk yükleme ve resize
  useEffect(() => {
    const canvas = canvasRef.current
    if (!canvas) return
    
    const { width, height } = getCanvasSize()
    canvas.width = width
    canvas.height = height
    
    currentYRef.current = height * 0.3
    drawScene(canvas, currentYRef.current, null, false)
    
    const handleResize = () => {
      const { width, height } = getCanvasSize()
      canvas.width = width
      canvas.height = height
      currentYRef.current = height * 0.3
      drawScene(canvas, currentYRef.current, results, false)
    }
    
    window.addEventListener('resize', handleResize)
    return () => window.removeEventListener('resize', handleResize)
  }, [getCanvasSize, drawScene, results])

  return (
    <div className="app">
      <header>
        <h1>ARŞİMET PRENSİBİ</h1>
        <p className="subtitle">Sıvıların Kaldırma Kuvveti Simülasyonu</p>
      </header>

      <div className="container">
        {/* Sol Panel - Girişler */}
        <div className="panel">
          <h2 className="panel-title">⚗️ Parametreler</h2>

          {/* Sıvı Yoğunluğu */}
          <div className="input-group">
            <label>Sıvının Özkütlesi (ρₛ)</label>
            <div className="input-row">
              <label className="checkbox-option">
                <input 
                  type="checkbox" 
                  checked={customFluid}
                  onChange={(e) => {
                    setCustomFluid(e.target.checked)
                    if (e.target.checked) setSelectedFluid('')
                  }}
                />
                <span className="checkbox-custom"></span>
                Keyfi
              </label>
            </div>
            <div className="input-row" style={{ marginTop: '8px' }}>
              <select 
                value={selectedFluid}
                onChange={handleFluidSelect}
                disabled={customFluid}
              >
                {FLUIDS.map(f => (
                  <option key={f.name} value={f.value}>{f.name}</option>
                ))}
              </select>
            </div>
            <div className="input-row" style={{ marginTop: '8px' }}>
              <input 
                type="number"
                value={fluidDensity}
                onChange={(e) => setFluidDensity(e.target.value)}
                step="0.01"
                min="0"
                max="999"
                placeholder="0.00"
                disabled={!customFluid}
              />
              <span className="unit">g/cm³</span>
            </div>
          </div>

          {/* Cisim Yoğunluğu */}
          <div className="input-group">
            <label>Cismin Özkütlesi (ρc)</label>
            <div className="input-row">
              <label className="checkbox-option">
                <input 
                  type="checkbox" 
                  checked={customObject}
                  onChange={(e) => {
                    setCustomObject(e.target.checked)
                    if (e.target.checked) setSelectedObject('')
                  }}
                />
                <span className="checkbox-custom"></span>
                Keyfi
              </label>
            </div>
            <div className="input-row" style={{ marginTop: '8px' }}>
              <select 
                value={selectedObject}
                onChange={handleObjectSelect}
                disabled={customObject}
              >
                {MATERIALS.map(m => (
                  <option key={m.name} value={m.value}>{m.name}</option>
                ))}
              </select>
            </div>
            <div className="input-row" style={{ marginTop: '8px' }}>
              <input 
                type="number"
                value={objectDensity}
                onChange={(e) => setObjectDensity(e.target.value)}
                step="0.01"
                min="0"
                max="999"
                placeholder="0.00"
                disabled={!customObject}
              />
              <span className="unit">g/cm³</span>
            </div>
          </div>

          {/* Kütle veya Hacim */}
          <div className="input-group">
            <label>Cismin Büyüklüğü</label>
            <div className="radio-group">
              <label className="radio-option">
                <input 
                  type="radio" 
                  name="measureType" 
                  value="mass"
                  checked={measureType === 'mass'}
                  onChange={(e) => setMeasureType(e.target.value)}
                />
                <span className="radio-custom"></span>
                Kütle
              </label>
              <label className="radio-option">
                <input 
                  type="radio" 
                  name="measureType" 
                  value="volume"
                  checked={measureType === 'volume'}
                  onChange={(e) => setMeasureType(e.target.value)}
                />
                <span className="radio-custom"></span>
                Hacim
              </label>
            </div>
            <div className="input-row">
              <input 
                type="number"
                value={measureValue}
                onChange={(e) => setMeasureValue(e.target.value)}
                step="0.01"
                min="0"
                placeholder="0.00"
              />
              <span className="unit">{measureType === 'mass' ? 'g' : 'cm³'}</span>
            </div>
          </div>

          <button className="calculate-btn" onClick={calculate}>
            ⚡ Hesapla
          </button>

          {/* Formül Bilgisi */}
          <div className="formula-box">
            <div className="formula">Fk = ρs · Vb · g</div>
            <div style={{ marginTop: '8px' }}>
              Fk: Kaldırma Kuvveti<br/>
              ρs: Sıvı Yoğunluğu<br/>
              Vb: Batan Hacim<br/>
              g: 9.80665 m/s²
            </div>
          </div>
        </div>

        {/* Orta - Canvas */}
        <div className="panel canvas-container">
          <canvas ref={canvasRef} id="simulationCanvas"></canvas>
        </div>

        {/* Sağ Panel - Sonuçlar */}
        <div className="panel">
          <h2 className="panel-title">📊 Sonuçlar</h2>

          <div className="status-display">
            <div className="status-text">{status.text}</div>
            <div className="status-formula">{status.formula}</div>
          </div>

          <div className="result-item">
            <div className="result-label">Cismin Hacmi</div>
            <div className="result-value">
              {results ? `${results.volume} cm³` : '— cm³'}
            </div>
          </div>

          <div className="result-item">
            <div className="result-label">Cismin Kütlesi</div>
            <div className="result-value">
              {results ? `${results.mass} g` : '— g'}
            </div>
          </div>

          <div className="result-item">
            <div className="result-label">Batan Hacim</div>
            <div className="result-value">
              {results ? (
                results.status === 'sinks' 
                  ? `${results.volume} cm³ (tamamı)` 
                  : `${results.submergedVolume} cm³`
              ) : '— cm³'}
            </div>
          </div>

          <div className="result-item">
            <div className="result-label">Yükseklik Oranı (hb/hc)</div>
            <div className="result-value">
              {results ? (
                results.status === 'sinks' 
                  ? 'hb/hc = 1' 
                  : results.status === 'suspended'
                    ? 'hb/hc = değişken'
                    : `hb/hc ≈ ${Math.round(results.ratio * 10000) / 10000}`
              ) : '—'}
            </div>
          </div>

          <div className="result-item">
            <div className="result-label">Ağırlık (G)</div>
            <div className="result-value highlight">
              {results ? `${results.weight} × 10⁻³ N` : '— N'}
            </div>
          </div>

          <div className="result-item">
            <div className="result-label">Kaldırma Kuvveti (Fk)</div>
            <div className="result-value highlight">
              {results ? `${results.buoyancy} × 10⁻³ N` : '— N'}
            </div>
          </div>

          {/* Asılı Durum Butonları */}
          {results?.status === 'suspended' && (
            <div className="position-buttons visible">
              <div className="result-label" style={{ marginBottom: '8px' }}>
                Cisim Konumu (Asılı Durumda)
              </div>
              <button 
                className="position-btn"
                disabled={suspendedPosition === 1}
                onClick={() => handlePositionChange(1)}
              >
                1. Durum (Alt)
              </button>
              <button 
                className="position-btn"
                disabled={suspendedPosition === 2}
                onClick={() => handlePositionChange(2)}
              >
                2. Durum (Orta)
              </button>
              <button 
                className="position-btn"
                disabled={suspendedPosition === 3}
                onClick={() => handlePositionChange(3)}
              >
                3. Durum (Üst)
              </button>
            </div>
          )}
        </div>
      </div>

      <footer>
        <p>Arşimet Prensibi Simülasyonu | VB6'dan Web'e Dönüştürüldü</p>
        <p><a href="https://github.com/bayramkotan" target="_blank" rel="noreferrer">Bayram Kotan</a></p>
        <div className="university-info">
          <img 
            src="./assets/Istanbul_Universitesi.png" 
            alt="İstanbul Üniversitesi" 
            className="university-logo"
          />
          <span>İstanbul Üniversitesi - 2009</span>
        </div>
      </footer>
    </div>
  )
}

export default App
