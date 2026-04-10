<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аркада Казино (Arkada Casino) - официальный сайт</title>
    <meta name="description" content="Официальный сайт Arkada Casino.">
    
    <!-- Подключаем Inter для точности, как указано в исходном коде, через стандартный CDN Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        /* === DESIGN TOKENS (Извлечено из вашего исходного кода) === */
        :root {
            --mc-main: #00b6ef;
            --mc-main-d5: #00ade3;
            --mc-main-l20: #26cbff;
            --mc-baseMain: #8194c8;
            --mc-baseMain-l5: #8799cb;
            --mc-bg: #00040b;
            --mc-bg-l5: #000d24;
            --mc-bg100: #364a7d;
            --mc-bg300: #303e64;
            --mc-bg500: #232e4a;
            --mc-bg500-l10: #303f65;
            --mc-bg700: #131a2d;
            --mc-bgModal: #060b1a;
            --mc-buttonColor: linear-gradient(180deg, #00b6ef 0%, #75acff 100%);
            --mc-buttonSecondColor: linear-gradient(-90deg, #279500, #247008);
            --button-border-radius: 8px;
            --font-family: 'Inter', system-ui, -apple-system, sans-serif;
        }

        /* === RESET & BASE === */
        *, *::before, *::after {
            box-sizing: border-box;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: var(--font-family);
            background-color: var(--mc-bg);
            color: var(--mc-baseMain);
            font-weight: 400;
            font-size: 15px; /* Базовый размер согласно стилям */
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
            color: inherit;
            transition: color 0.2s ease;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        img {
            max-width: 100%;
            display: block;
        }

        /* === LAYOUT UTILS === */
        .container {
            width: 100%;
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 16px;
        }

        .flex { display: flex; }
        .flex-col { flex-direction: column; }
        .items-center { align-items: center; }
        .justify-between { justify-content: space-between; }
        .justify-center { justify-content: center; }
        .gap-2 { gap: 8px; }
        .gap-4 { gap: 16px; }
        .hidden { display: none !important; }

        /* === TYPOGRAPHY === */
        h1, h2, h3, h4, p {
            margin: 0;
        }

        .text-gradient {
            background: var(--mc-buttonColor);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* === BUTTONS === */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 24px;
            border-radius: var(--button-border-radius);
            font-weight: 600;
            font-size: 14px;
            line-height: 1.2;
            cursor: pointer;
            border: none;
            transition: all 0.2s ease;
            text-align: center;
            white-space: nowrap;
        }

        .btn-primary {
            background: var(--mc-buttonColor);
            color: white;
            box-shadow: 0 4px 15px rgba(0, 182, 239, 0.3);
        }

        .btn-primary:hover {
            background: linear-gradient(180deg, var(--mc-main-l20) 0%, #00b6ef 100%);
            transform: translateY(-1px);
            box-shadow: 0 6px 20px rgba(0, 182, 239, 0.4);
        }

        .btn-secondary {
            background: var(--mc-bg500);
            color: var(--mc-baseMain);
            border: 1px solid var(--mc-bg300);
        }

        .btn-secondary:hover {
            background: var(--mc-bg500-l10);
            color: white;
            border-color: var(--mc-main);
        }

        .btn-green {
            background: var(--mc-buttonSecondColor);
            color: white;
        }
        
        .btn-green:hover {
            opacity: 0.9;
        }

        .btn-icon {
            padding: 8px;
            width: 40px;
            height: 40px;
            background: var(--mc-bg700);
            border-radius: 8px;
            color: var(--mc-baseMain);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background 0.2s, color 0.2s;
            border: none;
        }

        .btn-icon:hover {
            background: var(--mc-bg500);
            color: var(--mc-main);
        }

        /* === HEADER === */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            height: 64px;
            z-index: 100;
            background: rgba(0, 4, 11, 0.85);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(129, 148, 200, 0.1);
            transition: all 0.3s ease;
        }

        .header-content {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 700;
            font-size: 20px;
            color: white;
            letter-spacing: 0.5px;
        }

        .logo-icon {
            width: 36px;
            height: 36px;
            background: var(--mc-buttonColor);
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 18px;
            box-shadow: 0 0 12px rgba(0, 182, 239, 0.4);
        }

        .nav-desktop {
            display: none;
        }

        .nav-desktop a {
            color: var(--mc-baseMain);
            font-size: 14px;
            font-weight: 500;
            margin: 0 12px;
        }

        .nav-desktop a:hover, .nav-desktop a.active {
            color: var(--mc-main);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .btn-header-ghost {
            background: transparent;
            border: 1px solid var(--mc-bg300);
            color: var(--mc-baseMain);
            padding: 8px 16px;
            font-size: 14px;
        }
        .btn-header-ghost:hover {
            border-color: var(--mc-main);
            color: var(--mc-main);
        }

        /* === MOBILE MENU === */
        .mobile-nav-overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0,0,0,0.6);
            backdrop-filter: blur(4px);
            z-index: 98;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s;
        }
        .mobile-nav-overlay.open {
            opacity: 1;
            pointer-events: auto;
        }

        .mobile-menu {
            position: absolute;
            top: 64px;
            left: 0;
            width: 100%;
            background: var(--mc-bg700);
            border-bottom: 1px solid var(--mc-bg300);
            padding: 20px;
            transform: translateY(-20px);
            opacity: 0;
            pointer-events: none;
            transition: all 0.3s ease;
            z-index: 99;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .mobile-menu.open {
            transform: translateY(0);
            opacity: 1;
            pointer-events: auto;
        }

        .mobile-link {
            font-size: 16px;
            color: var(--mc-baseMain);
            padding: 8px 0;
            border-bottom: 1px solid var(--mc-bg500);
        }

        /* === HERO SECTION === */
        .hero {
            padding-top: 100px;
            padding-bottom: 60px;
            background-image: radial-gradient(circle at 70% 30%, rgba(0, 182, 239, 0.08) 0%, transparent 50%);
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 40px;
            align-items: center;
        }

        .hero-left h1 {
            font-size: 32px;
            line-height: 1.1;
            color: white;
            margin-bottom: 16px;
        }

        .hero-left p {
            font-size: 16px;
            color: var(--mc-baseMain);
            margin-bottom: 24px;
            max-width: 450px;
        }

        .hero-badges {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
            flex-wrap: wrap;
        }

        .badge {
            background: rgba(0, 182, 239, 0.1);
            border: 1px solid rgba(0, 182, 239, 0.3);
            color: var(--mc-main);
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .badge-dot {
            width: 6px; height: 6px;
            background: #279500;
            border-radius: 50%;
            animation: pulse 2s infinite;
        }

        .hero-right {
            position: relative;
            border-radius: 16px;
            overflow: hidden;
            border: 1px solid var(--mc-bg300);
            background: var(--mc-bg500);
            aspect-ratio: 16/9;
            max-height: 400px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.5);
        }
        
        .hero-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.8;
            transition: transform 5s ease;
        }
        .hero-right:hover .hero-img {
            transform: scale(1.05);
        }

        .hero-overlay {
            position: absolute;
            bottom: 0; left: 0; right: 0;
            padding: 24px;
            background: linear-gradient(to top, var(--mc-bg700), transparent);
        }
        .hero-val {
            font-size: 28px;
            font-weight: 700;
            color: white;
            margin-bottom: 4px;
        }
        .hero-sub {
            color: var(--mc-main);
            font-weight: 600;
        }

        /* === CATEGORY BAR === */
        .category-bar {
            position: sticky;
            top: 64px;
            z-index: 80;
            background: rgba(19, 26, 45, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--mc-bg300);
            padding: 12px 0;
            overflow-x: auto;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .category-bar::-webkit-scrollbar {
            display: none;
        }

        .cat-scroll-wrapper {
            display: flex;
            gap: 12px;
        }

        .cat-btn {
            background: var(--mc-bg500);
            color: var(--mc-baseMain);
            border: 1px solid var(--mc-bg300);
            padding: 10px 16px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 13px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.2s;
            flex-shrink: 0;
        }

        .cat-btn:hover, .cat-btn.active {
            background: var(--mc-bg300);
            border-color: var(--mc-main);
            color: white;
        }

        .cat-btn svg {
            width: 16px;
            height: 16px;
            stroke: currentColor;
            fill: none;
            stroke-width: 2;
        }

        /* === GAMES GRID === */
        .section-title {
            font-size: 24px;
            color: white;
            margin-bottom: 24px;
            display: flex;
            align-items: center;
            gap: 12px;
        }
        
        .games-section {
            padding: 40px 0;
        }

        .games-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
        }

        .game-card {
            background: var(--mc-bg500);
            border-radius: 12px;
            overflow: hidden;
            position: relative;
            aspect-ratio: 1/1; /* Square cards like typical casinos */
            cursor: pointer;
            border: 1px solid var(--mc-bg300);
            transition: transform 0.2s, border-color 0.2s;
        }

        .game-card:hover {
            transform: translateY(-4px);
            border-color: var(--mc-main);
            z-index: 2;
        }

        .game-thumb {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: opacity 0.3s;
        }

        .game-overlay {
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.4);
            background-image: linear-gradient(to top, rgba(0,0,0,0.8) 0%, transparent 50%);
            opacity: 0;
            transition: opacity 0.2s;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 12px;
        }

        .game-card:hover .game-overlay {
            opacity: 1;
        }
        
        .game-card:hover .game-thumb {
            opacity: 0.8;
        }

        .game-provider {
            position: absolute;
            top: 8px;
            right: 8px;
            background: rgba(0, 4, 11, 0.8);
            backdrop-filter: blur(4px);
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 10px;
            color: #ccc;
            text-transform: uppercase;
            font-weight: 600;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .game-name {
            color: white;
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 8px;
            text-shadow: 0 2px 4px rgba(0,0,0,0.8);
        }

        .game-btn-play {
            background: var(--mc-buttonColor);
            color: white;
            border: none;
            padding: 8px;
            border-radius: 6px;
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            width: 100%;
            transform: translateY(10px);
            transition: transform 0.2s;
        }

        .game-card:hover .game-btn-play {
            transform: translateY(0);
        }

        /* === BONUS SECTION === */
        .bonuses-section {
            padding: 40px 0;
            background: linear-gradient(180deg, transparent 0%, rgba(35, 46, 74, 0.2) 100%);
        }

        .bonus-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }

        .bonus-card {
            background: var(--mc-bg500);
            border-radius: 16px;
            overflow: hidden;
            border: 1px solid var(--mc-bg300);
            display: flex;
            flex-direction: column;
            position: relative;
            min-height: 200px;
        }

        .bonus-bg {
            position: absolute;
            top: 0; right: 0; bottom: 0;
            width: 50%;
            background-size: cover;
            background-position: center;
            opacity: 0.2;
            mask-image: linear-gradient(to right, transparent, black);
            -webkit-mask-image: linear-gradient(to right, transparent, black);
        }

        .bonus-content {
            padding: 24px;
            position: relative;
            z-index: 1;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            max-width: 60%;
        }

        .bonus-label {
            color: var(--mc-main);
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 8px;
        }

        .bonus-title {
            color: white;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 12px;
        }
        
        .bonus-desc {
            font-size: 13px;
            color: var(--mc-baseMain);
            margin-bottom: 20px;
            line-height: 1.4;
        }

        /* === FOOTER === */
        .footer {
            background: var(--mc-bg700);
            border-top: 1px solid var(--mc-bg300);
            padding: 40px 0 20px;
            margin-top: 60px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 30px;
            margin-bottom: 40px;
        }

        .footer-logo {
            display: flex;
            align-items: center;
            gap: 8px;
            color: white;
            font-weight: 700;
            font-size: 18px;
            margin-bottom: 16px;
        }

        .footer-text {
            font-size: 13px;
            color: var(--mc-baseMain);
            margin-bottom: 24px;
            max-width: 300px;
        }

        .footer-links-head {
            color: white;
            font-weight: 600;
            margin-bottom: 16px;
            font-size: 14px;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            font-size: 13px;
            color: var(--mc-baseMain);
        }
        .footer-links a:hover {
            color: var(--mc-main);
        }

        .footer-bottom {
            border-top: 1px solid var(--mc-bg300);
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            gap: 16px;
            align-items: center;
            text-align: center;
        }

        .footer-copy {
            font-size: 12px;
            color: var(--mc-bg300);
        }

        .payment-icons {
            display: flex;
            gap: 8px;
        }
        .pay-badge {
            background: white;
            color: #333;
            font-size: 10px;
            font-weight: 700;
            padding: 6px 8px;
            border-radius: 4px;
        }

        /* === RESPONSIVE === */
        @media (min-width: 768px) {
            .nav-desktop { display: flex; }
            .mobile-toggle { display: none; }
            
            .hero-grid {
                grid-template-columns: 1fr 1fr;
            }
            .hero-left h1 { font-size: 48px; }
            
            .games-grid {
                grid-template-columns: repeat(4, 1fr);
            }
            
            .bonus-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr 1fr;
            }

            .footer-bottom {
                flex-direction: row;
                justify-content: space-between;
            }
            
            .btn-header-desktop { display: inline-flex; }
        }

        @media (min-width: 1024px) {
            .games-grid {
                grid-template-columns: repeat(6, 1fr);
            }
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.5; }
        }
        
        /* SVG Icons defaults */
        .icon-svg {
            width: 20px; 
            height: 20px; 
            stroke: currentColor; 
            fill: none; 
            stroke-width: 2; 
            stroke-linecap: round; 
            stroke-linejoin: round;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header class="header" id="header">
        <div class="container header-content">
            <!-- Mobile Toggle -->
            <button class="btn-icon mobile-toggle" id="mobile-toggle">
                <svg class="icon-svg" viewBox="0 0 24 24"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
            </button>

            <!-- Logo -->
            <a href="#" class="logo">
                <div class="logo-icon">A</div>
                <span>ARKADA</span>
            </a>

            <!-- Desktop Nav -->
            <nav class="nav-desktop">
                <a href="#" class="active">Главная</a>
                <a href="#slots">Слоты</a>
                <a href="#live">Live Casino</a>
                <a href="#bonuses">Бонусы</a>
                <a href="#vip">VIP клуб</a>
            </nav>

            <!-- Auth Buttons -->
            <div class="header-actions">
                <button class="btn btn-header-ghost btn-header-desktop">Вход</button>
                <button class="btn btn-primary">Регистрация</button>
            </div>
        </div>
    </header>

    <!-- Mobile Menu Overlay -->
    <div class="mobile-nav-overlay" id="mobile-overlay"></div>
    <div class="mobile-menu" id="mobile-menu">
        <a href="#" class="mobile-link">Главная</a>
        <a href="#slots" class="mobile-link">Слоты</a>
        <a href="#live" class="mobile-link">Live Casino</a>
        <a href="#bonuses" class="mobile-link">Бонусы</a>
        <a href="#vip" class="mobile-link">VIP клуб</a>
        <button class="btn btn-secondary" style="width: 100%">Вход в кабинет</button>
    </div>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <div class="hero-grid">
                    <div class="hero-left">
                        <div class="hero-badges">
                            <div class="badge"><div class="badge-dot"></div>Официальный сайт</div>
                        </div>
                        <h1>Добро пожаловать в <span class="text-gradient">ARKADA</span></h1>
                        <p>Легальные игровые автоматы, мгновенные выплаты и щедрая бонусная программа. Ваш старт с преимуществом!</p>
                        <div style="display: flex; gap: 12px; flex-wrap: wrap;">
                            <button class="btn btn-primary" style="padding: 12px 32px; font-size: 16px;">Играть сейчас</button>
                            <button class="btn btn-secondary">
                                <svg class="icon-svg" viewBox="0 0 24 24" style="margin-right: 8px; color: #279500;"><path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg>
                                Получить бонус
                            </button>
                        </div>
                    </div>
                    
                    <div class="hero-right">
                        <img src="http://static.photos/technology/640x360/88" alt="Banner" class="hero-img">
                        <div class="hero-overlay">
                            <div class="hero-val">100% + 50 FS</div>
                            <div class="hero-sub">Приветственный пакет</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sticky Categories -->
        <section class="category-bar">
            <div class="container">
                <div class="cat-scroll-wrapper">
                    <button class="cat-btn active">
                        <svg viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                        Все игры
                    </button>
                    <button class="cat-btn">
                        <svg viewBox="0 0 24 24" style="color: #ff5811;"><path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-2.312-3-1-5 1.5-2.5 5-2.5 5-2.5s-3.5 1.5-3 4c.5 2.5 3 2 5 4 1.5 1.5 2 3 2 3"></path></svg>
                        Популярные
                    </button>
                    <button class="cat-btn">
                        <svg viewBox="0 0 24 24" style="color: #279500;"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                        Новинки
                    </button>
                    <button class="cat-btn">
                        <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><path d="M8.56 2.75c4.37 6.03 6.02 9.42 8.03 17.72m2.54-5.38c-3.72-3.85-7.55-5.86-9.13-6.33m-1.26 7.39c3.39-4.09 6.39-5.39 8.39-5.39"></path></svg>
                        Слоты
                    </button>
                    <button class="cat-btn">
                        <svg viewBox="0 0 24 24"><path d="M2 12h20"></path><path d="M2 12h5l2 9 3-18 4 9h6"></path></svg>
                        Live Казино
                    </button>
                    <button class="cat-btn">
                        <svg viewBox="0 0 24 24"><rect x="2" y="4" width="20" height="16" rx="2"></rect><path d="M6 8h.01"></path><path d="M10 8h.01"></path><path d="M14 8h.01"></path><path d="M18 8h.01"></path><path d="M6 12h.01"></path><path d="M10 12h.01"></path><path d="M14 12h.01"></path><path d="M18 12h.01"></path><path d="M7 16h10"></path></svg>
                        Столы
                    </button>
                </div>
            </div>
        </section>

        <!-- Games Grid -->
        <section id="slots" class="games-section">
            <div class="container">
                <h2 class="section-title">
                    <svg class="icon-svg" style="color: var(--mc-main); width: 24px; height: 24px;" viewBox="0 0 24 24"><rect x="2" y="6" width="20" height="12" rx="2"></rect><path d="M6 12h4"></path><path d="M8 10v4"></path><path d="M15 13h2"></path><path d="M18 11h2"></path></svg>
                    Популярные игры
                </h2>
                <div class="games-grid" id="games-container">
                    <!-- Cards will be injected by JS -->
                </div>
            </div>
        </section>

        <!-- Bonuses -->
        <section id="bonuses" class="bonuses-section">
            <div class="container">
                <h2 class="section-title">
                    <svg class="icon-svg" style="color: #279500; width: 24px; height: 24px;" viewBox="0 0 24 24"><path d="M20.12 6.22l-2.32-3.03a.8.8 0 0 0-.63-.3H6.83a.8.8 0 0 0-.63.3L3.88 6.22A1.94 1.94 0 0 0 3.22 7.5c0 .5.18.96.5 1.3L11 17v4h2v-4l7.28-8.2c.32-.34.5-.8.5-1.3 0-.5-.19-.96-.66-1.28z"></path><path d="M7 11h10"></path></svg>
                    Акции и Бонусы
                </h2>
                
                <div class="bonus-grid">
                    <div class="bonus-card">
                        <div class="bonus-bg" style="background-image: url('http://static.photos/party/640x360/12');"></div>
                        <div class="bonus-content">
                            <div class="bonus-label">Приветственный пакет</div>
                            <h3 class="bonus-title">100% + 50 FS</h3>
                            <p class="bonus-desc">Удвойте свой первый депозит. Минимальный депозит 1000 RUB. Вейджер x30.</p>
                            <button class="btn btn-secondary" style="align-self: flex-start;">Забрать</button>
                        </div>
                    </div>
                    <div class="bonus-card">
                        <div class="bonus-bg" style="background-image: url('http://static.photos/finance/640x360/44');"></div>
                        <div class="bonus-content">
                            <div class="bonus-label" style="color: #a855f7;">Кешбэк</div>
                            <h3 class="bonus-title">До 15%</h3>
                            <p class="bonus-desc">В weekly кешбэк для активных игроков. Сумма возврата зависит от уровня в клубе.</p>
                            <button class="btn btn-secondary" style="align-self: flex-start;">Узнать больше</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- About Us Section -->
        <section class="about-section" style="padding: 60px 0; background: var(--mc-bg500); border-top: 1px solid var(--mc-bg600);">
            <div class="container">
                <div style="max-width: 800px; margin: 0 auto;">
                    <h2 class="section-title" style="justify-content: center;">О казино Arkada</h2>
                    <p style="font-size: 16px; line-height: 1.8; color: var(--mc-baseMain); text-align: center;">
                        <strong>Arkada Casino (Аркада Казино)</strong> — это современный и надежный портал для любителей азартных развлечений, работающий на официальном международном уровне. Наша первоочередная задача — предоставить игрокам безопасную среду, гарантирующую честность игровых процессов и конфиденциальность персональных данных.<br><br>
                        
                        В нашем каталоге собраны тысячи лицензионных игровых автоматов от ведущих мировых разработчиков, таких как NetEnt, Pragmatic Play и Play'n GO. Официальный сайт Аркада отличается интуитивно понятным интерфейсом, быстрой загрузкой страниц и адаптивным дизайном, который позволяет играть комфортно как с компьютера, так и с мобильных устройств.<br><br>
                        
                        Мы гордимся нашей щедрой системой бонусов и программы лояльности. От приветственного депозита для новичков до еженедельного кешбэка для опытных игроков — каждый пользователь найдет для себя выгодные условия. Служба поддержки работает 24/7, готовая оперативно решить любые вопросы. Выбирайте Arkada Casino — играйте ответственно и выигрывайте!
                    </p>
                </div>
            </div>
        </section>

        <!-- About Us Section -->
        <section class="about-section" style="padding: 60px 0; background: var(--mc-bg500); border-top: 1px solid var(--mc-bg300); border-bottom: 1px solid var(--mc-bg300);">
            <div class="container">
                <div style="max-width: 800px; margin: 0 auto; text-align: center;">
                    <h2 class="section-title" style="justify-content: center;">О казино Arkada</h2>
                    <p style="font-size: 16px; line-height: 1.7; color: var(--mc-baseMain);">
                        <strong>Arkada Casino (Аркада Казино)</strong> — это современная игровая платформа, созданная для тех, кто ценит качество, безопасность и честную игру. Мы предлагаем тысячи лицензионных слотов от мировых лидеров индустрии, таких как NetEnt, Pragmatic Play и Play'n GO. Наш официальный сайт обеспечивает полную конфиденциальность данных и мгновенные выплаты выигрышей.<br><br>
                        
                        Важной частью нашей философии является забота о игроках. Мы разработали щедрую систему бонусов, кешбэк и программу лояльности, чтобы вы могли получать максимум удовольствия от игры. Круглосуточная служба поддержки всегда готова помочь вам с любым вопросом. Присоединяйтесь к Arkada — где азарт встречается с надежностью!
                    </p>
                    <div style="margin-top: 30px; display: flex; justify-content: center; gap: 15px; flex-wrap: wrap;">
                        <div class="badge">
                            <svg class="icon-svg" viewBox="0 0 24 24" style="width:14px; height:14px; margin-right:4px;"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg>
                            Безопасность
                        </div>
                        <div class="badge">
                            <svg class="icon-svg" viewBox="0 0 24 24" style="width:14px; height:14px; margin-right:4px;"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                            Лучшие игры
                        </div>
                        <div class="badge">
                            <svg class="icon-svg" viewBox="0 0 24 24" style="width:14px; height:14px; margin-right:4px;"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                            Поддержка 24/7
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-logo">
                        <div style="width: 28px; height: 28px; background: var(--mc-main); border-radius: 4px; display: flex; align-items: center; justify-content: center; color: white; font-size: 14px;">A</div>
                        ARKADA
                    </div>
                    <p class="footer-text">
                        Платформа №1 для азартных развлечений. Официальная лицензия, безопасность и честная игра.
                    </p>
                    <div style="display: flex; gap: 12px;">
                        <a href="#" style="color: var(--mc-baseMain);"><svg class="icon-svg" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg></a>
                        <a href="#" style="color: var(--mc-baseMain);"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg></a>
                        <a href="#" style="color: var(--mc-baseMain);"><svg class="icon-svg" viewBox="0 0 24 24"><polygon points="12 2 22 8.5 22 15.5 12 22 2 15.5 2 8.5 12 2"></polygon><line x1="12" y1="22" x2="12" y2="15.5"></line><polyline points="22 8.5 12 15.5 2 8.5"></polyline><polyline points="2 15.5 12 8.5 22 15.5"></polyline><line x1="12" y1="2" x2="12" y2="8.5"></line></svg></a>
                    </div>
                </div>
                
                <div>
                    <div class="footer-links-head">Игры</div>
                    <ul class="footer-links">
                        <li><a href="#">Слоты</a></li>
                        <li><a href="#">Live Казино</a></li>
                        <li><a href="#">Настольные игры</a></li>
                        <li><a href="#">Быстрые игры</a></li>
                    </ul>
                </div>

                <div>
                    <div class="footer-links-head">Поддержка</div>
                    <ul class="footer-links">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Чат поддержки</a></li>
                        <li><a href="#">Правила</a></li>
                        <li><a href="#">Ответственная игра</a></li>
                    </ul>
                </div>

                <div>
                    <div class="footer-links-head">Платежи</div>
                    <div class="payment-icons">
                        <div class="pay-badge">VISA</div>
                        <div class="pay-badge">MC</div>
                        <div class="pay-badge">USDT</div>
                    </div>
                    <div class="footer-text" style="margin-top: 20px; font-size: 11px;">
                        18+ Азартные игры вызывает зависимость. Играйте ответственно.
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="footer-copy">© 2024 Arkada Casino. All rights reserved.</div>
                <div style="display: flex; gap: 16px; font-size: 12px; color: var(--mc-baseMain);">
                    <a href="#">Политика конфиденциальности</a>
                    <a href="#">Условия использования</a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        // === GAME DATA ===
        const games = [
            { name: "Gates of Olympus", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/10" },
            { name: "Sweet Bonanza", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/25" },
            { name: "Book of Dead", provider: "Play'n GO", img: "http://static.photos/gaming/320x240/33" },
            { name: "Razor Shark", provider: "Push Gaming", img: "http://static.photos/gaming/320x240/41" },
            { name: "Wolf Gold", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/52" },
            { name: "Starburst", provider: "NetEnt", img: "http://static.photos/gaming/320x240/63" },
            { name: "Buffalo King", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/74" },
            { name: "Money Train 3", provider: "Relax", img: "http://static.photos/gaming/320x240/85" },
            { name: "The Dog House", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/92" },
            { name: "Fruit Party", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/101" },
            { name: "Release the Kraken", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/112" },
            { name: "Fire Hot 100", provider: "Pragmatic", img: "http://static.photos/gaming/320x240/123" },
        ];

        // === RENDER GAMES ===
        const gamesContainer = document.getElementById('games-container');
        
        if(gamesContainer) {
            games.forEach(game => {
                const card = document.createElement('div');
                card.className = 'game-card';
                card.innerHTML = `
                    <div class="game-provider">${game.provider}</div>
                    <img src="${game.img}" alt="${game.name}" class="game-thumb" loading="lazy">
                    <div class="game-overlay">
                        <div class="game-name">${game.name}</div>
                        <button class="game-btn-play">Играть</button>
                    </div>
                `;
                gamesContainer.appendChild(card);
            });
        }

        // === MOBILE MENU ===
        const mobileToggle = document.getElementById('mobile-toggle');
        const mobileMenu = document.getElementById('mobile-menu');
        const mobileOverlay = document.getElementById('mobile-overlay');

        function toggleMenu() {
            mobileMenu.classList.toggle('open');
            mobileOverlay.classList.toggle('open');
            document.body.style.overflow = mobileMenu.classList.contains('open') ? 'hidden' : '';
        }

        mobileToggle.addEventListener('click', toggleMenu);
        mobileOverlay.addEventListener('click', toggleMenu);

        // === HEADER SCROLL SHADOW ===
        const header = document.getElementById('header');
        window.addEventListener('scroll', () => {
            if (window.scrollY > 10) {
                header.style.borderBottomColor = 'rgba(129, 148, 200, 0.2)';
                header.style.background = 'rgba(0, 4, 11, 0.95)';
            } else {
                header.style.borderBottomColor = 'rgba(129, 148, 200, 0.1)';
                header.style.background = 'rgba(0, 4, 11, 0.85)';
            }
        });

        // === CATEGORY FILTERS (VISUAL ONLY) ===
        const catBtns = document.querySelectorAll('.cat-btn');
        catBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                catBtns.forEach(b => b.classList.remove('active'));
                this.classList.add('active');
            });
        });
    </script>
</body>
</html>
