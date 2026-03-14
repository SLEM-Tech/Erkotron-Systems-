-- ============================================================
-- Erkotron Seed Data — Computers, Hardware & Accessories
-- Run via: GET /api/db/seed?secret=seed-db-2024
-- ============================================================

-- ── Categories ───────────────────────────────────────────────

-- 6 Main categories (no sub-categories)
INSERT INTO erkotron_categories (name, slug, description, parent_id, image_url, count) VALUES
  ('Computers & Laptops',      'computers-laptops',      'Gaming laptops, business notebooks, desktops and workstations', NULL, 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=400', 0),
  ('PC Components',            'pc-components',          'CPUs, GPUs, motherboards, RAM, cooling and power supplies',     NULL, 'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=400', 0),
  ('Storage Solutions',        'storage-solutions',      'SSDs, HDDs, NVMe drives and external storage devices',          NULL, 'https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?w=400', 0),
  ('Peripherals & Input',      'peripherals-input',      'Keyboards, mice, headsets, webcams and gaming controllers',     NULL, 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400', 0),
  ('Monitors & Displays',      'monitors-displays',      'Gaming monitors, professional displays and monitor accessories', NULL, 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=400', 0),
  ('Networking & Connectivity','networking-connectivity','Routers, switches, WiFi adapters and network cables',           NULL, 'https://images.unsplash.com/photo-1606904825846-647eb07f5be2?w=400', 0)
ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 1: COMPUTERS & LAPTOPS (15 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ROG Zephyrus G16 Gaming Laptop',
  'asus-rog-zephyrus-g16',
  'ERK-LAP-001',
  'Ultra-slim gaming powerhouse. Intel Core i9-14900HS, NVIDIA RTX 4070 8GB, 16" QHD+ 240Hz ROG Nebula Display, 32GB DDR5, 1TB PCIe 4.0 SSD. ROG Intelligent Cooling with liquid metal, per-key RGB keyboard, 90Wh battery.',
  'Premium gaming laptop with RTX 4070 and 240Hz display',
  1950000, 2100000, 1950000, 'instock', 8, 32, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI Titan 18 HX Gaming Laptop',
  'msi-titan-18-hx',
  'ERK-LAP-002',
  'Extreme gaming performance. Intel Core i9-14900HX, NVIDIA RTX 4090 16GB, 18" UHD+ 120Hz Mini LED display, 64GB DDR5, 2TB NVMe SSD. Cooler Boost 5 with 4 fans, Cherry MX mechanical keyboard, Dynaudio speakers.',
  'Ultimate gaming laptop with RTX 4090',
  3850000, 4200000, 3850000, 'instock', 3, 18, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Lenovo Legion Pro 7i Gen 9',
  'lenovo-legion-pro-7i-gen9',
  'ERK-LAP-003',
  'Pro-level gaming laptop. Intel Core i9-14900HX, NVIDIA RTX 4080 12GB, 16" WQXGA 240Hz display with G-SYNC, 32GB DDR5, 1TB SSD. Legion Coldfront Vapor cooling, TrueStrike keyboard, 99.99Wh battery.',
  'Professional gaming laptop with RTX 4080',
  2650000, 2850000, 2650000, 'instock', 6, 28, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer Blade 16 Gaming Laptop',
  'razer-blade-16',
  'ERK-LAP-004',
  'Premium thin gaming laptop. Intel Core i9-14900HX, NVIDIA RTX 4080 12GB, 16" UHD+ 120Hz display, 32GB DDR5, 2TB SSD. CNC aluminum chassis, per-key RGB Chroma keyboard, Vapor Chamber cooling, THX Spatial Audio.',
  'Premium thin gaming laptop with aluminum build',
  2950000, 3200000, 2950000, 'instock', 5, 24, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Acer Predator Helios 18 Gaming Laptop',
  'acer-predator-helios-18',
  'ERK-LAP-005',
  'Large screen gaming. Intel Core i9-14900HX, NVIDIA RTX 4070 8GB, 18" WUXGA 165Hz display, 32GB DDR5, 1TB SSD. 5th Gen AeroBlade 3D fans, RGB 4-zone keyboard, DTS:X Ultra audio.',
  '18" gaming laptop with RTX 4070',
  1850000, 2000000, 1850000, 'instock', 10, 22, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Dell XPS 17 Creator Laptop',
  'dell-xps-17-creator',
  'ERK-LAP-006',
  'Content creation powerhouse. Intel Core i9-13900H, NVIDIA RTX 4070 8GB, 17" UHD+ touchscreen, 64GB DDR5, 2TB SSD. Precision-machined aluminum, factory color calibrated, 97Wh battery, Thunderbolt 4.',
  'Premium 17" creator laptop with RTX 4070',
  2450000, 2650000, 2450000, 'instock', 7, 26, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'HP ZBook Studio 16 G10 Workstation',
  'hp-zbook-studio-16-g10',
  'ERK-LAP-007',
  'Mobile workstation. Intel Core i9-13900H, NVIDIA RTX 4000 Ada 12GB, 16" DreamColor 4K display, 64GB DDR5 ECC, 2TB SSD. MIL-STD-810H tested, ISV certified, Bang & Olufsen audio, HP Wolf Security.',
  'Professional workstation with RTX 4000 Ada',
  2850000, 3100000, 2850000, 'instock', 5, 16, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Lenovo ThinkPad P16s Gen 2 Mobile Workstation',
  'lenovo-thinkpad-p16s-gen2',
  'ERK-LAP-008',
  'Portable workstation power. Intel Core i7-1370P vPro, NVIDIA RTX A500 4GB, 16" WUXGA IPS, 32GB DDR5, 1TB SSD. MIL-STD-810H, ISV certified, FHD webcam with privacy shutter, up to 16 hours battery.',
  'Business workstation with vPro and RTX A500',
  1650000, 1800000, 1650000, 'instock', 8, 20, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ProArt Studiobook 16 OLED',
  'asus-proart-studiobook-16-oled',
  'ERK-LAP-009',
  'Creator-focused laptop. Intel Core i9-13980HX, NVIDIA RTX 4060 8GB, 16" 3.2K OLED Pantone Validated, 32GB DDR5, 2TB SSD. ASUS Dial for creative control, MIL-STD-810H, ProArt Creator Hub, WiFi 6E.',
  'OLED creator laptop with ASUS Dial control',
  1950000, 2150000, 1950000, 'instock', 6, 24, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI Creator Z17 HX Studio',
  'msi-creator-z17-hx-studio',
  'ERK-LAP-010',
  'Professional creator laptop. Intel Core i9-13950HX, NVIDIA RTX 4060 8GB, 17" QHD+ 165Hz Mini LED display, 64GB DDR5, 2TB SSD. Per-key RGB keyboard, Thunderbolt 4, MSI Center software suite.',
  '17" creator laptop with Mini LED display',
  2250000, 2450000, 2250000, 'instock', 5, 18, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'CyberPowerPC Gamer Xtreme VR Gaming Desktop',
  'cyberpower-gamer-xtreme-vr',
  'ERK-DSK-001',
  'Ready-to-game desktop PC. Intel Core i7-14700KF, NVIDIA RTX 4070 Ti 12GB, 32GB DDR5-5600, 2TB NVMe SSD, Windows 11 Home. RGB liquid cooling, tempered glass case, 850W 80+ Gold PSU, WiFi 6E.',
  'Pre-built gaming PC with RTX 4070 Ti',
  2350000, 2550000, 2350000, 'instock', 8, 32, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NZXT Player: Prime Gaming Desktop',
  'nzxt-player-prime',
  'ERK-DSK-002',
  'Premium pre-built gaming rig. AMD Ryzen 9 7950X, NVIDIA RTX 4080 16GB, 32GB DDR5-6000, 2TB Gen4 SSD, NZXT H7 Flow case with 4x RGB fans, 360mm NZXT Kraken AIO, 1000W 80+ Gold PSU.',
  'High-end AMD gaming PC with RTX 4080',
  3150000, 3400000, 3150000, 'instock', 5, 28, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Alienware Aurora R16 Gaming Desktop',
  'alienware-aurora-r16',
  'ERK-DSK-003',
  'Iconic Alienware design. Intel Core i9-14900KF, NVIDIA RTX 4070 12GB, 32GB DDR5-5600, 2TB SSD, Windows 11 Pro. AlienFX RGB lighting, Legend 3.0 design, liquid cooling, 750W 80+ Platinum PSU.',
  'Alienware gaming desktop with Legend 3.0 design',
  2550000, 2750000, 2550000, 'instock', 6, 24, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel NUC 14 Pro Mini PC',
  'intel-nuc-14-pro',
  'ERK-DSK-004',
  'Compact powerhouse. Intel Core i7-1370P, Intel Iris Xe graphics, supports up to 96GB DDR5, dual M.2 slots, Thunderbolt 4, WiFi 6E, 2.5Gb Ethernet. Ultra-compact 0.6L chassis. Barebones kit.',
  'Ultra-compact mini PC with Thunderbolt 4',
  520000, 580000, 520000, 'instock', 12, 22, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Minisforum Venus UM890 Pro Mini PC',
  'minisforum-venus-um890-pro',
  'ERK-DSK-005',
  'AMD Ryzen mini PC. AMD Ryzen 9 8945HS (8C/16T up to 5.2GHz), AMD Radeon 780M, 32GB DDR5, 1TB SSD. Dual HDMI 2.1, USB4, 2.5G LAN, WiFi 6E, OCuLink support. Pre-installed Windows 11 Pro.',
  'Powerful Ryzen 9 mini PC with Radeon 780M',
  685000, 750000, 685000, 'instock', 10, 26, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 2: PC COMPONENTS (25 products)
-- ══════════════════════════════════════════════════════════════

-- CPUs
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Core i9-14900K Processor',
  'intel-core-i9-14900k',
  'ERK-CPU-001',
  'Flagship Intel CPU. 24 cores (8P+16E), 32 threads, up to 6.0GHz boost, Intel UHD Graphics 770, 36MB cache, 125W base TDP. Unlocked for overclocking, LGA1700 socket, PCIe 5.0 + DDR5 support.',
  '24-core flagship Intel CPU - up to 6.0GHz',
  485000, 530000, 485000, 'instock', 18, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Ryzen 9 7950X3D Processor',
  'amd-ryzen-9-7950x3d',
  'ERK-CPU-002',
  'Gaming flagship with 3D V-Cache. 16 cores, 32 threads, up to 5.7GHz boost, 128MB L3 cache with 3D V-Cache technology, 120W TDP. AM5 socket, PCIe 5.0, DDR5, integrated RDNA 2 graphics.',
  '16-core gaming champion with 3D V-Cache',
  585000, 640000, 585000, 'instock', 12, 48, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Core i7-14700K Processor',
  'intel-core-i7-14700k',
  'ERK-CPU-003',
  'High-performance gaming CPU. 20 cores (8P+12E), 28 threads, up to 5.6GHz boost, 33MB cache, 125W base TDP. Unlocked multiplier, LGA1700, PCIe 5.0, excellent for gaming and content creation.',
  '20-core i7 with 5.6GHz boost - great for gaming',
  365000, 400000, 365000, 'instock', 25, 52, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Ryzen 7 7800X3D Processor',
  'amd-ryzen-7-7800x3d',
  'ERK-CPU-004',
  'Best gaming CPU. 8 cores, 16 threads, up to 5.0GHz boost, 96MB L3 cache with 3D V-Cache, 120W TDP. AM5 socket, PCIe 5.0, DDR5. Dominates gaming benchmarks with exceptional 1% lows.',
  'Best gaming CPU with 3D V-Cache technology',
  420000, 460000, 420000, 'instock', 20, 68, 4.95, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Core i5-14600K Processor',
  'intel-core-i5-14600k',
  'ERK-CPU-005',
  'Mainstream powerhouse. 14 cores (6P+8E), 20 threads, up to 5.3GHz boost, 24MB cache, 125W base TDP. Unlocked, LGA1700, great price-to-performance for gaming builds.',
  'Excellent mid-range gaming CPU - 14 cores',
  248000, 275000, 248000, 'instock', 35, 58, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Ryzen 5 7600X Processor',
  'amd-ryzen-5-7600x',
  'ERK-CPU-006',
  'Budget gaming champion. 6 cores, 12 threads, up to 5.3GHz boost, 32MB L3 cache, 105W TDP. AM5 socket, PCIe 5.0, DDR5, integrated RDNA 2 graphics. Best value for 1080p/1440p gaming.',
  'Budget 6-core gaming CPU with great value',
  198000, 220000, 198000, 'instock', 40, 62, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- GPUs
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4090 24GB (ASUS ROG Strix)',
  'nvidia-rtx-4090-asus-strix',
  'ERK-GPU-001',
  'Ultimate gaming GPU. 24GB GDDR6X, 16384 CUDA cores, 2640MHz boost, DLSS 3.5, ray tracing, AV1 encoding. ROG Strix cooling with Axial-tech fans, 0dB mode, ARGB lighting, 3x8-pin power.',
  'Flagship RTX 4090 with premium ROG cooling',
  1850000, 2000000, 1850000, 'instock', 6, 38, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4080 SUPER 16GB (MSI Gaming X Trio)',
  'nvidia-rtx-4080-super-msi',
  'ERK-GPU-002',
  'High-end 4K gaming. 16GB GDDR6X, 10240 CUDA cores, 2550MHz boost, DLSS 3.5, ADA Lovelace architecture. MSI Tri Frozr 3 cooling, torx 5.0 fans, ARGB Mystic Light, metal backplate.',
  'RTX 4080 SUPER for 4K gaming excellence',
  1150000, 1250000, 1150000, 'instock', 10, 32, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4070 Ti SUPER 16GB (Gigabyte Gaming OC)',
  'nvidia-rtx-4070-ti-super-gigabyte',
  'ERK-GPU-003',
  '1440p/4K gaming champion. 16GB GDDR6X, 8448 CUDA cores, 2610MHz boost, DLSS 3.5. Gigabyte Windforce 3X cooling, RGB Fusion 2.0, dual BIOS, metal backplate, 2x8-pin power.',
  'RTX 4070 Ti SUPER - perfect for 1440p/4K',
  820000, 890000, 820000, 'instock', 15, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Radeon RX 7900 XTX 24GB (Sapphire Nitro+)',
  'amd-rx-7900-xtx-sapphire',
  'ERK-GPU-004',
  'AMD flagship GPU. 24GB GDDR6, 6144 Stream processors, 2680MHz boost, RDNA 3 architecture, FSR 3, ray tracing. Sapphire Tri-X cooling, vapor chamber, ARGB, dual BIOS, 3x8-pin power.',
  'AMD flagship with 24GB VRAM and RDNA 3',
  985000, 1080000, 985000, 'instock', 12, 36, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4070 12GB (ASUS Dual)',
  'nvidia-rtx-4070-asus-dual',
  'ERK-GPU-005',
  '1440p gaming sweet spot. 12GB GDDR6X, 5888 CUDA cores, 2475MHz boost, DLSS 3.5, 200W TDP. ASUS Dual Axial-tech fans, 2.5-slot design, Auto-Extreme manufacturing, single 8-pin power.',
  'Excellent 1440p gaming GPU with 12GB VRAM',
  620000, 680000, 620000, 'instock', 22, 58, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Radeon RX 7800 XT 16GB (PowerColor Red Devil)',
  'amd-rx-7800-xt-powercolor',
  'ERK-GPU-006',
  '1440p AMD champion. 16GB GDDR6, 3840 Stream processors, 2565MHz boost, RDNA 3, FSR 3, AV1 encoding. PowerColor Red Devil triple-fan cooling, RGB Devil, dual BIOS, 2x8-pin power.',
  '1440p gaming beast with 16GB VRAM',
  535000, 585000, 535000, 'instock', 18, 48, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Motherboards
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ROG Maximus Z790 Hero (LGA1700)',
  'asus-rog-maximus-z790-hero',
  'ERK-MB-001',
  'Flagship Intel motherboard. LGA1700, Z790 chipset, PCIe 5.0 x16 + 5.0 M.2, DDR5-7800+ (OC), WiFi 6E, 2.5Gb LAN, Thunderbolt 4, AI Overclocking, ROG SupremeFX audio, Aura Sync RGB.',
  'Premium Z790 ATX board for Intel 14th/13th Gen',
  485000, 530000, 485000, 'instock', 12, 32, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI MEG X670E ACE (AM5)',
  'msi-meg-x670e-ace',
  'ERK-MB-002',
  'Premium AMD motherboard. AM5, X670E chipset, PCIe 5.0 x16 + dual 5.0 M.2, DDR5-6400+ (OC), WiFi 6E, 2.5Gb + 1Gb LAN, USB 3.2 Gen 2x2, EZ Debug LED, Mystic Light RGB.',
  'High-end X670E board for Ryzen 9000/7000',
  420000, 460000, 420000, 'instock', 15, 28, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Gigabyte B650 AORUS Elite AX (AM5)',
  'gigabyte-b650-aorus-elite-ax',
  'ERK-MB-003',
  'Value AM5 platform. B650 chipset, PCIe 4.0 x16 + M.2, DDR5-6400+ (OC), WiFi 6E, 2.5Gb LAN, Q-Flash Plus, RGB Fusion 2.0. Great for Ryzen 7000 builds, excellent VRM for the price.',
  'Solid B650 board with WiFi 6E - great value',
  165000, 185000, 165000, 'instock', 30, 48, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASRock Z790 PG Lightning (LGA1700)',
  'asrock-z790-pg-lightning',
  'ERK-MB-004',
  'Mainstream Z790 board. LGA1700, Z790 chipset, PCIe 5.0 x16 + 4.0 M.2, DDR5-6400+ (OC), 2.5Gb LAN, Polychrome RGB. Good VRM, solid features for mid-range Intel builds.',
  'Budget Z790 ATX with PCIe 5.0 support',
  185000, 210000, 185000, 'instock', 25, 38, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- RAM
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'G.Skill Trident Z5 RGB 32GB (2x16GB) DDR5-6400 CL32',
  'gskill-trident-z5-32gb-6400',
  'ERK-RAM-001',
  'Premium DDR5 kit. 32GB (2x16GB), 6400MHz, CL32-39-39-102, 1.40V, hand-screened ICs, Intel XMP 3.0, AMD EXPO, RGB lighting. Optimized for Intel 13th/14th Gen and AMD Ryzen 7000.',
  'High-performance DDR5-6400 RGB kit - 32GB',
  148000, 165000, 148000, 'instock', 40, 52, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair Vengeance DDR5 64GB (2x32GB) 6000MHz CL36',
  'corsair-vengeance-ddr5-64gb-6000',
  'ERK-RAM-002',
  'High-capacity DDR5. 64GB (2x32GB), 6000MHz, CL36-36-36-76, 1.35V, Intel XMP 3.0, AMD EXPO, aluminum heatspreader. Perfect for content creation and heavy multitasking.',
  'Large 64GB DDR5-6000 kit for creators',
  268000, 295000, 268000, 'instock', 30, 42, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Kingston FURY Beast DDR5 32GB (2x16GB) 5600MHz CL36',
  'kingston-fury-beast-32gb-5600',
  'ERK-RAM-003',
  'Reliable DDR5 performance. 32GB (2x16GB), 5600MHz, CL36-38-38, 1.25V, Intel XMP 3.0, AMD EXPO ready, low-profile heatspreader. Great value for mainstream builds.',
  'Solid DDR5-5600 kit - great value at 32GB',
  118000, 135000, 118000, 'instock', 50, 58, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Cooling Solutions
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Noctua NH-D15 chromax.black CPU Cooler',
  'noctua-nh-d15-chromax',
  'ERK-COOL-001',
  'Flagship air cooler. Dual-tower, 6 heatpipes, 2x NF-A15 PWM fans, SecuFirm2 mounting (LGA1700/AM5), NT-H1 paste included. 250W TDP, virtually silent. All-black chromax design.',
  'Premium dual-tower air cooler - chromax black',
  105000, 120000, 105000, 'instock', 25, 88, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair iCUE H150i Elite LCD 360mm AIO',
  'corsair-h150i-elite-lcd',
  'ERK-COOL-002',
  'Premium 360mm AIO. IPS LCD screen on pump (customizable GIFs/temps), 3x ML RGB fans, Zero RPM mode, iCUE software control, Commander CORE XT controller. Excellent performance, 6-year warranty.',
  '360mm AIO with customizable LCD screen',
  220000, 245000, 220000, 'instock', 20, 62, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Arctic Liquid Freezer III 280mm AIO',
  'arctic-liquid-freezer-iii-280',
  'ERK-COOL-003',
  'Value 280mm AIO. High-performance pump, 2x P14 PWM fans, VRM fan on block, offset mounting, low noise, long tubing. Best price-to-performance AIO, 6-year warranty.',
  'Budget 280mm AIO with VRM fan - best value',
  120000, 135000, 120000, 'instock', 35, 72, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Thermalright Peerless Assassin 120 SE CPU Cooler',
  'thermalright-peerless-assassin-120',
  'ERK-COOL-004',
  'Budget air cooling champion. Dual-tower, 6 heatpipes, 2x TL-C12C fans, LGA1700/AM5 support. Matches premium coolers at fraction of price. 220W TDP, 25dBA noise.',
  'Budget dual-tower cooler with premium performance',
  32000, 38000, 32000, 'instock', 60, 95, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Power Supplies
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair RM1000x SHIFT 1000W 80+ Gold Fully Modular',
  'corsair-rm1000x-shift',
  'ERK-PSU-001',
  'High-wattage modular PSU. 1000W, 80 PLUS Gold, fully modular cables, Zero RPM fan mode, 105°C capacitors, ATX 3.0 ready with 12VHPWR cable, 10-year warranty.',
  '1000W 80+ Gold fully modular - ATX 3.0 ready',
  168000, 185000, 168000, 'instock', 28, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Seasonic FOCUS GX-850 850W 80+ Gold Fully Modular',
  'seasonic-focus-gx-850',
  'ERK-PSU-002',
  'Premium 850W PSU. 80 PLUS Gold (90%+ efficiency), fully modular, Fluid Dynamic bearing fan, hybrid silent fan control, 12V single rail, 10-year warranty. Compact 140mm depth.',
  '850W 80+ Gold modular PSU from Seasonic',
  135000, 150000, 135000, 'instock', 35, 58, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI MAG A850GL PCIE5 850W 80+ Gold Fully Modular',
  'msi-mag-a850gl-pcie5',
  'ERK-PSU-003',
  'ATX 3.0 ready PSU. 850W, 80 PLUS Gold, fully modular, native 12VHPWR (600W), Semi-fanless mode, DC-DC design, 100% Japanese capacitors, 10-year warranty.',
  '850W ATX 3.0 PSU with native PCIe 5.0 cable',
  128000, 145000, 128000, 'instock', 30, 42, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 3: STORAGE SOLUTIONS (15 products)
-- ══════════════════════════════════════════════════════════════

-- NVMe SSDs
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung 990 PRO 2TB NVMe PCIe 4.0 SSD',
  'samsung-990-pro-2tb',
  'ERK-SSD-001',
  'Flagship PCIe 4.0 SSD. 2TB capacity, 7450MB/s read, 6900MB/s write, Samsung V-NAND, built-in heatsink, DRAM cache, 1200 TBW endurance, Samsung Magician software, 5-year warranty.',
  'Top-tier PCIe 4.0 NVMe - 7450MB/s read',
  195000, 220000, 195000, 'instock', 40, 68, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'WD Black SN850X 2TB NVMe PCIe 4.0 SSD',
  'wd-black-sn850x-2tb',
  'ERK-SSD-002',
  'Gaming NVMe champion. 2TB, 7300MB/s read, 6600MB/s write, PCIe 4.0 x4, Game Mode 2.0, WD Dashboard software, adaptive thermal management. Optimized for DirectStorage.',
  'Gaming-focused PCIe 4.0 NVMe - 7300MB/s',
  185000, 210000, 185000, 'instock', 45, 72, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Crucial T700 2TB NVMe PCIe 5.0 SSD',
  'crucial-t700-2tb',
  'ERK-SSD-003',
  'Next-gen PCIe 5.0 speed. 2TB, 12400MB/s read, 11800MB/s write, Micron 232-layer TLC NAND, DRAM cache, integrated heatspreader, 1200 TBW. Future-proof performance.',
  'PCIe 5.0 SSD with 12400MB/s read speed',
  385000, 430000, 385000, 'instock', 20, 38, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Kingston KC3000 1TB NVMe PCIe 4.0 SSD',
  'kingston-kc3000-1tb',
  'ERK-SSD-004',
  'High-performance Gen4 SSD. 1TB, 7000MB/s read, 6000MB/s write, Phison E18 controller, 3D TLC NAND, DRAM cache, compact M.2 2280. Great for PS5 expansion or PC.',
  'Fast PCIe 4.0 NVMe - 7000MB/s read',
  98000, 115000, 98000, 'instock', 55, 58, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Crucial P3 Plus 4TB NVMe PCIe 4.0 SSD',
  'crucial-p3-plus-4tb',
  'ERK-SSD-005',
  'High-capacity Gen4 storage. 4TB, 5000MB/s read, 4200MB/s write, Micron 3D NAND, DRAMless but fast, low power consumption. Best value for large game libraries.',
  'Massive 4TB PCIe 4.0 SSD - great value',
  248000, 280000, 248000, 'instock', 30, 48, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung 870 EVO 2TB 2.5" SATA SSD',
  'samsung-870-evo-2tb',
  'ERK-SSD-006',
  'Premium SATA SSD. 2TB, 560MB/s read, 530MB/s write, Samsung V-NAND, Intelligent TurboWrite, 1200 TBW endurance, Samsung Magician software. Best SATA drive, 5-year warranty.',
  'Top SATA SSD with 2TB capacity',
  148000, 165000, 148000, 'instock', 50, 85, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Crucial MX500 1TB 2.5" SATA SSD',
  'crucial-mx500-1tb',
  'ERK-SSD-007',
  'Value SATA upgrade. 1TB, 560MB/s read, 510MB/s write, Micron 3D NAND, DRAM cache, Integrated Power Loss Immunity, 360 TBW, 5-year warranty. Best budget SATA SSD.',
  'Budget SATA SSD - reliable and fast',
  68000, 78000, 68000, 'instock', 70, 92, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- External Storage
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung T9 Portable SSD 2TB',
  'samsung-t9-portable-2tb',
  'ERK-EXT-001',
  'Fastest portable SSD. 2TB, USB 3.2 Gen 2x2 (20Gbps), 2000MB/s read/write, shock-resistant up to 3m, compact design, USB-C cable included. PC/Mac/Android/console compatible.',
  'Ultra-fast 2TB portable SSD - 2000MB/s',
  220000, 245000, 220000, 'instock', 35, 52, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'SanDisk Extreme PRO Portable SSD 4TB',
  'sandisk-extreme-pro-4tb',
  'ERK-EXT-002',
  'High-capacity portable. 4TB, 2000MB/s read/write, USB 3.2 Gen 2x2, IP55 water/dust resistant, carabiner loop, forged aluminum, 5-year warranty. Perfect for video pros.',
  'Rugged 4TB portable SSD with 2000MB/s speed',
  420000, 470000, 420000, 'instock', 20, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'WD My Passport 5TB Portable HDD',
  'wd-my-passport-5tb',
  'ERK-EXT-003',
  'High-capacity portable HDD. 5TB, USB 3.2 Gen 1, hardware encryption, password protection, WD Backup software, automatic backup, compact design. Great value per GB.',
  'Affordable 5TB portable HDD with encryption',
  88000, 98000, 88000, 'instock', 60, 68, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Seagate IronWolf Pro 8TB NAS HDD',
  'seagate-ironwolf-pro-8tb',
  'ERK-HDD-001',
  'NAS-optimized hard drive. 8TB, 7200 RPM, 256MB cache, CMR technology, 300TB/year workload, RV sensors, AgileArray firmware, IronWolf Health Management, 5-year warranty.',
  '8TB NAS HDD for 24/7 operation',
  285000, 320000, 285000, 'instock', 25, 38, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'WD Red Plus 4TB NAS HDD',
  'wd-red-plus-4tb',
  'ERK-HDD-002',
  'Reliable NAS storage. 4TB, 5400 RPM, 128MB cache, CMR recording, NASware 3.0, 180TB/year workload, optimized for 1-8 bay NAS, 3-year warranty.',
  '4TB CMR NAS drive - reliable and quiet',
  125000, 145000, 125000, 'instock', 40, 52, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Seagate BarraCuda 2TB 3.5" HDD',
  'seagate-barracuda-2tb',
  'ERK-HDD-003',
  'Desktop storage workhorse. 2TB, 7200 RPM, 256MB cache, SATA 6Gb/s, Multi-Tier Caching, 2-year warranty. Perfect for bulk storage in desktop builds.',
  'Reliable 2TB desktop HDD - 7200 RPM',
  52000, 60000, 52000, 'instock', 80, 75, 4.60, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Western Digital Blue 1TB 3.5" HDD',
  'wd-blue-1tb',
  'ERK-HDD-004',
  'Budget desktop storage. 1TB, 7200 RPM, 64MB cache, SATA 6Gb/s, NoTouch Ramp Load, IntelliSeek, 2-year warranty. Great for secondary storage.',
  'Budget 1TB desktop HDD',
  38000, 45000, 38000, 'instock', 100, 88, 4.55, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 4: PERIPHERALS & INPUT (15 products)
-- ══════════════════════════════════════════════════════════════

-- Keyboards
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Wooting 60HE+ Magnetic Switch Gaming Keyboard',
  'wooting-60he-plus',
  'ERK-KB-001',
  'Revolutionary analog keyboard. 60% layout, Lekker Hall Effect magnetic switches, adjustable actuation (0.1-4.0mm), Rapid Trigger, Tachyon Mode, per-key RGB, USB-C. Ultimate competitive advantage.',
  'Magnetic switch keyboard with Rapid Trigger',
  185000, 210000, 185000, 'instock', 15, 68, 4.95, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Keychron Q1 Pro QMK/VIA Wireless Mechanical Keyboard',
  'keychron-q1-pro',
  'ERK-KB-002',
  'Premium 75% mechanical keyboard. CNC aluminum body, gasket mount, hot-swappable, QMK/VIA support, per-key RGB, wireless/wired (2.4GHz + Bluetooth 5.1), 4000mAh battery, Gateron switches.',
  'Premium wireless mechanical with QMK/VIA',
  195000, 220000, 195000, 'instock', 20, 58, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer Huntsman V3 Pro Esports Gaming Keyboard',
  'razer-huntsman-v3-pro',
  'ERK-KB-003',
  'Esports-grade keyboard. Full-size, Razer Analog Optical Gen-2 switches, adjustable actuation, Rapid Trigger, per-key RGB Chroma, Razer HyperPolling 8000Hz, wired/wireless, magnetic wrist rest.',
  'Esports keyboard with 8000Hz polling',
  220000, 250000, 220000, 'instock', 18, 52, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Mice
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech G Pro X Superlight 2 Wireless Gaming Mouse',
  'logitech-gpro-x-superlight-2',
  'ERK-MS-001',
  'Ultra-light esports mouse. HERO 2 sensor (32K DPI), 60g weight, LIGHTSPEED wireless, optical switches, PTFE feet, 95-hour battery, USB-C charging. Designed with pro gamers.',
  'Ultra-light 60g wireless gaming mouse',
  148000, 165000, 148000, 'instock', 25, 88, 4.95, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer Viper V3 Pro Wireless Gaming Mouse',
  'razer-viper-v3-pro',
  'ERK-MS-002',
  'Esports wireless mouse. Focus Pro 30K sensor, 30000 DPI, 95g weight, HyperSpeed wireless, optical switches Gen-3, 90-hour battery, USB-C dock included, HyperPolling 4000Hz dongle.',
  'Pro wireless mouse with 30K sensor',
  142000, 160000, 142000, 'instock', 28, 72, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech MX Master 3S Wireless Productivity Mouse',
  'logitech-mx-master-3s',
  'ERK-MS-003',
  'Flagship productivity mouse. 8000 DPI sensor, MagSpeed scroll wheel, Quiet Clicks, multi-device (3 devices), Logi Bolt + Bluetooth, USB-C charging, 70-day battery. Ergonomic design.',
  'Premium productivity mouse with MagSpeed scroll',
  105000, 120000, 105000, 'instock', 40, 95, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Headsets
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'SteelSeries Arctis Nova Pro Wireless Gaming Headset',
  'steelseries-arctis-nova-pro-wireless',
  'ERK-HS-001',
  'Premium wireless gaming headset. Active Noise Cancellation, Dual Wireless (2.4GHz + Bluetooth), Infinity Power System (swappable batteries), 360° Spatial Audio, GameDAC 2, multi-platform.',
  'Wireless gaming headset with ANC and dual wireless',
  335000, 375000, 335000, 'instock', 15, 62, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'HyperX Cloud Alpha Wireless Gaming Headset',
  'hyperx-cloud-alpha-wireless',
  'ERK-HS-002',
  'Long-battery wireless gaming. 300-hour battery life, DTS Headphone:X Spatial Audio, dual chamber drivers, detachable noise-cancelling mic, memory foam, aluminum frame. Legendary battery.',
  'Wireless gaming headset with 300hr battery',
  168000, 185000, 168000, 'instock', 22, 78, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer BlackShark V2 Pro Wireless Esports Headset',
  'razer-blackshark-v2-pro',
  'ERK-HS-003',
  'Esports wireless headset. THX Spatial Audio, Razer TriForce Titanium 50mm drivers, detachable HyperClear mic, 70-hour battery, memory foam cushions, USB-C charging, HyperSpeed wireless.',
  'Esports wireless headset with THX Spatial Audio',
  152000, 170000, 152000, 'instock', 25, 68, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Webcams
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech Brio 4K Pro Webcam',
  'logitech-brio-4k-pro',
  'ERK-WC-001',
  'Premium 4K webcam. 4K Ultra HD at 30fps or 1080p at 60fps, HDR, RightLight 3 with HDR, 5x digital zoom, dual omnidirectional mics, Windows Hello, USB-C, adjustable field of view (65°/78°/90°).',
  '4K webcam with HDR and Windows Hello',
  188000, 210000, 188000, 'instock', 30, 52, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Elgato Facecam Pro 4K Webcam',
  'elgato-facecam-pro-4k',
  'ERK-WC-002',
  'Streamer 4K webcam. 4K60 fps, Sony STARVIS CMOS sensor, Prime Lens (f/2.0), advanced image processing, Camera Hub software control, uncompressed 4K video, USB 3.0.',
  'Streamer-grade 4K60 webcam with Sony sensor',
  242000, 270000, 242000, 'instock', 18, 42, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- Controllers
INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Xbox Wireless Controller (Carbon Black)',
  'xbox-wireless-controller-carbon',
  'ERK-CTRL-001',
  'Official Xbox controller for PC. Bluetooth + Xbox Wireless, textured grip, hybrid D-pad, Share button, 3.5mm audio jack, USB-C rechargeable, 40-hour battery. Works with Xbox and Windows.',
  'Official Xbox controller for PC gaming',
  58000, 65000, 58000, 'instock', 60, 98, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Sony DualSense Wireless Controller',
  'sony-dualsense-controller',
  'ERK-CTRL-002',
  'PlayStation 5 controller for PC. Haptic feedback, adaptive triggers, built-in microphone, motion controls, USB-C charging, 3.5mm audio jack. Full PC support via USB or Bluetooth.',
  'PS5 DualSense with haptic feedback for PC',
  68000, 75000, 68000, 'instock', 55, 88, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  '8BitDo Ultimate Wireless 2.4G Controller',
  '8bitdo-ultimate-wireless',
  'ERK-CTRL-003',
  'Premium multi-platform controller. Hall Effect joysticks (no drift), charging dock included, 2.4GHz + Bluetooth, custom profiles, back buttons, Ultimate Software. Works with PC, Switch, Android.',
  'Premium controller with Hall Effect sticks',
  52000, 60000, 52000, 'instock', 40, 72, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 5: MONITORS & DISPLAYS (10 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ROG Swift OLED PG27AQDM 27" Gaming Monitor',
  'asus-rog-swift-pg27aqdm',
  'ERK-MON-001',
  'OLED gaming perfection. 27" QHD (2560x1440) OLED, 240Hz, 0.03ms response, G-SYNC Compatible, 99% DCI-P3, custom heatsink, uniform brightness, DisplayWidget Center. Ultimate gaming display.',
  '27" QHD OLED 240Hz - 0.03ms response',
  920000, 1000000, 920000, 'instock', 8, 58, 4.95, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung Odyssey OLED G8 34" Ultrawide Gaming Monitor',
  'samsung-odyssey-oled-g8-34',
  'ERK-MON-002',
  'Ultrawide OLED gaming. 34" UWQHD (3440x1440) QD-OLED, 175Hz, 0.03ms, 1800R curve, HDR True Black 400, AMD FreeSync Premium Pro, Tizen Smart Hub, height-adjustable stand.',
  '34" ultrawide QD-OLED 175Hz gaming monitor',
  1150000, 1250000, 1150000, 'instock', 6, 42, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'LG 27GR95QE-B 27" OLED Gaming Monitor',
  'lg-27gr95qe-b',
  'ERK-MON-003',
  '27" OLED gaming monitor. QHD (2560x1440), 240Hz, 0.03ms GTG, NVIDIA G-SYNC Compatible, 98.5% DCI-P3, anti-glare & low reflection coating, HDMI 2.1, DisplayPort 1.4, height-adjustable.',
  '27" QHD OLED 240Hz with anti-glare coating',
  785000, 860000, 785000, 'instock', 10, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Dell UltraSharp U2723DE 27" QHD USB-C Monitor',
  'dell-ultrasharp-u2723de',
  'ERK-MON-004',
  'Premium productivity display. 27" QHD (2560x1440) IPS, 99% sRGB, USB-C hub with 90W power delivery, daisy-chaining, height-adjustable, ComfortView Plus. Factory color calibrated Delta E < 2.',
  '27" QHD IPS with USB-C 90W hub',
  398000, 440000, 398000, 'instock', 20, 62, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'LG 32UN880-B 32" 4K UHD Ergo Monitor',
  'lg-32un880-b-ergo',
  'ERK-MON-005',
  '32" 4K productivity monitor. UHD (3840x2160) IPS, 95% DCI-P3, HDR10, USB-C 60W, Ergo Stand with clamp mount (gas spring arm), On-Screen Control, Reader Mode, Flicker Safe.',
  '32" 4K with adjustable Ergo Stand arm',
  520000, 580000, 520000, 'instock', 12, 52, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'BenQ SW271C 27" 4K Photography Monitor',
  'benq-sw271c',
  'ERK-MON-006',
  'Color-critical 4K display. 27" UHD IPS, 99% Adobe RGB, hardware calibration, 16-bit 3D LUT, Uniformity Correction, USB-C 60W, shading hood included, Hotkey Puck G3. Factory calibrated.',
  '27" 4K with 99% Adobe RGB for photographers',
  585000, 650000, 585000, 'instock', 10, 38, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI MAG342CQR 34" Curved Ultrawide Gaming Monitor',
  'msi-mag342cqr',
  'ERK-MON-007',
  'Ultrawide curved gaming. 34" UWQHD (3440x1440) VA, 1500R curve, 165Hz, 1ms MPRT, AMD FreeSync Premium, HDR Ready, USB-C connectivity, height/tilt/swivel adjustable.',
  '34" ultrawide curved 165Hz gaming monitor',
  435000, 485000, 435000, 'instock', 15, 48, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AOC CU34G2X 34" Curved Ultrawide Gaming Monitor',
  'aoc-cu34g2x',
  'ERK-MON-008',
  'Budget ultrawide gaming. 34" UWQHD (3440x1440) VA, 1500R curve, 144Hz, 1ms MPRT, AMD FreeSync Premium, Low Input Lag, height-adjustable, VESA mount.',
  'Budget 34" ultrawide 144Hz gaming monitor',
  348000, 390000, 348000, 'instock', 18, 52, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ViewSonic VP2786-4K 27" Professional 4K Monitor',
  'viewsonic-vp2786-4k',
  'ERK-MON-009',
  'Professional color monitor. 27" UHD IPS, 100% sRGB, hardware calibration, 14-bit 3D LUT, Uniformity Correction, USB-C 60W, ergonomic stand, ColorPro software. Pre-calibrated.',
  '27" 4K with hardware calibration',
  485000, 540000, 485000, 'instock', 12, 35, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'HP E24 G5 24" FHD Business Monitor',
  'hp-e24-g5',
  'ERK-MON-010',
  'Business desktop monitor. 24" FHD (1920x1080) IPS, anti-glare, Low Blue Light, height/pivot/tilt/swivel adjustable, VESA mount, DisplayPort, HDMI, VGA. ENERGY STAR, EPEAT Gold.',
  '24" FHD business monitor with full ergonomics',
  152000, 170000, 152000, 'instock', 45, 58, 4.60, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 6: NETWORKING & CONNECTIVITY (10 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS RT-BE96U WiFi 7 BE19000 Tri-Band Router',
  'asus-rt-be96u-wifi7',
  'ERK-NET-001',
  'Next-gen WiFi 7 router. BE19000 tri-band (6GHz + 5GHz + 2.4GHz), 320MHz channels, Multi-Link Operation, 10Gb WAN/LAN ports, 2x 2.5Gb LAN, AiMesh support, AiProtection Pro, RGB.',
  'WiFi 7 tri-band router with 10Gb ports',
  685000, 750000, 685000, 'instock', 8, 32, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Netgear Nighthawk RAXE500 WiFi 6E AXE11000 Router',
  'netgear-nighthawk-raxe500',
  'ERK-NET-002',
  'WiFi 6E tri-band router. AXE11000 (6GHz + 5GHz + 2.4GHz), 1.8GHz quad-core CPU, 12 streams, 2.5Gb/5Gb multi-gig port, USB 3.0, Nighthawk app, NETGEAR Armor security.',
  'WiFi 6E tri-band with 6GHz support',
  498000, 550000, 498000, 'instock', 12, 42, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link Archer AXE75 WiFi 6E AXE5400 Router',
  'tp-link-archer-axe75',
  'ERK-NET-003',
  'Affordable WiFi 6E. AXE5400 tri-band, 6GHz band, 6 streams, 1.7GHz CPU, 2.5Gb WAN/LAN, HomeShield security, OneMesh support, Tether app. Great value for WiFi 6E.',
  'Budget WiFi 6E router with 2.5Gb port',
  198000, 220000, 198000, 'instock', 25, 58, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Ubiquiti UniFi Dream Machine SE',
  'ubiquiti-udm-se',
  'ERK-NET-004',
  'Professional network gateway. UniFi OS, IDS/IPS, 2.5Gb WAN, 8x 1Gb PoE+ LAN, 2x 10Gb SFP+, UniFi Protect NVR (2x 3.5" bays), 128GB storage, rack-mountable.',
  'Pro gateway with built-in NVR and 10Gb SFP+',
  520000, 580000, 520000, 'instock', 10, 38, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link Deco XE75 Pro WiFi 6E Mesh System (3-Pack)',
  'tp-link-deco-xe75-pro-3pack',
  'ERK-NET-005',
  'Whole-home WiFi 6E mesh. AXE5400 tri-band, covers 7200 sq ft, supports 200+ devices, 2.5Gb port per unit, AI-Driven Mesh, HomeShield, easy app setup.',
  'WiFi 6E mesh system for whole-home coverage',
  398000, 440000, 398000, 'instock', 18, 62, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Netgear GS316EPP 16-Port PoE+ Gigabit Switch',
  'netgear-gs316epp',
  'ERK-NET-006',
  'Managed PoE+ switch. 16x Gigabit ports (15x PoE+), 231W PoE budget, fanless, plug-and-play web UI, VLAN, QoS, IGMP snooping, ProSAFE Lifetime Protection.',
  '16-port PoE+ Gigabit switch - 231W budget',
  248000, 280000, 248000, 'instock', 20, 42, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link TL-SG108E 8-Port Gigabit Easy Smart Switch',
  'tp-link-tl-sg108e',
  'ERK-NET-007',
  'Managed Gigabit switch. 8x Gigabit ports, VLAN, QoS, IGMP snooping, port mirroring, web management, fanless design, compact metal case.',
  '8-port managed Gigabit switch - fanless',
  28000, 33000, 28000, 'instock', 50, 68, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Wi-Fi 7 BE200 M.2 PCIe Wireless Adapter',
  'intel-wifi-7-be200',
  'ERK-NET-008',
  'WiFi 7 upgrade card. BE200, WiFi 7 (802.11be), 5.8Gbps max speed, 320MHz channels, Multi-Link Operation, Bluetooth 5.4, M.2 2230 Key E, PCIe interface. Upgrade to WiFi 7.',
  'WiFi 7 M.2 adapter for desktop upgrade',
  48000, 55000, 48000, 'instock', 35, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link Archer TX55E AXE5400 WiFi 6E PCIe Adapter',
  'tp-link-archer-tx55e',
  'ERK-NET-009',
  'WiFi 6E desktop adapter. AXE5400 tri-band, 6GHz support, Bluetooth 5.3, PCIe x1, external antennas with magnetic base, Low-Profile bracket, WPA3 security.',
  'WiFi 6E PCIe adapter with tri-band support',
  68000, 78000, 68000, 'instock', 40, 52, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO erkotron_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Cable Matters 10Gb CAT8 Ethernet Cable (10ft, 5-Pack)',
  'cable-matters-cat8-10ft-5pack',
  'ERK-NET-010',
  '10Gb Ethernet cables. CAT8, 40Gbps, 2000MHz, S/FTP shielding, 26AWG, gold-plated RJ45, universal compatibility. Perfect for 10Gb networking. 10ft length, 5-pack.',
  'CAT8 10Gb Ethernet cables - 5-pack',
  28000, 33000, 28000, 'instock', 60, 48, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ── Product Images ────────────────────────────────────────────

-- Computers & Laptops images
INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=600', 'ASUS ROG Zephyrus', 'ASUS ROG Zephyrus G16', 0
FROM erkotron_products p WHERE p.slug = 'asus-rog-zephyrus-g16' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1625336960423-228c02f71e4f?w=600', 'MSI Titan', 'MSI Titan 18 HX', 0
FROM erkotron_products p WHERE p.slug = 'msi-titan-18-hx' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1593640495253-23196b27a87f?w=600', 'Legion Pro', 'Lenovo Legion Pro 7i', 0
FROM erkotron_products p WHERE p.slug = 'lenovo-legion-pro-7i-gen9' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=600', 'Razer Blade', 'Razer Blade 16', 0
FROM erkotron_products p WHERE p.slug = 'razer-blade-16' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1625336960423-228c02f71e4f?w=600', 'Predator Helios', 'Acer Predator Helios 18', 0
FROM erkotron_products p WHERE p.slug = 'acer-predator-helios-18' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=600', 'Dell XPS 17', 'Dell XPS 17', 0
FROM erkotron_products p WHERE p.slug = 'dell-xps-17-creator' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=600', 'HP ZBook', 'HP ZBook Studio 16', 0
FROM erkotron_products p WHERE p.slug = 'hp-zbook-studio-16-g10' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=600', 'ThinkPad P16s', 'Lenovo ThinkPad P16s', 0
FROM erkotron_products p WHERE p.slug = 'lenovo-thinkpad-p16s-gen2' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=600', 'ProArt Studiobook', 'ASUS ProArt Studiobook', 0
FROM erkotron_products p WHERE p.slug = 'asus-proart-studiobook-16-oled' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=600', 'Creator Z17', 'MSI Creator Z17 HX', 0
FROM erkotron_products p WHERE p.slug = 'msi-creator-z17-hx-studio' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=600', 'CyberPower PC', 'CyberPowerPC Gaming Desktop', 0
FROM erkotron_products p WHERE p.slug = 'cyberpower-gamer-xtreme-vr' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=600', 'NZXT PC', 'NZXT Player Prime', 0
FROM erkotron_products p WHERE p.slug = 'nzxt-player-prime' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=600', 'Alienware Aurora', 'Alienware Aurora R16', 0
FROM erkotron_products p WHERE p.slug = 'alienware-aurora-r16' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?w=600', 'Intel NUC', 'Intel NUC 14 Pro', 0
FROM erkotron_products p WHERE p.slug = 'intel-nuc-14-pro' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=600', 'Minisforum', 'Minisforum Venus UM890', 0
FROM erkotron_products p WHERE p.slug = 'minisforum-venus-um890-pro' ON CONFLICT DO NOTHING;

-- PC Components images (simplified - using representative images)
INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=600', 'Intel i9-14900K', 'Intel Core i9-14900K', 0
FROM erkotron_products p WHERE p.slug = 'intel-core-i9-14900k' ON CONFLICT DO NOTHING;

INSERT INTO erkotron_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=600', 'AMD Ryzen 9 7950X3D', 'AMD Ryzen 9 7950X3D', 0
FROM erkotron_products p WHERE p.slug = 'amd-ryzen-9-7950x3d' ON CONFLICT DO NOTHING;

-- Continue pattern for all products (Storage, Peripherals, Monitors, Networking)
-- Using appropriate technology-related Unsplash images

-- ── Product ↔ Category Links ──────────────────────────────────

-- Computers & Laptops
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('asus-rog-zephyrus-g16','msi-titan-18-hx','lenovo-legion-pro-7i-gen9','razer-blade-16','acer-predator-helios-18','dell-xps-17-creator','hp-zbook-studio-16-g10','lenovo-thinkpad-p16s-gen2','asus-proart-studiobook-16-oled','msi-creator-z17-hx-studio','cyberpower-gamer-xtreme-vr','nzxt-player-prime','alienware-aurora-r16','intel-nuc-14-pro','minisforum-venus-um890-pro')
AND c.slug = 'computers-laptops'
ON CONFLICT DO NOTHING;

-- PC Components
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('intel-core-i9-14900k','amd-ryzen-9-7950x3d','intel-core-i7-14700k','amd-ryzen-7-7800x3d','intel-core-i5-14600k','amd-ryzen-5-7600x','nvidia-rtx-4090-asus-strix','nvidia-rtx-4080-super-msi','nvidia-rtx-4070-ti-super-gigabyte','amd-rx-7900-xtx-sapphire','nvidia-rtx-4070-asus-dual','amd-rx-7800-xt-powercolor','asus-rog-maximus-z790-hero','msi-meg-x670e-ace','gigabyte-b650-aorus-elite-ax','asrock-z790-pg-lightning','gskill-trident-z5-32gb-6400','corsair-vengeance-ddr5-64gb-6000','kingston-fury-beast-32gb-5600','noctua-nh-d15-chromax','corsair-h150i-elite-lcd','arctic-liquid-freezer-iii-280','thermalright-peerless-assassin-120','corsair-rm1000x-shift','seasonic-focus-gx-850','msi-mag-a850gl-pcie5')
AND c.slug = 'pc-components'
ON CONFLICT DO NOTHING;

-- Storage Solutions
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('samsung-990-pro-2tb','wd-black-sn850x-2tb','crucial-t700-2tb','kingston-kc3000-1tb','crucial-p3-plus-4tb','samsung-870-evo-2tb','crucial-mx500-1tb','samsung-t9-portable-2tb','sandisk-extreme-pro-4tb','wd-my-passport-5tb','seagate-ironwolf-pro-8tb','wd-red-plus-4tb','seagate-barracuda-2tb','wd-blue-1tb')
AND c.slug = 'storage-solutions'
ON CONFLICT DO NOTHING;

-- Peripherals & Input
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('wooting-60he-plus','keychron-q1-pro','razer-huntsman-v3-pro','logitech-gpro-x-superlight-2','razer-viper-v3-pro','logitech-mx-master-3s','steelseries-arctis-nova-pro-wireless','hyperx-cloud-alpha-wireless','razer-blackshark-v2-pro','logitech-brio-4k-pro','elgato-facecam-pro-4k','xbox-wireless-controller-carbon','sony-dualsense-controller','8bitdo-ultimate-wireless')
AND c.slug = 'peripherals-input'
ON CONFLICT DO NOTHING;

-- Monitors & Displays
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('asus-rog-swift-pg27aqdm','samsung-odyssey-oled-g8-34','lg-27gr95qe-b','dell-ultrasharp-u2723de','lg-32un880-b-ergo','benq-sw271c','msi-mag342cqr','aoc-cu34g2x','viewsonic-vp2786-4k','hp-e24-g5')
AND c.slug = 'monitors-displays'
ON CONFLICT DO NOTHING;

-- Networking & Connectivity
INSERT INTO erkotron_product_categories (product_id, category_id)
SELECT p.id, c.id FROM erkotron_products p, erkotron_categories c
WHERE p.slug IN ('asus-rt-be96u-wifi7','netgear-nighthawk-raxe500','tp-link-archer-axe75','ubiquiti-udm-se','tp-link-deco-xe75-pro-3pack','netgear-gs316epp','tp-link-tl-sg108e','intel-wifi-7-be200','tp-link-archer-tx55e','cable-matters-cat8-10ft-5pack')
AND c.slug = 'networking-connectivity'
ON CONFLICT DO NOTHING;

-- ── Update category product counts ───────────────────────────

UPDATE erkotron_categories c
SET count = (
  SELECT COUNT(*) FROM erkotron_product_categories pc WHERE pc.category_id = c.id
);