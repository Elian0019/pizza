-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2023 a las 09:02:41
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizza_deli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sigla` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidad` smallint(6) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id`, `sigla`, `capacidad`, `estado`) VALUES
(1, 'A', 1000, 1),
(2, 'B', 1000, 1),
(3, 'C', 1000, 1),
(4, 'D', 1000, 1),
(5, 'E', 1000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `estado`) VALUES
(1, 'Pizzas', 1),
(2, 'Gaseosas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `telefono` int(11) NOT NULL,
  `id_usuario` bigint(20) UNSIGNED DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `edad`, `telefono`, `id_usuario`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Elian', 'Alvarez ', 21, 71781881, 2, 1, '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_productodealmacen` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pedido` bigint(20) UNSIGNED DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED DEFAULT NULL,
  `id_productodealmacen` bigint(20) UNSIGNED DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `sueldo` int(11) NOT NULL,
  `direccion` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `id_usuario` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `edad`, `sueldo`, `direccion`, `telefono`, `estado`, `id_usuario`) VALUES
(1, 'admin', 'uagrm', 50, 6950, 'montero-c. avaroa', '67126631', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_06_14_020249_create_permission_tables', 1),
(6, '2022_06_15_015341_create_clientes_table', 1),
(7, '2022_06_15_020445_create_provedores_table', 1),
(8, '2022_06_15_020509_create_pempresas_table', 1),
(9, '2022_06_15_020523_create_ppersonas_table', 1),
(10, '2022_06_15_024942_create_almacenes_table', 1),
(11, '2022_06_15_025812_create_repartidores_table', 1),
(12, '2022_06_15_193055_create_categorias_table', 1),
(13, '2022_06_15_193314_create_productos_table', 1),
(14, '2022_07_06_012953_create_producto_almacen_table', 1),
(15, '2022_07_06_014224_create_ubicacion_table', 1),
(16, '2022_07_06_015626_create_empleados_table', 1),
(17, '2022_07_06_015710_create_pedidos_table', 1),
(18, '2022_07_06_015741_create_detalle_pedidos_table', 1),
(19, '2022_07_10_064810_create_temporal_inventario_table', 1),
(20, '2023_07_03_200121_create_ventas_table', 1),
(21, '2023_07_03_200342_create_detalle_ventas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `fechaentrega` date NOT NULL,
  `montototal` double(8,2) NOT NULL,
  `estadodelpedido` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `id_ubicacion` bigint(20) UNSIGNED DEFAULT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `id_empleado` bigint(20) UNSIGNED DEFAULT NULL,
  `id_repartidor` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pempresas`
--

CREATE TABLE `pempresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razonsocial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pempresas`
--

