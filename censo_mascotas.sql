-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2025 a las 11:07:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `censo_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `especie` enum('perro','gato','otro') NOT NULL,
  `raza` varchar(255) NOT NULL,
  `tamano` enum('pequeño','mediano','grande') NOT NULL,
  `edad` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `vacunado` tinyint(1) NOT NULL DEFAULT 0,
  `vacunacion_fecha` date DEFAULT NULL,
  `alimentacion` varchar(255) NOT NULL,
  `dueno_nombre` varchar(255) NOT NULL,
  `dueno_direccion` varchar(255) NOT NULL,
  `dueno_telefono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id`, `nombre`, `especie`, `raza`, `tamano`, `edad`, `imagen`, `vacunado`, `vacunacion_fecha`, `alimentacion`, `dueno_nombre`, `dueno_direccion`, `dueno_telefono`, `created_at`, `updated_at`) VALUES
(1, 'Luna', 'gato', 'Siamés', 'pequeño', 3, 'luna_siames.jpg', 1, '2024-05-15', 'Croquetas premium', 'María González', 'Calle 9 de Octubre #234', '0987654321', '2024-12-15 10:30:00', '2025-06-27 08:36:15'),
(2, 'Rocky', 'perro', 'Bulldog Francés', 'mediano', 4, 'rocky_bulldog.jpg', 1, '2024-08-20', 'Alimento balanceado', 'Juan Torres', 'Av. Central #145', '0998765432', '2024-11-20 14:45:30', '2025-06-27 13:56:45'),
(3, 'Milo', 'perro', 'Beagle', 'pequeño', 2, 'milo_beagle.jpg', 1, '2024-09-10', 'Alimento mixto', 'Ana Delgado', 'Cdla. Los Álamos Mz. 15', '0976543210', '2025-01-10 09:15:20', '2025-06-24 15:15:12'),
(4, 'Nala', 'gato', 'Angora', 'pequeño', 1, 'nala_angora.jpg', 1, '2025-02-20', 'Comida húmeda', 'Roberto Vélez', 'Callejón El Rosario #89', '0965432109', '2025-03-05 16:20:45', '2025-06-24 15:15:12'),
(5, 'Toby', 'perro', 'Golden Retriever', 'grande', 5, 'toby_golden.jpg', 1, '2023-12-15', 'Alimento balanceado premium', 'Paola Lema', 'Sector El Inca #567', '0954321098', '2024-08-12 11:30:15', '2025-06-24 15:15:12'),
(6, 'Kira', 'gato', 'Maine Coon', 'grande', 3, 'kira_maine.jpg', 1, '2024-11-05', 'Croquetas naturales', 'Luis Almeida', 'Calle Libertad #123', '0943210987', '2025-02-18 13:45:00', '2025-06-27 08:42:13'),
(7, 'Coco', 'ave', 'Loro Amazónico', 'pequeño', 6, 'coco_loro.jpg', 1, '2023-08-30', 'Semillas y frutas', 'Carmen Ruiz', 'Cdla. Universitaria Mz. 8', '0932109876', '2024-05-15 08:20:30', '2025-06-24 15:15:12'),
(8, 'Lola', 'perro', 'Chihuahua', 'pequeño', 2, 'lola_chihuahua.jpg', 1, '2024-10-12', 'Alimento para razas pequeñas', 'Esteban Mora', 'Av. Las Américas #445', '0921098765', '2025-03-20 15:10:25', '2025-06-27 08:35:59'),
(9, 'Tom', 'gato', 'Persa', 'mediano', 4, 'tom_persa.jpg', 1, '2024-07-18', 'Comida natural', 'Verónica Cedeño', 'Sector La Floresta #78', '0910987654', '2024-12-08 12:30:40', '2025-06-24 15:15:12'),
(10, 'Simba', 'perro', 'Pastor Alemán', 'grande', 6, 'simba_pastor.jpg', 1, '2023-06-25', 'Alimento balanceado', 'Diego Estrella', 'Calle Los Cipreses #234', '0909876543', '2024-09-30 14:20:15', '2025-06-24 15:15:12'),
(11, 'Misha', 'gato', 'Sphynx', 'pequeño', 3, 'misha_sphynx.jpg', 1, '2024-04-22', 'Comida hipoalergénica', 'Lucía Mendoza', 'Callejón del Sol #56', '0995566778', '2024-11-12 10:45:20', '2025-06-24 15:15:12'),
(12, 'Bruno', 'perro', 'Rottweiler', 'grande', 5, 'bruno_rottweiler.jpg', 1, '2023-11-10', 'Alimento para razas grandes', 'Javier Paredes', 'Calle Principal #189', '0988455667', '2024-07-25 16:15:30', '2025-06-24 15:15:12'),
(13, 'Greta', 'reptil', 'Tortuga de Tierra', 'pequeño', 8, 'greta_tortuga.jpg', 0, NULL, 'Vegetales y frutas', 'Diana Aguilar', 'Callejón de las Piedras #45', '0966677889', '2024-03-18 09:30:45', '2025-06-24 15:15:12'),
(14, 'Charlie', 'perro', 'Poodle', 'mediano', 3, 'charlie_poodle.jpg', 1, '2024-12-05', 'Alimento balanceado', 'Daniela Ríos', 'Urb. Sol Naciente Mz. 12', '0959988776', '2025-04-08 11:20:10', '2025-06-24 15:15:12'),
(15, 'Bella', 'gato', 'Bengalí', 'mediano', 2, 'bella_bengali.jpg', 1, '2025-01-18', 'Croquetas premium', 'Carlos Mendoza', 'Av. Kennedy #567', '0978123456', '2025-05-10 14:30:25', '2025-06-27 09:15:20'),
(16, 'Max', 'perro', 'Labrador', 'grande', 4, 'max_labrador.jpg', 1, '2024-06-30', 'Alimento natural', 'Patricia Silva', 'Calle Las Flores #123', '0967234567', '2024-10-15 13:45:15', '2025-06-27 10:20:30'),
(17, 'Canela', 'gato', 'Ragdoll', 'mediano', 1, 'canela_ragdoll.jpg', 1, '2025-03-12', 'Comida húmeda premium', 'Fernando López', 'Sector Los Pinos #89', '0956345678', '2025-05-20 08:15:45', '2025-06-27 11:30:50'),
(18, 'Zeus', 'perro', 'Doberman', 'grande', 7, 'zeus_doberman.jpg', 1, '2022-09-14', 'Alimento para perros grandes', 'Andrea Morales', 'Cdla. El Recreo Mz. 5', '0945456789', '2024-01-30 12:10:35', '2025-06-27 12:45:10'),
(19, 'Mimi', 'gato', 'Scottish Fold', 'pequeño', 4, 'mimi_scottish.jpg', 1, '2024-01-25', 'Croquetas naturales', 'Ricardo Herrera', 'Av. Francisco de Orellana #234', '0934567890', '2024-08-18 15:20:25', '2025-06-27 13:50:30'),
(20, 'Bobby', 'perro', 'Border Collie', 'mediano', 3, 'bobby_border.jpg', 1, '2024-11-20', 'Alimento balanceado premium', 'Mónica Castro', 'Calle 6 de Diciembre #456', '0923678901', '2025-02-28 10:35:40', '2025-06-27 14:25:15'),
(21, 'Pelusa', 'conejo', 'Conejo Angora', 'pequeño', 2, 'pelusa_conejo.jpg', 1, '2024-08-15', 'Heno y vegetales', 'Gonzalo Ramírez', 'Sector La Alborada #78', '0912789012', '2024-12-05 09:45:20', '2025-06-27 15:10:45'),
(22, 'Garfield', 'gato', 'Británico de Pelo Corto', 'grande', 5, 'garfield_britanico.jpg', 1, '2023-12-08', 'Comida premium', 'Valentina Quiroz', 'Cdla. La Garzota Mz. 20', '0901890123', '2024-06-12 14:55:30', '2025-06-27 16:20:25'),
(23, 'Athos', 'perro', 'Husky Siberiano', 'grande', 4, 'athos_husky.jpg', 1, '2024-03-18', 'Alimento para razas activas', 'Erika Salinas', 'Av. Carlos Julio Arosemena #890', '0990901234', '2024-11-25 11:40:15', '2025-06-27 17:35:50'),
(24, 'Nina', 'ave', 'Canario', 'pequeño', 3, 'nina_canario.jpg', 1, '2024-07-10', 'Semillas especiales', 'Marcos Villacís', 'Calle Numa Pompilio #123', '0989012345', '2025-01-15 13:25:40', '2025-06-27 18:45:20'),
(25, 'Ollie', 'hámster', 'Hámster Dorado', 'pequeño', 1, 'ollie_hamster.jpg', 0, NULL, 'Alimento para roedores', 'Sandra Jaramillo', 'Urb. Entre Ríos Mz. 7', '0978123456', '2025-04-22 16:30:25', '2025-06-27 19:15:35');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_06_24_135248_create_mascotas_table', 2),
(6, '2025_06_24_144109_add_vacunacion_fecha_to_mascotas_table', 3),
(7, '2025_06_26_090616_add_imagen_to_mascotas_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
