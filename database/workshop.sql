-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 02:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `image`, `details`, `created_at`, `updated_at`) VALUES
(2, 'Set Goals', '/storage/2022/06/17/6773b85420ccaa269b16974502cf7bf0ad81f14c.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum</p>', '2022-03-20 08:08:07', '2022-06-17 04:58:35'),
(3, 'Smart', '/storage/2022/06/17/808b6ea4bea8d984512f72fcf2f2a561364b1a8d.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum</p>', '2022-03-21 15:13:22', '2022-06-17 04:59:23'),
(4, 'Accomplishment', '/storage/2022/06/17/61abdcd6706198dbdbb52138478594b9be56be94.png', '<p><span style=\"color: rgb(101, 101, 101);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum</span></p>', '2022-06-17 01:21:04', '2022-06-17 05:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, '/storage/2022/06/17/2fbdab67517e29a9b768db26dd3080a21cef239b.png', '2022-06-17 01:59:01', '2022-06-17 04:39:52'),
(3, '/storage/2022/06/17/c0b7378e35ab79bb00f40323aba26080537649d3.png', '2022-06-17 02:26:17', '2022-06-17 04:40:11'),
(5, '/storage/2022/06/17/1f862fa2aeb019d7e8460d46a137f7ac3fb794eb.png', '2022-06-17 04:49:14', '2022-06-17 04:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `body`, `image`, `slug`, `status`, `popular`, `user_id`, `created_at`, `updated_at`) VALUES
(23, 'Orange Juice', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/2e75bfe16d8191a73e59f4a06ff6013018ecd810.png', 'orange-juice', 'pending', 0, 1, '2022-06-17 04:06:57', '2022-06-17 04:06:57'),
(24, 'Orange Flower', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/3fe0ca67bb3bfa17fbbbe806b1182f8600a25b88.png', 'orange-flower', 'pending', 0, 1, '2022-06-17 04:08:13', '2022-06-17 04:08:13'),
(25, 'Blue Flower', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/4b59496e1ef669577b190dc1f38aa0a654b6d331.png', 'blue-flower', 'pending', 1, 1, '2022-06-17 04:08:57', '2022-06-17 04:08:57'),
(26, 'White Flower', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/a4ca12f81e926dc7b304db938ac4b4676e175516.png', 'white-flower', 'pending', 0, 1, '2022-06-17 04:10:25', '2022-06-17 04:10:25'),
(27, 'Chicken', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/d8625d4134619572363d23dbf6ad27854b77bddd.png', 'chicken', 'pending', 0, 1, '2022-06-17 04:11:30', '2022-06-17 04:11:30'),
(28, 'Potato', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/ee26d8d67ee862d4734a10beca30ca4c4d760758.png', 'potato', 'pending', 1, 1, '2022-06-17 04:12:15', '2022-06-17 04:12:15'),
(29, 'Books', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/73b23658da20449e3344643fab47361d0b1fb9c1.png', 'books', 'pending', 0, 1, '2022-06-17 04:21:04', '2022-06-17 04:21:04'),
(30, 'Notes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/3d366b36b8ff3324f8083613babfa37e0105e63e.png', 'notes', 'pending', 1, 1, '2022-06-17 04:22:05', '2022-06-17 04:22:05'),
(31, 'Football', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/411f32eccb75b2c858106f26ddd2008ac10b699d.png', 'football', 'pending', 0, 1, '2022-06-17 04:24:24', '2022-06-17 04:24:24'),
(32, 'Basketball', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue ut lectus arcu bibendum. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Mollis aliquam ut porttitor leo a diam. Posuere morbi leo urna molestie at elementum eu facilisis sed. Egestas tellus rutrum tellus pellentesque eu tincidunt. Aliquam sem et tortor consequat id porta nibh venenatis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dui id ornare arcu odio ut. Egestas erat imperdiet sed euismod. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Velit aliquet sagittis id consectetur purus ut faucibus. Odio ut sem nulla pharetra diam sit. Nunc sed blandit libero volutpat. Ut ornare lectus sit amet. Auctor elit sed vulputate mi sit amet mauris commodo. Vivamus arcu felis bibendum ut tristique et egestas.</p><p>Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Vivamus arcu felis bibendum ut tristique et. Facilisi nullam vehicula ipsum a arcu cursus vitae. Morbi tempus iaculis urna id volutpat lacus laoreet non. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Bibendum arcu vitae elementum curabitur vitae. A erat nam at lectus urna duis convallis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eleifend mi in nulla posuere. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Id neque aliquam vestibulum morbi. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Pulvinar pellentesque habitant morbi tristique senectus. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Volutpat diam ut venenatis tellus in metus. Elit eget gravida cum sociis natoque penatibus et magnis dis. Consequat nisl vel pretium lectus quam id.</p>', '/storage/2022/06/17/a495c3ef610422aa463bf53031bb50cbe01597ba.png', 'basketball', 'pending', 0, 1, '2022-06-17 04:25:13', '2022-06-17 04:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 23, 4, NULL, NULL),
(8, 24, 7, NULL, NULL),
(9, 25, 7, NULL, NULL),
(10, 26, 7, NULL, NULL),
(11, 27, 5, NULL, NULL),
(12, 28, 5, NULL, NULL),
(13, 29, 8, NULL, NULL),
(14, 30, 8, NULL, NULL),
(15, 31, 6, NULL, NULL),
(16, 32, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `article_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `tag_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, NULL, NULL),
(2, 2, 22, NULL, NULL),
(3, 2, 23, NULL, NULL),
(4, 4, 24, NULL, NULL),
(5, 4, 25, NULL, NULL),
(6, 4, 26, NULL, NULL),
(7, 5, 27, NULL, NULL),
(8, 5, 28, NULL, NULL),
(9, 3, 29, NULL, NULL),
(10, 3, 30, NULL, NULL),
(11, 1, 31, NULL, NULL),
(12, 1, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachmentable`
--

CREATE TABLE `attachmentable` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentable_id` int(10) UNSIGNED NOT NULL,
  `attachment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `original_name`, `mime`, `extension`, `size`, `sort`, `path`, `description`, `alt`, `hash`, `disk`, `user_id`, `group`, `created_at`, `updated_at`) VALUES
(1, 'c912b9d5e639ba374e1d400ca0e131b6aa0b1b95', 'photo1636658964.jpeg', 'image/jpeg', 'jpeg', 144429, 0, '2022/03/19/', NULL, NULL, 'a7a12a7b959ddfcc17268c901b456c0e1ca888ba', 'public', 1, NULL, '2022-03-19 17:44:13', '2022-03-19 17:44:13'),
(2, '8e19c4fff52fd3a08ed6df8fd78fce0b7a05b722', 'معالم التزكية.png', 'image/png', 'png', 246951, 0, '2022/03/19/', NULL, NULL, '4785f9be8214efe71f8ba7687579329a4b1bd287', 'public', 1, NULL, '2022-03-19 18:15:16', '2022-03-19 18:15:16'),
(3, '2113ec60e2567ae941f9204e2488d1798876b024', 'مركزية التزكية.png', 'image/png', 'png', 240689, 0, '2022/03/19/', NULL, NULL, '464fccf201333436aa032bbc7e74df55c05a0fda', 'public', 1, NULL, '2022-03-19 18:16:22', '2022-03-19 18:16:22'),
(4, '8e19c4fff52fd3a08ed6df8fd78fce0b7a05b722', 'معالم التزكية.png', 'image/png', 'png', 246951, 0, '2022/03/19/', NULL, NULL, '4785f9be8214efe71f8ba7687579329a4b1bd287', 'public', 1, NULL, '2022-03-19 18:19:06', '2022-03-19 18:19:06'),
(5, '4952193fc41421923adc4dd2e37d75053af09bdc', 'معالم في عوائق التزكية2.jpg', 'image/jpeg', 'jpg', 227938, 0, '2022/03/19/', NULL, NULL, '809da8a9d57a9fca8a4de158e41455509ef8fce8', 'public', 1, NULL, '2022-03-19 18:21:39', '2022-03-19 18:21:39'),
(6, '4952193fc41421923adc4dd2e37d75053af09bdc', 'معالم في عوائق التزكية2.jpg', 'image/jpeg', 'jpg', 227938, 0, '2022/03/19/', NULL, NULL, '809da8a9d57a9fca8a4de158e41455509ef8fce8', 'public', 1, NULL, '2022-03-19 18:22:30', '2022-03-19 18:22:30'),
(7, '3cd9fdac5964a6313b13c0bb1bad41f21cb03a86', 'مركزية التزكية3-01.jpg', 'image/jpeg', 'jpg', 2011414, 0, '2022/03/19/', NULL, NULL, '5bde7e90b394c5ef75ea62358c0ef099cc5ae999', 'public', 1, NULL, '2022-03-19 18:24:03', '2022-03-19 18:24:03'),
(8, '19e7a43a3f04f712af08cfa1455d717ab38f1317', 'blob', 'image/png', 'png', 60527, 0, '2022/03/20/', NULL, NULL, 'f1fc2bafceaad8f0f36fb2be78a5a69a3eb47365', 'public', 1, NULL, '2022-03-20 04:35:27', '2022-03-20 04:35:27'),
(9, '18c580d183e401c66d6bbd85895ffefdeea769a0', 'blob', 'image/png', 'png', 76798, 0, '2022/03/20/', NULL, NULL, 'fad0cb85094d0ac5129b991ba49681836e981f68', 'public', 1, NULL, '2022-03-20 04:39:45', '2022-03-20 04:39:45'),
(10, '7ab01102d045240b7e018675f718870bcfbbf8ad', 'blob', 'image/png', 'png', 64870, 0, '2022/03/20/', NULL, NULL, '1484ff9c0d64dcdf7f117843d03ce7fe6abdfee1', 'public', 1, NULL, '2022-03-20 04:48:06', '2022-03-20 04:48:06'),
(11, '7ab01102d045240b7e018675f718870bcfbbf8ad', 'blob', 'image/png', 'png', 64870, 0, '2022/03/20/', NULL, NULL, '1484ff9c0d64dcdf7f117843d03ce7fe6abdfee1', 'public', 1, NULL, '2022-03-20 05:12:39', '2022-03-20 05:12:39'),
(12, 'd52cf8924867324ef447f85716139104b062ea24', 'blob', 'image/png', 'png', 71294, 0, '2022/03/20/', NULL, NULL, 'efe8a1bec1dc0552628bd791568716a8fb315524', 'public', 1, NULL, '2022-03-20 07:01:20', '2022-03-20 07:01:20'),
(13, 'd52cf8924867324ef447f85716139104b062ea24', 'blob', 'image/png', 'png', 71294, 0, '2022/03/20/', NULL, NULL, 'efe8a1bec1dc0552628bd791568716a8fb315524', 'public', 1, NULL, '2022-03-20 07:03:21', '2022-03-20 07:03:21'),
(14, '7ab01102d045240b7e018675f718870bcfbbf8ad', 'blob', 'image/png', 'png', 64870, 0, '2022/03/20/', NULL, NULL, '1484ff9c0d64dcdf7f117843d03ce7fe6abdfee1', 'public', 1, NULL, '2022-03-20 07:05:39', '2022-03-20 07:05:39'),
(15, 'b0182f6f8849cc236af3642235815d6e137cd0bf', 'blob', 'image/png', 'png', 21864, 0, '2022/03/20/', NULL, NULL, '88810160d10252869abe372cb4b7d1610f860767', 'public', 1, NULL, '2022-03-20 08:08:01', '2022-03-20 08:08:01'),
(16, 'e40ca686fc7707eb533841f4a4ffed0fc92b634e', 'blob', 'image/png', 'png', 94816, 0, '2022/03/20/', NULL, NULL, '6050a91b2e5b8967e401681f8131cff9cc57d520', 'public', 1, NULL, '2022-03-20 09:15:20', '2022-03-20 09:15:20'),
(17, '18c580d183e401c66d6bbd85895ffefdeea769a0', 'blob', 'image/png', 'png', 76798, 0, '2022/03/20/', NULL, NULL, 'fad0cb85094d0ac5129b991ba49681836e981f68', 'public', 1, NULL, '2022-03-20 09:16:27', '2022-03-20 09:16:27'),
(18, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-20 09:16:53', '2022-03-20 09:16:53'),
(19, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-20 09:19:06', '2022-03-20 09:19:06'),
(20, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-20 09:19:44', '2022-03-20 09:19:44'),
(21, 'f5de84e104bc6f57fbe09fad515b44cbc1f3e71b', 'blob', 'image/png', 'png', 130670, 0, '2022/03/20/', NULL, NULL, '539296e8895505b6cbe49048043e188022882494', 'public', 1, NULL, '2022-03-20 09:23:59', '2022-03-20 09:23:59'),
(22, 'e40ca686fc7707eb533841f4a4ffed0fc92b634e', 'blob', 'image/png', 'png', 94816, 0, '2022/03/20/', NULL, NULL, '6050a91b2e5b8967e401681f8131cff9cc57d520', 'public', 1, NULL, '2022-03-21 13:47:07', '2022-03-21 13:47:07'),
(23, '18c580d183e401c66d6bbd85895ffefdeea769a0', 'blob', 'image/png', 'png', 76798, 0, '2022/03/20/', NULL, NULL, 'fad0cb85094d0ac5129b991ba49681836e981f68', 'public', 1, NULL, '2022-03-21 13:48:08', '2022-03-21 13:48:08'),
(24, '18c580d183e401c66d6bbd85895ffefdeea769a0', 'blob', 'image/png', 'png', 76798, 0, '2022/03/20/', NULL, NULL, 'fad0cb85094d0ac5129b991ba49681836e981f68', 'public', 1, NULL, '2022-03-21 13:49:18', '2022-03-21 13:49:18'),
(25, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 15:13:18', '2022-03-21 15:13:18'),
(26, '18c580d183e401c66d6bbd85895ffefdeea769a0', 'blob', 'image/png', 'png', 76798, 0, '2022/03/20/', NULL, NULL, 'fad0cb85094d0ac5129b991ba49681836e981f68', 'public', 1, NULL, '2022-03-21 15:14:15', '2022-03-21 15:14:15'),
(27, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 15:15:34', '2022-03-21 15:15:34'),
(28, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 16:55:29', '2022-03-21 16:55:29'),
(29, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 17:05:10', '2022-03-21 17:05:10'),
(30, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 17:13:00', '2022-03-21 17:13:00'),
(31, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 17:18:58', '2022-03-21 17:18:58'),
(32, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-21 17:31:57', '2022-03-21 17:31:57'),
(33, '6b35d6e29e132ba6721acd4732fbf95fa6662528', 'blob', 'image/png', 'png', 62819, 0, '2022/03/25/', NULL, NULL, 'b70e694b4a90d50241f3ab68a10b978687807b02', 'public', 1, NULL, '2022-03-25 02:22:21', '2022-03-25 02:22:21'),
(34, 'b0182f6f8849cc236af3642235815d6e137cd0bf', 'blob', 'image/png', 'png', 21864, 0, '2022/03/20/', NULL, NULL, '88810160d10252869abe372cb4b7d1610f860767', 'public', 1, NULL, '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(35, '65e378d0795bdbb7d7eda28a6ce640af71964a15', 'blob', 'image/png', 'png', 63531, 0, '2022/03/20/', NULL, NULL, 'fd9671577ca79e67226e6940a384765a4f8c7ff6', 'public', 1, NULL, '2022-03-25 03:58:40', '2022-03-25 03:58:40'),
(36, 'b0182f6f8849cc236af3642235815d6e137cd0bf', 'blob', 'image/png', 'png', 21864, 0, '2022/03/20/', NULL, NULL, '88810160d10252869abe372cb4b7d1610f860767', 'public', 1, NULL, '2022-03-25 05:03:49', '2022-03-25 05:03:49'),
(37, 'e40ca686fc7707eb533841f4a4ffed0fc92b634e', 'blob', 'image/png', 'png', 94816, 0, '2022/03/20/', NULL, NULL, '6050a91b2e5b8967e401681f8131cff9cc57d520', 'public', 1, NULL, '2022-03-25 05:04:16', '2022-03-25 05:04:16'),
(38, '1ceebb5444623edefa93af932416469f3125d7b4', 'blob', 'image/png', 'png', 202599, 0, '2022/03/25/', NULL, NULL, '6575e2bf034c93ff648b9579fa006ab62b8dd4f1', 'public', 1, NULL, '2022-03-25 05:06:53', '2022-03-25 05:06:53'),
(39, 'd05fbe7cb18217378474127e4c3c59dd5cbad237', 'blob', 'image/png', 'png', 254607, 0, '2022/03/25/', NULL, NULL, '2eb8f159f299580bfad2d20842b939a85fbf7fd6', 'public', 1, NULL, '2022-03-25 05:07:53', '2022-03-25 05:07:53'),
(40, '4f2da9c617e205ac0ce3eca8ce1a4fcac847d292', 'blob', 'image/png', 'png', 206878, 0, '2022/03/25/', NULL, NULL, '90d1514a18c901cc3602653219bef46a81305433', 'public', 1, NULL, '2022-03-25 05:08:41', '2022-03-25 05:08:41'),
(41, 'c6ceb024d413bb9d7f4e64e280c86a90acbd15f9', 'blob', 'image/png', 'png', 192063, 0, '2022/04/09/', NULL, NULL, '66304cb196f37d9f653333fb5aa56ea02791cb82', 'public', 1, NULL, '2022-04-09 17:33:01', '2022-04-09 17:33:01'),
(42, '7cef2bf69150c562c7c3cfbad5a6d0b64ef7c6ad', 'blob', 'image/png', 'png', 185450, 0, '2022/04/09/', NULL, NULL, 'd5c90ac109aa7f89fc941c86e901a308bb899b59', 'public', 1, NULL, '2022-04-09 17:33:25', '2022-04-09 17:33:25'),
(43, '5dc77720c34473bfd76539f5d957a921eaf2d23a', 'blob', 'image/png', 'png', 187291, 0, '2022/06/02/', NULL, NULL, '8db4317185f6a7ee0597472f2884fd396e12f862', 'public', 1, NULL, '2022-06-02 19:22:55', '2022-06-02 19:22:55'),
(44, '5dc77720c34473bfd76539f5d957a921eaf2d23a', 'blob', 'image/png', 'png', 187291, 0, '2022/06/02/', NULL, NULL, '8db4317185f6a7ee0597472f2884fd396e12f862', 'public', 1, NULL, '2022-06-02 19:24:23', '2022-06-02 19:24:23'),
(45, '61425b15d39646102e783accae95a6f5c2733841', 'blob', 'image/png', 'png', 261610, 0, '2022/06/02/', NULL, NULL, '752c31582776103af35b5136acb33d512f54281d', 'public', 1, NULL, '2022-06-02 19:29:55', '2022-06-02 19:29:55'),
(46, '5dc77720c34473bfd76539f5d957a921eaf2d23a', 'blob', 'image/png', 'png', 187291, 0, '2022/06/02/', NULL, NULL, '8db4317185f6a7ee0597472f2884fd396e12f862', 'public', 1, NULL, '2022-06-02 19:34:32', '2022-06-02 19:34:32'),
(47, '2d7dd5bbf846b61dccdf86f09b6c5176db491d85', 'blob', 'image/png', 'png', 242086, 0, '2022/06/02/', NULL, NULL, 'a8068fc7a0e6a5092d14aaabb5a5cb5eacce6e7d', 'public', 1, NULL, '2022-06-02 19:38:34', '2022-06-02 19:38:34'),
(48, '591e24320c7634ba60a46299d0889e951731a5c4', 'blob', 'image/png', 'png', 95685, 0, '2022/06/02/', NULL, NULL, '472a8af611b8ff5320af1b714452ad987ab88f76', 'public', 1, NULL, '2022-06-02 21:28:51', '2022-06-02 21:28:51'),
(49, 'b0dbf9c2f99a758fa36d918d9438b63d0bf7404b', 'blob', 'image/png', 'png', 89940, 0, '2022/06/02/', NULL, NULL, 'a82722c66b8e9044ceef1ba7916212b200f9166c', 'public', 1, NULL, '2022-06-02 21:29:37', '2022-06-02 21:29:37'),
(50, 'b0dbf9c2f99a758fa36d918d9438b63d0bf7404b', 'blob', 'image/png', 'png', 89940, 0, '2022/06/02/', NULL, NULL, 'a82722c66b8e9044ceef1ba7916212b200f9166c', 'public', 1, NULL, '2022-06-02 21:42:47', '2022-06-02 21:42:47'),
(51, '09a03197f3b552eaa3dfd5badf4cb502695cebcc', 'blob', 'image/png', 'png', 314639, 0, '2022/06/02/', NULL, NULL, 'd50e42fbcb29a80dae647fca6c90a32d5d3d7fec', 'public', 1, NULL, '2022-06-02 21:44:38', '2022-06-02 21:44:38'),
(52, '25b411f4ebcaed79b09392602c935496717141c4', 'blob', 'image/png', 'png', 262877, 0, '2022/06/02/', NULL, NULL, 'f3b18fd925121c44eafbab472b9cd1d0afe37942', 'public', 1, NULL, '2022-06-02 21:44:50', '2022-06-02 21:44:50'),
(53, '25b411f4ebcaed79b09392602c935496717141c4', 'blob', 'image/png', 'png', 262877, 0, '2022/06/02/', NULL, NULL, 'f3b18fd925121c44eafbab472b9cd1d0afe37942', 'public', 1, NULL, '2022-06-02 21:46:14', '2022-06-02 21:46:14'),
(54, 'b0dbf9c2f99a758fa36d918d9438b63d0bf7404b', 'blob', 'image/png', 'png', 89940, 0, '2022/06/02/', NULL, NULL, 'a82722c66b8e9044ceef1ba7916212b200f9166c', 'public', 1, NULL, '2022-06-02 22:05:17', '2022-06-02 22:05:17'),
(55, 'b0dbf9c2f99a758fa36d918d9438b63d0bf7404b', 'blob', 'image/png', 'png', 89940, 0, '2022/06/02/', NULL, NULL, 'a82722c66b8e9044ceef1ba7916212b200f9166c', 'public', 1, NULL, '2022-06-02 22:18:09', '2022-06-02 22:18:09'),
(56, '591e24320c7634ba60a46299d0889e951731a5c4', 'blob', 'image/png', 'png', 95685, 0, '2022/06/02/', NULL, NULL, '472a8af611b8ff5320af1b714452ad987ab88f76', 'public', 1, NULL, '2022-06-02 22:41:32', '2022-06-02 22:41:32'),
(57, '591e24320c7634ba60a46299d0889e951731a5c4', 'blob', 'image/png', 'png', 95685, 0, '2022/06/02/', NULL, NULL, '472a8af611b8ff5320af1b714452ad987ab88f76', 'public', 1, NULL, '2022-06-06 04:58:37', '2022-06-06 04:58:37'),
(58, '5dc77720c34473bfd76539f5d957a921eaf2d23a', 'blob', 'image/png', 'png', 187291, 0, '2022/06/02/', NULL, NULL, '8db4317185f6a7ee0597472f2884fd396e12f862', 'public', 1, NULL, '2022-06-06 05:01:18', '2022-06-06 05:01:18'),
(59, '8e3ef368ab68611f330e7357cf19c6594df694d1', 'blob', 'image/png', 'png', 17841, 0, '2022/06/15/', NULL, NULL, 'b59cec5e59b8447c5a6d01c7c4b93e27ce743052', 'public', 1, NULL, '2022-06-15 15:21:39', '2022-06-15 15:21:39'),
(60, '8e3ef368ab68611f330e7357cf19c6594df694d1', 'blob', 'image/png', 'png', 17841, 0, '2022/06/15/', NULL, NULL, 'b59cec5e59b8447c5a6d01c7c4b93e27ce743052', 'public', 1, NULL, '2022-06-17 01:20:46', '2022-06-17 01:20:46'),
(61, '39f0e4171d7684ba0bdbe50d372f72b2ce66721a', 'blob', 'image/png', 'png', 140948, 0, '2022/06/17/', NULL, NULL, 'c3d4169596cd3b33f32499112c5d5838e956b523', 'public', 1, NULL, '2022-06-17 01:21:00', '2022-06-17 01:21:00'),
(62, '849cde0f0899fd6e4d9acf4b5ccd0f79c0103b7c', 'blob', 'image/png', 'png', 41021, 0, '2022/06/17/', NULL, NULL, '1c168dbdf40e03146a46f1e2b2e341d31f4a1e7f', 'public', 1, NULL, '2022-06-17 01:54:06', '2022-06-17 01:54:06'),
(63, '8e3ef368ab68611f330e7357cf19c6594df694d1', 'blob', 'image/png', 'png', 17841, 0, '2022/06/15/', NULL, NULL, 'b59cec5e59b8447c5a6d01c7c4b93e27ce743052', 'public', 1, NULL, '2022-06-17 01:58:59', '2022-06-17 01:58:59'),
(64, '6e9d1150770d17d0d4238b551683adda87fee5bd', 'blob', 'image/png', 'png', 115498, 0, '2022/06/17/', NULL, NULL, 'fda16200f4589ca6719dd310b0fe5967606407bd', 'public', 1, NULL, '2022-06-17 02:26:14', '2022-06-17 02:26:14'),
(65, '9d992888074ff38dfe9b90be4236f272a1df4b02', 'blob', 'image/png', 'png', 73876, 0, '2022/06/17/', NULL, NULL, 'a460a6758176970486eebe744de79db1fe33db88', 'public', 1, NULL, '2022-06-17 02:26:38', '2022-06-17 02:26:38'),
(66, 'd10f6f55d780e078d81c3b60ec04a7eeac2f56e1', 'blob', 'image/png', 'png', 294938, 0, '2022/06/17/', NULL, NULL, '54d13172934979e4774bc99d155716bb8fe3ebdc', 'public', 1, NULL, '2022-06-17 03:53:33', '2022-06-17 03:53:33'),
(67, '80a456c61b1c39ddce76100ce461ea87eec734fc', 'blob', 'image/png', 'png', 263585, 0, '2022/06/17/', NULL, NULL, 'b3cfe0e13112dfa7c1f9e048ecdcb0df0b925c68', 'public', 1, NULL, '2022-06-17 03:55:26', '2022-06-17 03:55:26'),
(68, 'fd3a0387ccf6b90c9ddc4849fe4636e32e244322', 'blob', 'image/png', 'png', 254459, 0, '2022/06/17/', NULL, NULL, '943439485f87e659083e4f71ca7778c583ddfa93', 'public', 1, NULL, '2022-06-17 03:57:21', '2022-06-17 03:57:21'),
(69, 'a30b51b2dfb685f64308e6097b68f725dee0927b', 'blob', 'image/png', 'png', 267421, 0, '2022/06/17/', NULL, NULL, 'be4a4b3aad26e13ed9c478be36a0555516a572dc', 'public', 1, NULL, '2022-06-17 03:58:32', '2022-06-17 03:58:32'),
(70, '390c42212d78d7ebacb0e4111c5f8e4bff4ccf35', 'blob', 'image/png', 'png', 172242, 0, '2022/06/17/', NULL, NULL, '3e138e71dbfc5ff02f26a92c0401f3e73098dd40', 'public', 1, NULL, '2022-06-17 03:59:59', '2022-06-17 03:59:59'),
(71, '2e75bfe16d8191a73e59f4a06ff6013018ecd810', 'blob', 'image/png', 'png', 179973, 0, '2022/06/17/', NULL, NULL, '87e3dadee8499f811324f980522de8e0ab570462', 'public', 1, NULL, '2022-06-17 04:06:51', '2022-06-17 04:06:51'),
(72, '3fe0ca67bb3bfa17fbbbe806b1182f8600a25b88', 'blob', 'image/png', 'png', 254855, 0, '2022/06/17/', NULL, NULL, 'cfce72aa72a037de74634bcd9d1fcdf07a19ba7a', 'public', 1, NULL, '2022-06-17 04:08:11', '2022-06-17 04:08:11'),
(73, '4b59496e1ef669577b190dc1f38aa0a654b6d331', 'blob', 'image/png', 'png', 295131, 0, '2022/06/17/', NULL, NULL, '7615e2bf0d0ec868f06ff6416c42bc49ad07e0e5', 'public', 1, NULL, '2022-06-17 04:08:53', '2022-06-17 04:08:53'),
(74, 'a4ca12f81e926dc7b304db938ac4b4676e175516', 'blob', 'image/png', 'png', 174887, 0, '2022/06/17/', NULL, NULL, 'e0400dfd057e51ad6c9ba0119cf40508d8df0108', 'public', 1, NULL, '2022-06-17 04:10:22', '2022-06-17 04:10:22'),
(75, 'd8625d4134619572363d23dbf6ad27854b77bddd', 'blob', 'image/png', 'png', 232559, 0, '2022/06/17/', NULL, NULL, 'c52e20efc348c2113f8ad86f46f145307f538f9d', 'public', 1, NULL, '2022-06-17 04:11:26', '2022-06-17 04:11:26'),
(76, 'ee26d8d67ee862d4734a10beca30ca4c4d760758', 'blob', 'image/png', 'png', 281941, 0, '2022/06/17/', NULL, NULL, '2038a0b9ec09fc1240494b00e75d0cc7040fb97d', 'public', 1, NULL, '2022-06-17 04:12:12', '2022-06-17 04:12:12'),
(77, '73b23658da20449e3344643fab47361d0b1fb9c1', 'blob', 'image/png', 'png', 148849, 0, '2022/06/17/', NULL, NULL, 'b4d2a17e12aa234e935f22ee6d68e29795076cfd', 'public', 1, NULL, '2022-06-17 04:20:59', '2022-06-17 04:20:59'),
(78, '3d366b36b8ff3324f8083613babfa37e0105e63e', 'blob', 'image/png', 'png', 152490, 0, '2022/06/17/', NULL, NULL, 'a4fe29961af45f1a97c805912f98da107bcd47aa', 'public', 1, NULL, '2022-06-17 04:22:00', '2022-06-17 04:22:00'),
(79, '411f32eccb75b2c858106f26ddd2008ac10b699d', 'blob', 'image/png', 'png', 164273, 0, '2022/06/17/', NULL, NULL, '48366e7611d07baeca3329a2f6d44b21ac6ca5a4', 'public', 1, NULL, '2022-06-17 04:24:21', '2022-06-17 04:24:21'),
(80, 'a495c3ef610422aa463bf53031bb50cbe01597ba', 'blob', 'image/png', 'png', 204227, 0, '2022/06/17/', NULL, NULL, 'd49968bf19ea829880cf96717cf2ae61cb53ccfc', 'public', 1, NULL, '2022-06-17 04:25:08', '2022-06-17 04:25:08'),
(81, '3e3623fb5f24843b6567e71ab11bb90d675668bd', 'blob', 'image/png', 'png', 112128, 0, '2022/06/17/', NULL, NULL, '95cdc337e2cb7eb6eb7de5c056cd7992c74ba047', 'public', 1, NULL, '2022-06-17 04:37:44', '2022-06-17 04:37:44'),
(82, 'e3fbe27be14c7cbc384b05d582cc2e936c3c141b', 'blob', 'image/png', 'png', 211572, 0, '2022/06/17/', NULL, NULL, '906341f6afeb6344cdf8134ffa705a816afeda0d', 'public', 1, NULL, '2022-06-17 04:38:10', '2022-06-17 04:38:10'),
(83, '2fbdab67517e29a9b768db26dd3080a21cef239b', 'blob', 'image/png', 'png', 134597, 0, '2022/06/17/', NULL, NULL, 'a405f96955a73b5bbfa53e74e2f43f2aa7bfd118', 'public', 1, NULL, '2022-06-17 04:39:50', '2022-06-17 04:39:50'),
(84, 'c0b7378e35ab79bb00f40323aba26080537649d3', 'blob', 'image/png', 'png', 263470, 0, '2022/06/17/', NULL, NULL, 'a451437f5910d93e053b849d934855eb81bbcf25', 'public', 1, NULL, '2022-06-17 04:40:08', '2022-06-17 04:40:08'),
(85, '1f862fa2aeb019d7e8460d46a137f7ac3fb794eb', 'blob', 'image/png', 'png', 187277, 0, '2022/06/17/', NULL, NULL, '25af666a97252bf8d7435a6f4c6cc96b50a0358d', 'public', 1, NULL, '2022-06-17 04:49:03', '2022-06-17 04:49:03'),
(86, '6773b85420ccaa269b16974502cf7bf0ad81f14c', 'blob', 'image/png', 'png', 210718, 0, '2022/06/17/', NULL, NULL, '85b27a2c8252a8855fac5c8398df729822fc574c', 'public', 1, NULL, '2022-06-17 04:58:30', '2022-06-17 04:58:30'),
(87, '808b6ea4bea8d984512f72fcf2f2a561364b1a8d', 'blob', 'image/png', 'png', 275728, 0, '2022/06/17/', NULL, NULL, '716f13ed2904b7bf0fb2687768fec2576a0df111', 'public', 1, NULL, '2022-06-17 04:59:08', '2022-06-17 04:59:08'),
(88, '61abdcd6706198dbdbb52138478594b9be56be94', 'blob', 'image/png', 'png', 229681, 0, '2022/06/17/', NULL, NULL, '27d4dda70ed513a7ad6280f837c2f578a230cf2e', 'public', 1, NULL, '2022-06-17 05:02:03', '2022-06-17 05:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Drinks', '<p><span style=\"color: rgb(77, 81, 86);\">Beer Cocktails Cider&nbsp;Cocktails&nbsp;Coffee&nbsp;Drinks&nbsp;Eggnog Hot Chocolate Juice Lemonade Liqueurs Mocktails Mulled Wine Punch Sangria Shots Shakes and Floats Slushies&nbsp;</span></p>', '/storage/2022/06/17/d10f6f55d780e078d81c3b60ec04a7eeac2f56e1.png', 'drinks', '2022-06-17 03:53:44', '2022-06-17 03:53:44'),
(5, 'Food', '<p><span style=\"color: rgb(77, 81, 86);\">Love&nbsp;Food&nbsp;Network shows, chefs and recipes? Find the best recipe ideas, videos, healthy eating advice, party ideas and cooking techniques from top chefs</span></p>', '/storage/2022/06/17/80a456c61b1c39ddce76100ce461ea87eec734fc.png', 'food', '2022-06-17 03:55:31', '2022-06-17 03:55:31'),
(6, 'Sport', '<p><span style=\"color: rgb(77, 81, 86);\">Sports&nbsp;- Comprehensive news, scores, standings, fantasy games, rumors, and more</span></p>', '/storage/2022/06/17/fd3a0387ccf6b90c9ddc4849fe4636e32e244322.png', 'sport', '2022-06-17 03:57:27', '2022-06-17 03:57:27'),
(7, 'Flower', '<p><span style=\"color: rgb(77, 81, 86);\">flower, the characteristic reproductive structure of angiosperms. As popularly used, the term “flower” especially applies when part or all of the reproductive structure is distinctive</span></p>', '/storage/2022/06/17/a30b51b2dfb685f64308e6097b68f725dee0927b.png', 'flower', '2022-06-17 03:58:37', '2022-06-17 03:58:37'),
(8, 'Writing', '<p><span style=\"color: rgb(77, 81, 86);\">Writing. The Rosetta Stone, with&nbsp;writing&nbsp;in three different scripts, was instrumental in deciphering Ancient Egyptian.&nbsp;Writing&nbsp;is a medium of human communication</span></p>', '/storage/2022/06/17/390c42212d78d7ebacb0e4111c5f8e4bff4ccf35.png', 'writing', '2022-06-17 04:00:03', '2022-06-17 04:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 'reham', 'buy things', 'reham@mail', '<p>buy things buy things</p>', '2022-03-21 14:20:18', '2022-03-21 14:20:18'),
(2, 'rana', 'buy thingsss', 'rana@mail', '<p>buy thingsss buy thingsss</p>', '2022-03-21 14:25:02', '2022-03-21 14:25:02'),
(3, 'rehamhesham', 'ffghjn', 'Rehamhesham680@gmail.com', 'bbbbbbbbbbbbb', '2022-04-09 22:14:50', '2022-04-09 22:14:50'),
(4, 'Indy Cotton Scarf', 'ffghjn', 'rehamhesham680@gmail.com', 'messageeeeeee', '2022-04-09 22:30:19', '2022-04-09 22:30:19'),
(5, 'reham', 'ffghjn', 'Rehamhesham680@gmail.com', 'bbbbbbbbbbbbb', '2022-04-09 22:34:44', '2022-04-09 22:34:44'),
(6, 'Reham', 'Sleeping', 'email@gmail.com', 'Sleeping Sleeping Sleeping', '2022-06-16 01:41:52', '2022-06-16 01:41:52'),
(7, 'Reham', 'Sleeping', 'email@gmail.com', 'Sleeping Sleeping Sleeping', '2022-06-16 01:43:18', '2022-06-16 01:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_12_000000_create_orchid_users_table', 1),
(4, '2015_10_19_214424_create_orchid_roles_table', 1),
(5, '2015_10_19_214425_create_orchid_role_users_table', 1),
(6, '2016_08_07_125128_create_orchid_attachmentstable_table', 1),
(7, '2017_09_17_125801_create_notifications_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_03_10_172702_create_jobs_table', 1),
(11, '2022_03_14_061343_create_articles_table', 1),
(12, '2022_03_19_025139_create_categories_table', 1),
(13, '2022_03_19_025224_create_tags_table', 1),
(14, '2022_03_19_025240_create_comments_table', 1),
(15, '2022_03_19_025257_create_contacts_table', 1),
(16, '2022_03_19_025316_create_achievements_table', 1),
(17, '2022_03_19_025332_create_advertises_table', 1),
(18, '2022_03_19_045747_create_category_article_table', 1),
(19, '2022_03_19_050002_create_tag_article_table', 1),
(20, '2022_06_02_232243_create_article_category_table', 2),
(21, '2022_06_02_232451_create_article_tag_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'MyAppToken', '76ad6e2c37b96213b9adba154e74c0402e1e12c0d7af90c0b727b9f9ddf05c73', '[\"*\"]', NULL, '2022-06-17 21:53:37', '2022-06-17 21:53:37'),
(2, 'App\\Models\\User', 4, 'MyAppToken', 'd680264001410357c6e74b434832d89e6717f79829c7c933fad47c2a2836ece7', '[\"*\"]', NULL, '2022-06-17 21:55:17', '2022-06-17 21:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Reham', 'Reham', '{\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}', '2022-03-19 19:46:34', '2022-03-19 19:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '2022-03-21 14:56:55', '2022-06-17 04:05:42'),
(2, 'Drinks', '2022-03-21 15:15:56', '2022-06-17 04:05:52'),
(3, 'Writing', '2022-06-17 04:06:02', '2022-06-17 04:06:02'),
(4, 'Flower', '2022-06-17 04:06:12', '2022-06-17 04:06:12'),
(5, 'Food', '2022-06-17 04:06:23', '2022-06-17 04:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `age`, `address`, `avatar`, `national_id`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'reham', 'rehamhesham680@gmail.com', NULL, '$2y$10$neu3RQ7s.5L1qnfCs574WuVYxUXrW1QF5UpfcEVvo3cJU6KeB/C/q', NULL, NULL, NULL, NULL, 'kLpSBdWt5sQFTPWEU4PNbi5sI2vdYnn24HNJT0Tszivp5g5WiGcig7V7OlwB', '2022-03-19 03:15:40', '2022-03-19 03:15:40', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true}'),
(2, 'Reham', 'reham@gmail.com', NULL, '$2y$10$qg7iPyMpSm0d5eQyF7O6Qui6as9IJOZCv/rRTjr2noM4dxz5RGOMW', NULL, NULL, NULL, NULL, NULL, '2022-05-31 08:26:09', '2022-05-31 08:26:09', NULL),
(3, 'Reham', 'reham1@gmail.com', NULL, '$2y$10$nm/6EI0m21xgXtmsrTVloOha/zDdxP1edkEH55qPRNXhQeMNodNl6', NULL, NULL, NULL, NULL, 'kLpSBdWt5sQFTPWEU4PNbi5sI2vdYnn24HNJT0Tszivp5g5WiGcig7V7OlwB', '2022-05-31 08:26:31', '2022-05-31 08:26:31', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true}'),
(4, 'reham', 'reham11@gmail.com', NULL, '$2y$10$tJNHcoBu05OGZgLc9.1X9.mwpJlt2qEmNi6B4EsQD8lnSfPWljxz.', NULL, NULL, NULL, NULL, NULL, '2022-06-17 21:53:37', '2022-06-17 21:53:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  ADD KEY `attachmentable_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comment_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attachmentable`
--
ALTER TABLE `attachmentable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_comment_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