INSERT INTO `pempresas` (`id`, `razonsocial`, `created_at`, `updated_at`) VALUES
(4, 'comerciante de Coca cola', '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT 1,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `subname`, `tipo`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'catalogo', 'catalogo principal', 1, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(2, 'usuario', 'usuario principal', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(3, 'usuario.editar', 'editar usuarios', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(4, 'usuario.eliminar', 'eliminar usuarios', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(5, 'usuario.agregar', 'agregar usuarios', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(6, 'usuario.eliminados', 'ver usuarios eliminados', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(7, 'usuario.restore', 'restaurar usuarios eliminados', 2, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(8, 'rol', 'rol principal', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(9, 'rol.editar', 'editar rol', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(10, 'rol.eliminar', 'eliminar rol', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(11, 'rol.agregar', 'agregar rol', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(12, 'rol.eliminados', 'ver rol eliminados', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(13, 'rol.restore', 'restaurar rol eliminados', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(14, 'rol.permiso', 'ver permisos del rol', 3, 'web', '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(15, 'provedor', 'provedor principal', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(16, 'provedor.editar', 'editar provedor', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(17, 'provedor.eliminar', 'eliminar provedor', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(18, 'provedor.agregar', 'agregar provedor', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(19, 'provedor.eliminados', 'ver provedor eliminados', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(20, 'provedor.restore', 'restaurar provedor eliminados', 4, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(21, 'cliente', 'cliente principal', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(22, 'cliente.editar', 'editar cliente', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(23, 'cliente.eliminar', 'eliminar cliente', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(24, 'cliente.agregar', 'agregar cliente', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(25, 'cliente.eliminados', 'ver cliente eliminados', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(26, 'cliente.restore', 'restaurar cliente eliminados', 5, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(27, 'categoria', 'categoria principal', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(28, 'categoria.editar', 'editar categoria', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(29, 'categoria.eliminar', 'eliminar categoria', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(30, 'categoria.agregar', 'agregar categoria', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(31, 'categoria.eliminados', 'ver categoria eliminados', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(32, 'categoria.restore', 'restaurar categoria eliminados', 6, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(33, 'ingrediente', 'ingrediente principal', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(34, 'ingrediente.editar', 'editar ingrediente', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(35, 'ingrediente.eliminar', 'eliminar ingrediente', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(36, 'ingrediente.agregar', 'agregar ingrediente', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(37, 'ingrediente.eliminados', 'ver ingrediente eliminados', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(38, 'ingrediente.restore', 'restaurar ingrediente eliminados', 7, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(39, 'empleado', 'empleado principal', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(40, 'empleado.editar', 'editar empleado', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(41, 'empleado.eliminar', 'eliminar empleado', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(42, 'empleado.agregar', 'agregar empleado', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(43, 'empleado.eliminados', 'ver empleado eliminados', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(44, 'empleado.restore', 'restaurar empleado eliminados', 8, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(45, 'repartidor', 'repartidor principal', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(46, 'repartidor.editar', 'editar repartidor', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(47, 'repartidor.eliminar', 'eliminar repartidor', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(48, 'repartidor.agregar', 'agregar repartidor', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(49, 'repartidor.eliminados', 'ver repartidor eliminados', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(50, 'repartidor.restore', 'restaurar repartidor eliminados', 9, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(51, 'reporte', 'reporte principal', 10, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(52, 'reporte.stock_minimo', 'mostrar reporte de stock minimos', 10, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(53, 'reporte.rango_de_fechas', 'mostrar reportes con rango de fechas', 10, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(54, 'grafico', 'mostrar graficos de promedios', 11, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(55, 'pedido', 'pedido principal', 12, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(56, 'pedido.editar', 'mostrar editar pedidos', 12, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(57, 'pedido.solicitudes', 'permitir aceptar solicitudes', 12, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(58, 'pedido.asignar', 'asignar repartidor a pedidos', 12, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(59, 'produccion', 'produccion principal', 13, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(60, 'produccion.nuevo', 'crear produccion', 13, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(61, 'produccion.terminados', 'ver estado de produccion', 13, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(62, 'producto', 'producto principal', 14, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(63, 'producto.editar', 'editar producto', 14, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(64, 'producto.eliminar', 'eliminar producto', 14, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(65, 'producto.agregar', 'agregar producto', 14, 'web', '2023-12-13 08:02:26', '2023-12-13 08:02:26'),
(66, 'producto.eliminados', 'ver producto eliminados', 14, 'web', '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(67, 'producto.restore', 'restaurar producto eliminados', 14, 'web', '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ppersonas`
--

CREATE TABLE `ppersonas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ppersonas`
--

INSERT INTO `ppersonas` (`id`, `nombre`, `apellidos`, `created_at`, `updated_at`) VALUES
(1, 'Marcelo', 'quiroga', '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(2, 'juan', 'torrez', '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(3, 'fernando', 'mamani', '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `recetado` tinyint(4) NOT NULL DEFAULT 0,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `id_proveedor` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `estado`, `recetado`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Pizza napolitana', 'La pizza napolitana, de masa tierna y delgada ', 40.00, 0, 1, 0, 1, NULL),
(2, 'Pizza hawaiana', 'Tomate frito · 4 rodajas de piña · Queso rallado ', 52.00, 0, 1, 0, 1, NULL),
(3, 'Coca Cola', 'Gaseosa de 2 L', 12.00, 0, 1, 0, 2, NULL),
(4, 'Fanta', 'Gaseosa de 2L', 12.40, 0, 1, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_almacen`
--

CREATE TABLE `producto_almacen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED DEFAULT NULL,
  `id_almacen` bigint(20) UNSIGNED DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_almacen`
--

INSERT INTO `producto_almacen` (`id`, `id_producto`, `id_almacen`, `stock`, `estado`) VALUES
(1, 1, 1, 200, 1),
(2, 2, 2, 200, 1),
(3, 3, 2, 200, 1),
(4, 4, 3, 200, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`id`, `direccion`, `telefono`, `correo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'santa cruz de la sierra', 823822, 'marcelo@gmail.com', 1, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(2, 'santa cruz de la sierra', 64532123, 'juan@gmail.com', 1, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(3, 'minero', 64532, 'fernando@gmail.com', 1, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(4, 'montero av. avaroa', 322465, 'cocacolac@gmail.com', 1, '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_licencia` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `repartidores`
--

INSERT INTO `repartidores` (`id`, `nombre`, `apellidos`, `edad`, `telefono`, `nro_licencia`, `estado`, `id_usuario`) VALUES
(1, 'Deniss', 'Montero Melgar', 21, '67628811', 'Categoria A', 1, 3),
(2, 'Luis Fernando', 'Calderon', 21, '76521212', 'Categoria A', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', 1, '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(2, 'Cliente', 'web', 1, '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(3, 'Repartidor', 'web', 1, '2023-12-13 08:02:25', '2023-12-13 08:02:25'),
(4, 'Recepcionesta', 'web', 1, '2023-12-13 08:02:25', '2023-12-13 08:02:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 4),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal_inventario`
--

CREATE TABLE `temporal_inventario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_almacen` int(11) NOT NULL,
  `almacen` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `referencia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$jASu1TD93YwMNjkptV8MHu5HofRAHQ0qItj1taFWoLhEcQ38HPo4m', 1, NULL, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(2, 'elian', 'elian@gmail.com', NULL, '$2y$10$JvOyglhwMSbgHLhORDFPzeUG1gNLIVY7MLKy0AeC/ivYjRqTFdalG', 1, NULL, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(3, 'Deniss', 'deniss@gmail.com', NULL, '$2y$10$YK.VbcR4qFc0r.bKXYdqNOewFaol.RnT6/Qua2tFjyNZLOh2UO45a', 1, NULL, '2023-12-13 08:02:27', '2023-12-13 08:02:27'),
(4, 'luis fernando', 'luis@gmail.com', NULL, '$2y$10$4YK4e6bpP0nXmcspCBdbzuhF1NdvHVFK5jmTzjq2tY/CjRyv1uCh2', 1, NULL, '2023-12-13 08:02:27', '2023-12-13 08:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monto_total` double(8,2) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` bigint(20) UNSIGNED DEFAULT NULL,
  `id_cliente` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_pedidos_id_productodealmacen_foreign` (`id_productodealmacen`),
  ADD KEY `detalle_pedidos_id_pedido_foreign` (`id_pedido`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ventas_id_venta_foreign` (`id_venta`),
  ADD KEY `detalle_ventas_id_productodealmacen_foreign` (`id_productodealmacen`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_id_ubicacion_unique` (`id_ubicacion`),
  ADD KEY `pedidos_id_cliente_foreign` (`id_cliente`),
  ADD KEY `pedidos_id_empleado_foreign` (`id_empleado`),
  ADD KEY `pedidos_id_repartidor_foreign` (`id_repartidor`);

--
-- Indices de la tabla `pempresas`
--
ALTER TABLE `pempresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `ppersonas`
--
ALTER TABLE `ppersonas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`),
  ADD KEY `productos_id_proveedor_foreign` (`id_proveedor`);

--
-- Indices de la tabla `producto_almacen`
--
ALTER TABLE `producto_almacen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_almacen_id_producto_foreign` (`id_producto`),
  ADD KEY `producto_almacen_id_almacen_foreign` (`id_almacen`);

--
-- Indices de la tabla `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repartidores_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `temporal_inventario`
--
ALTER TABLE `temporal_inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_id_usuario_foreign` (`id_usuario`),
  ADD KEY `ventas_id_cliente_foreign` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pempresas`
--
ALTER TABLE `pempresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ppersonas`
--
ALTER TABLE `ppersonas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto_almacen`
--
ALTER TABLE `producto_almacen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `temporal_inventario`
--
ALTER TABLE `temporal_inventario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_id_pedido_foreign` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedidos_id_productodealmacen_foreign` FOREIGN KEY (`id_productodealmacen`) REFERENCES `producto_almacen` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_id_productodealmacen_foreign` FOREIGN KEY (`id_productodealmacen`) REFERENCES `producto_almacen` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ventas_id_venta_foreign` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `pedidos_id_empleado_foreign` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `pedidos_id_repartidor_foreign` FOREIGN KEY (`id_repartidor`) REFERENCES `repartidores` (`id`),
  ADD CONSTRAINT `pedidos_id_ubicacion_foreign` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pempresas`
--
ALTER TABLE `pempresas`
  ADD CONSTRAINT `pempresas_id_foreign` FOREIGN KEY (`id`) REFERENCES `provedores` (`id`);

--
-- Filtros para la tabla `ppersonas`
--
ALTER TABLE `ppersonas`
  ADD CONSTRAINT `ppersonas_id_foreign` FOREIGN KEY (`id`) REFERENCES `provedores` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `provedores` (`id`);

--
-- Filtros para la tabla `producto_almacen`
--
ALTER TABLE `producto_almacen`
  ADD CONSTRAINT `producto_almacen_id_almacen_foreign` FOREIGN KEY (`id_almacen`) REFERENCES `almacenes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_almacen_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD CONSTRAINT `repartidores_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
