-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2018 a las 20:11:49
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cellshop_dev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-10-11 14:22:11', '2018-10-11 14:22:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '2018-10-11 14:57:09', '2018-10-11 14:57:09'),
(2, 'Apple', '2018-10-14 00:27:33', '2018-10-14 00:27:33'),
(3, 'Huawei', '2018-10-14 00:27:41', '2018-10-14 00:27:41'),
(4, 'LG', '2018-10-20 16:41:21', '2018-10-20 16:41:21'),
(5, 'Xiaomi', '2018-10-22 18:48:18', '2018-10-22 18:48:18'),
(6, 'Google', '2018-10-25 15:43:27', '2018-10-25 15:43:36'),
(7, 'Blackberry', '2018-10-25 15:57:23', '2018-10-25 15:57:23'),
(8, 'Sony', '2018-10-25 16:03:44', '2018-10-25 16:03:44'),
(9, 'OnePLus', '2018-10-25 16:53:15', '2018-10-25 16:56:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `price` float DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `price`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 9849000, 2, 8, '2018-10-24 10:46:43', '2018-10-24 10:46:43'),
(2, 6120000, 2, 9, '2018-10-24 10:50:52', '2018-10-24 10:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Negro', '2018-10-11 19:28:41', '2018-10-11 19:28:41'),
(2, 'Rojo', '2018-10-11 19:33:28', '2018-10-11 19:33:28'),
(3, 'Amarillo', '2018-10-11 19:33:56', '2018-10-11 19:33:56'),
(4, 'Verde', '2018-10-11 19:34:52', '2018-10-11 19:34:52'),
(5, 'Azul', '2018-10-22 18:52:37', '2018-10-22 18:52:37'),
(6, 'Gris', '2018-10-22 19:07:21', '2018-10-22 19:07:21'),
(7, 'Blanco', '2018-10-25 15:49:59', '2018-10-25 15:49:59'),
(8, 'Plateado', '2018-10-25 16:46:17', '2018-10-25 16:46:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 'Excelente!', 1, 8, '2018-10-25 18:02:29', '2018-10-25 18:02:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memories`
--

CREATE TABLE `memories` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `memories`
--

INSERT INTO `memories` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '32GB', '2018-10-12 17:26:45', '2018-10-22 18:13:11'),
(2, '16GB', '2018-10-12 17:26:52', '2018-10-22 18:13:15'),
(3, '4GB', '2018-10-12 17:26:57', '2018-10-22 18:11:22'),
(5, '65GB', '2018-10-22 18:11:12', '2018-10-22 18:11:12'),
(7, '6GB', '2018-10-22 18:52:42', '2018-10-22 18:52:42'),
(8, '3GB', '2018-10-25 15:59:42', '2018-10-25 15:59:42'),
(9, '8GB', '2018-10-25 17:08:14', '2018-10-25 17:08:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models`
--

CREATE TABLE `models` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `batery` varchar(255) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `models`
--

INSERT INTO `models` (`id`, `name`, `resolution`, `screen`, `weight`, `dimensions`, `batery`, `brand_id`, `created_at`, `updated_at`) VALUES
(5, 'iPhone XS Max', '2.688 x 1.242 píxeles, 458 ppp', 'OLED 6,5 pulgadas Super Retina HD', '208 gramos', '157,5 x 77,4 x 7,7 milímetros', '3.174 mAh', 2, '2018-10-22 18:17:22', '2018-10-22 18:17:22'),
(6, 'Samsung Galaxy Note 9', 'QHD+ (2.960 x 1.440 px), 516 ppp', 'Super AMOLED 6,4 pulgadas aspecto 18.5:9', '201 gramos', '161,9 x 76,4 x 8,8 milímetros', '4.000 mAh', 1, '2018-10-22 18:37:10', '2018-10-22 18:37:10'),
(7, 'Xiaomi Mi 8', 'FullHD+ 2.248 x 1.080 píxeles88,5% ratio p/f', 'AMOLED 6 pulgadas Formato 18:7:9', '172 gramos', '154,9 x 74,8 x 7,6 milímetros', '3.300 mAh', 5, '2018-10-22 18:49:58', '2018-10-22 18:49:58'),
(8, 'Samsung Galaxy 9', 'QHD+, 18,5:9', '5,8 pulgadas Super AMOLED (529ppi)', '163 gramos', '147,7 x 68,7 x 8,5 mm', '3.000 mAh', 1, '2018-10-22 19:06:40', '2018-10-22 19:06:40'),
(9, 'Huawei P20 Pro', '2.240 x 1.080', 'OLED FullView de 6,1 pulgadas 18,7:9', '180 gramos', '155 x 73,9 x 7,8 milímetros', '4.000 mAh, 4,5V/5A supercharge', 3, '2018-10-25 15:01:27', '2018-10-25 15:01:27'),
(10, 'LG G7 ThinQ', '3.120 x 1.440 píxeles (564ppp) y relación de aspecto 19,5:9', 'IPS de 6 pulgadas FullView Super Bright ', '162 gramos', '153,2 x 71,9 x 7,9 milímetros', '3.000 mAh', 4, '2018-10-25 15:37:53', '2018-10-25 15:37:53'),
(11, 'Google Pixel 3 XL', '6,3\" QHD+ (2960 x 1440) ', 'P-OLED 18.5:9', '201 gramos', '158 x 76.6 x 7.9 mm', '3.430 mAh + carga inalámbrica', 6, '2018-10-25 15:45:38', '2018-10-25 15:45:38'),
(12, 'Blackberry KEYone', '1,620x1,080 pixeles', ' 4.5 pulgadas', '180 gramos', '5.9x2.9x.37 pulgadas', '3,505 mAh', 7, '2018-10-25 15:57:05', '2018-10-25 15:57:31'),
(13, 'Sony Xperia XZ2', '3,840x2,160 pixeles (4K)', '5,7 pulgadas', '236 gramos', '158x80x11.9mm', '3,540mAh', 8, '2018-10-25 16:03:37', '2018-10-25 17:14:22'),
(14, 'ZTE One Plus 6', '2280x1080', 'AMOLED de 6,28 pulgadas con Gorilla Glass 5 Ratio 19:9', '177 gramos', '155,7x75,4x7,75 milímetros', '3.300 mAh', 9, '2018-10-25 16:55:00', '2018-10-25 16:55:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `total_price` float DEFAULT NULL,
  `date_delivered` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `date_delivered`, `user_id`, `created_at`, `updated_at`) VALUES
(50, 9849000, '2018-10-24', 2, '2018-10-22 19:33:47', '2018-10-24 11:36:16'),
(51, 6120000, '2018-10-24', 3, '2018-10-24 13:40:36', '2018-10-24 13:42:21'),
(52, 4335000, '2018-10-25', 3, '2018-10-25 17:17:42', '2018-10-25 17:18:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `price` float DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`id`, `price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(16, 9849000, 50, 8, '2018-10-22 19:33:47', '2018-10-22 19:33:47'),
(17, 6120000, 51, 9, '2018-10-24 13:40:36', '2018-10-24 13:40:36'),
(18, 4335000, 52, 11, '2018-10-25 17:17:42', '2018-10-25 17:17:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `memory_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `storage_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` bigint(20) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `description`, `stock`, `price`, `model_id`, `memory_id`, `color_id`, `storage_id`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `video`) VALUES
(8, 'El año pasado Apple introdujo la mayor novedad a nivel de diseño en su iPhone desde su lanzamiento. Fue algo simbólico al celebrarse los 10 años de la presentación del primer iPhone, y supuso la pérdida por fin de unos marcos que penalizaban sobremanera al terminal de Apple desde hace años, la llegada de Face ID y la interacción con el terminal basándose solo en gestos sobre la pantalla.', 7, 9849000, 5, 3, 1, 2, '2018-10-22 18:21:20', '2018-10-25 17:04:33', 'pelican-apple-iphone.jpg', 'image/jpeg', 53220, '2018-10-25 17:04:33', 'https://www.youtube.com/embed/9m_K2Yg7wGQ'),
(9, ' El teléfono Galaxy S9 SM-G960 de Samsung, gracias a la incorporación de Dolby Atmos te ofrece un sonido rico y vibrante, donde te brinda una experiencia de audio como si estuvieras en el teatro. Comparte fácilmente fotos y vídeos con la sincronización de tus dispositivos a través de tu cuenta Samsung. Además la exploración inteligente es una nueva tecnología que combina el reconocimiento de la cara y el escaneo del iris para desbloquear simplemente incluso con poca luz.   La cámara que te convierte en un emoji, por lo que no eres más \"tú\" como son todos los demás. Crear una versión de realidad aumentada de sí mismo simplemente por tomar un selfie. Luego comparte tus sentimientos reales como pegatinas de emoji y videos.', 14, 6120000, 6, 3, 1, 2, '2018-10-22 18:42:08', '2018-10-24 13:40:36', 'samsunggalaxys9.jpg', 'image/jpeg', 101603, '2018-10-22 19:20:26', 'https://www.youtube.com/embed/rjaL94yEJME'),
(10, 'El Xiaomi Mi 8 es un móvil Android bueno con procesador que permite ejecutar juegos y aplicaciones pesadas. Una ventaja del Xiaomi Mi 8 es la capacidad de utilizar dos operadores móvil, un terminal Doble-SIM con dos ranuras para tarjetas SIM. Gran conectividad de este terminal que incluye Bluetooth WiFi + MIMO y NFC para realizar pagos y permite la conexión a otros terminales. Incluyendo la batería, el móvil Xiaomi Mi 8 tiene 175 gramos y es un terminal muy delgado con solamente 7,6 mm.', 6, 2789000, 7, 7, 5, 1, '2018-10-22 18:54:12', '2018-10-22 19:21:23', 'xiaomii8.jpg', 'image/jpeg', 109777, '2018-10-22 19:21:23', 'https://www.youtube.com/embed/8SE6ByWHkGs'),
(11, 'El Samsung Galaxy S9 tiene un lector de huellas mejor posicionado, una muy buena cámara con apertura variable, buen desempeño, un hermoso diseño y ahora trae una doble bocina que ofrece una mejor experiencia de sonido. Además, sigue con conector de audífono, carga inalámbrica y ranura para tarjeta microSD. Es hasta US$150 más barato que el Galaxy S9 Plus.', 6, 4335000, 8, 3, 6, 2, '2018-10-22 19:10:35', '2018-10-25 17:17:42', 'samsung-galaxy-s9gris.jpg', 'image/jpeg', 21774, '2018-10-22 19:10:35', 'https://www.youtube.com/embed/5_-NKRVn7IQ'),
(12, 'El Huawei P20 Pro L29 es un móvil Android bueno con procesador que permite ejecutar juegos y aplicaciones pesadas.\r\nUna ventaja del Huawei P20 Pro L29 es la capacidad de utilizar dos operadores móvil, un terminal Doble-SIM con dos ranuras para tarjetas SIM.\r\nGran conectividad de este terminal que incluye Bluetooth con A2DP, WiFi + MIMO y NFC para realizar pagos y permite la conexión a otros terminales.', 8, 3100000, 9, 7, 1, 5, '2018-10-25 15:09:36', '2018-10-25 15:12:04', 'i-huawei-p20-128gb-czarny.jpg', 'image/jpeg', 142217, '2018-10-25 15:12:04', 'https://www.youtube.com/embed/R6e0zbPxac0'),
(13, 'El LG G7 ThinQ era uno de los teléfonos más esperados del año y no ha decepcionado. El que hasta la fecha es el dispositivo más avanzado de la firma mantiene el diseño de los últimos LG, con marcos casi inexistentes, pero alarga más su pantalla LCD QHD+ para que puedas disfrutar de 6,1 pulgadas. Al igual que el LG V35, integra un procesador Snapdragon 845 y utiliza Android 8.0  como sistema operativo. Como cualquier móvil de alta gama, la calidad de sus cámaras es importante, y en el LG G7 encontrarás una dual trasera con 16 MP en cada objetivo y, para tus selfies, una frontal de 8 MP que permite enfocar hasta tres personas y darle efecto bokeh (con el fondo desenfocado) a tus capturas.', 5, 3500000, 10, 7, 1, 5, '2018-10-25 15:41:52', '2018-10-25 17:10:06', 'lg-g7-thinq-leak-black_ml.jpg', 'image/jpeg', 51119, '2018-10-25 15:41:52', 'https://www.youtube.com/embed/ybG8iWK4e2I'),
(14, 'A simple vista, lo que más llama la atención del Google Pixel 3 XL es, como nos hace pensar su nombre, el tamaño del dispositivo, con una pantalla de 6,3 pulgadas que aprovecha casi toda la superficie del teléfono y un lector de huellas digitales en la parte de atrás. Otro de los atractivos del teléfono es la cámara trasera con doble lente de 12 MP y la frontal de 8 MP.\r\nPor lo demás, tiene una memoria RAM de 4 GB y el usuario puede elegir entre una capacidad de almacenamiento de 64 GB o 128 GB. Además, está disponible en tres colores: un rosa pálido, blanco y negro.', 3, 3845000, 11, 3, 7, 5, '2018-10-25 15:48:51', '2018-10-25 15:50:07', 'google-pixel-3xl-4.jpg', 'image/jpeg', 38016, '2018-10-25 15:48:51', 'https://www.youtube.com/embed/cBPhcK_UCQQ'),
(15, 'Si hace años eras uno de los fieles a Blackberry y echas de menos el teclado en tu móvil, estás de suerte: la firma ha lanzado su Blackberry KEYone, que dispone de una pantalla de 4,5 pulgadas. Incorpora un procesador Snapdragon 625 y tiene 3 GB de RAM y 32 GB de memoria. En cuanto a fotografía, no se queda atrás de los modelos táctiles; viene equipado con una trasera de 12 MP y una delantera de 8 MP.', 4, 3713800, 12, 8, 1, 6, '2018-10-25 15:59:31', '2018-10-25 16:01:20', '51yCjqqH-ML.jpg', 'image/jpeg', 45900, '2018-10-25 16:01:20', 'https://www.youtube.com/embed/reo9vBlRHqg'),
(16, ' Sony ya aprovechó el CES 2018 de las Vegas para presentar su Xperia XA2 Ultra,  al que más tarde se unió una de sus grandes apuestas del año: el Sony Xperia XZ2 Premium, que pasa a formar parte de nuestro ranking de los mejores móviles del año. Con una pantalla de 5,7 pulgadas, este teléfono cuenta con una cámara de 19 MP que graba en 4K. El Sony Xperia XZ2 Premium funciona con el procesador Snapdragon 845 y cuenta con una memoria RAM de 6 GB y 64 GB de almacenamiento.', 6, 3660000, 13, 7, 4, 2, '2018-10-25 16:50:40', '2018-10-25 16:52:47', 'sonyx.jpeg', 'image/jpeg', 28257, '2018-10-25 16:52:30', 'https://www.youtube.com/embed/zq6iOiZHXVs'),
(17, 'Con 6,28 pulgadas de pantalla AMOLED y marcos apurados, este teléfono es uno de los más interesantes de nuestra lista si nos fijamos en el precio, con un coste más asequible que el de otros modelos de la marca. Eso no quita que esté bien equipado: cuenta con lector facial y de huella dactilar y, como la cámara es una de las cosas que más importan a día de hoy, no decepciona en este sentido: trae una dual de 16 MP y 20 MP situada en la parte trasera y una en el frontal con 16 MP para tus selfies. Además, el ZTE One Plus 6 viene con una memoria RAM de8 GB, un procesador Snapdragon 845 y el sistema operativo OxygenOS.', 5, 2990000, 14, 7, 1, 2, '2018-10-25 16:58:12', '2018-10-25 16:59:12', 'oneplus_6_64gb_.jpg', 'image/jpeg', 342388, '2018-10-25 16:59:12', 'https://www.youtube.com/embed/GcXUi1Xj9i8'),
(18, 'El año pasado Apple introdujo la mayor novedad a nivel de diseño en su iPhone desde su lanzamiento. Fue algo simbólico al celebrarse los 10 años de la presentación del primer iPhone, y supuso la pérdida por fin de unos marcos que penalizaban sobremanera al terminal de Apple desde hace años, la llegada de Face ID y la interacción con el terminal basándose solo en gestos sobre la pantalla.', 4, 10500000, 5, 3, 7, 3, '2018-10-25 17:02:58', '2018-10-25 17:05:07', 'pelican-apple-iphone.jpg', 'image/jpeg', 53220, '2018-10-25 17:04:45', 'https://www.youtube.com/embed/9m_K2Yg7wGQ'),
(19, 'El año pasado Apple introdujo la mayor novedad a nivel de diseño en su iPhone desde su lanzamiento. Fue algo simbólico al celebrarse los 10 años de la presentación del primer iPhone, y supuso la pérdida por fin de unos marcos que penalizaban sobremanera al terminal de Apple desde hace años, la llegada de Face ID y la interacción con el terminal basándose solo en gestos sobre la pantalla.', 3, 12000000, 5, 3, 1, 4, '2018-10-25 17:05:41', '2018-10-25 17:05:41', 'pelican-apple-iphone.jpg', 'image/jpeg', 53220, '2018-10-25 17:05:41', 'https://www.youtube.com/embed/9m_K2Yg7wGQ'),
(20, 'El Xiaomi Mi 8 es un móvil Android bueno con procesador que permite ejecutar juegos y aplicaciones pesadas. Una ventaja del Xiaomi Mi 8 es la capacidad de utilizar dos operadores móvil, un terminal Doble-SIM con dos ranuras para tarjetas SIM. Gran conectividad de este terminal que incluye Bluetooth WiFi + MIMO y NFC para realizar pagos y permite la conexión a otros terminales. Incluyendo la batería, el móvil Xiaomi Mi 8 tiene 175 gramos y es un terminal muy delgado con solamente 7,6 mm.', 6, 3000000, 7, 9, 5, 1, '2018-10-25 17:08:07', '2018-10-25 17:08:22', 'xiaomii8.jpg', 'image/jpeg', 109777, '2018-10-25 17:08:07', 'https://www.youtube.com/embed/8SE6ByWHkGs'),
(21, 'El LG G7 ThinQ era uno de los teléfonos más esperados del año y no ha decepcionado. El que hasta la fecha es el dispositivo más avanzado de la firma mantiene el diseño de los últimos LG, con marcos casi inexistentes, pero alarga más su pantalla LCD QHD+ para que puedas disfrutar de 6,1 pulgadas. Al igual que el LG V35, integra un procesador Snapdragon 845 y utiliza Android 8.0  como sistema operativo. Como cualquier móvil de alta gama, la calidad de sus cámaras es importante, y en el LG G7 encontrarás una dual trasera con 16 MP en cada objetivo y, para tus selfies, una frontal de 8 MP que permite enfocar hasta tres personas y darle efecto bokeh (con el fondo desenfocado) a tus capturas.', 3, 3150000, 10, 3, 1, 2, '2018-10-25 17:11:00', '2018-10-25 17:11:00', 'lg-g7-thinq-leak-black_ml.jpg', 'image/jpeg', 51119, '2018-10-25 17:11:00', 'https://www.youtube.com/embed/ybG8iWK4e2I'),
(22, 'A simple vista, lo que más llama la atención del Google Pixel 3 XL es, como nos hace pensar su nombre, el tamaño del dispositivo, con una pantalla de 6,3 pulgadas que aprovecha casi toda la superficie del teléfono y un lector de huellas digitales en la parte de atrás. Otro de los atractivos del teléfono es la cámara trasera con doble lente de 12 MP y la frontal de 8 MP.\r\nPor lo demás, tiene una memoria RAM de 4 GB y el usuario puede elegir entre una capacidad de almacenamiento de 64 GB o 128 GB. Además, está disponible en tres colores: un rosa pálido, blanco y negro.', 4, 3500000, 11, 3, 7, 2, '2018-10-25 17:12:02', '2018-10-25 17:12:02', 'google-pixel-3xl-4.jpg', 'image/jpeg', 38016, '2018-10-25 17:12:02', 'https://www.youtube.com/embed/cBPhcK_UCQQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20181011141920'),
('20181011142531'),
('20181011142630'),
('20181011142702'),
('20181011145131'),
('20181011150245'),
('20181011151521'),
('20181011155659'),
('20181011160629'),
('20181011160823'),
('20181012175110'),
('20181018173249'),
('20181025032649');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `storages`
--

INSERT INTO `storages` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '16gb', '2018-10-11 14:23:11', '2018-10-11 14:23:11'),
(2, '64GB', '2018-10-22 18:16:09', '2018-10-22 18:16:09'),
(3, '256GB', '2018-10-22 18:16:15', '2018-10-22 18:16:15'),
(4, '512GB', '2018-10-22 18:16:21', '2018-10-22 18:16:21'),
(5, '128GB', '2018-10-25 15:03:36', '2018-10-25 15:03:36'),
(6, '32GB', '2018-10-25 15:59:52', '2018-10-25 15:59:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `docnum` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `permission_level` int(255) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `firstname`, `lastname`, `birth`, `docnum`, `address`, `city`, `country`, `phone`, `permission_level`, `created_at`, `updated_at`) VALUES
(1, 'esteban98alejandro@gmail.com', '$2a$11$XvsN0IIEsWa3oDQ8QiFlmeSuw6utUqaI0XT0D/hjmdzWjwgkY7xyy', NULL, NULL, NULL, 'Esteban', 'Krauwezuk', '1998-12-05', '4364888', 'Capitán Miranda', 'Encarnación', 'Paraguay', '983813404', 2, '2018-10-11 15:49:40', '2018-10-25 03:11:54'),
(2, 'alejandro@gmail.com', '$2a$11$OuyEQ8Y.P41Oc/InAP/Rle5/LS3dL.fH7N2yrCBVq3PXCV2EwnOq2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-22 16:34:58', '2018-10-25 03:13:50'),
(3, 'berta45@gmail.com', '$2a$11$1c1tJAMUB462aXmY2PCGYud/Hh/5cfRY11KkeJBD.UvTAb/q06ncW', NULL, NULL, NULL, 'Berta', 'Krauwezuk', NULL, '213123', 'Capitán Miranda', 'Encarnación', 'Paraguay', '983813404', 1, '2018-10-24 13:01:17', '2018-10-25 03:12:05'),
(4, 'per32@gmail.com', '$2a$11$2QzkP3qn/bP6OYWFh1mCTOpj8lMrAG3TF96v0cgjqzMZ9/gudc16m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-24 13:05:28', '2018-10-24 13:05:28'),
(5, 'awd@gmail.com', '$2a$11$UA3qC.KU1PW70REWmhdzZecjOc1rJU3v98D7peO3CzPLcsrhZ/RL6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-24 13:06:29', '2018-10-24 13:06:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_carts_on_user_id` (`user_id`),
  ADD KEY `index_carts_on_product_id` (`product_id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_user_id` (`user_id`),
  ADD KEY `index_comments_on_product_id` (`product_id`);

--
-- Indices de la tabla `memories`
--
ALTER TABLE `memories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_models_on_brand_id` (`brand_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_orders_on_user_id` (`user_id`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_order_details_on_order_id` (`order_id`),
  ADD KEY `index_order_details_on_product_id` (`product_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_products_on_model_id` (`model_id`),
  ADD KEY `index_products_on_memory_id` (`memory_id`),
  ADD KEY `index_products_on_color_id` (`color_id`),
  ADD KEY `index_products_on_storage_id` (`storage_id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `memories`
--
ALTER TABLE `memories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_rails_916f2a1419` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_ea59a35211` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_a0d280f6e4` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk_rails_ec6eb36a24` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_rails_4f2ac9473b` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_e5976611fd` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_rails_242c79a2ec` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_rails_490871216e` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_rails_768b5f1376` FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`),
  ADD CONSTRAINT `fk_rails_d1f91d56de` FOREIGN KEY (`memory_id`) REFERENCES `memories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
