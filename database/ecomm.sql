-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 04:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 2, 1),
(5, 19, 65, 1),
(6, 19, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 4, 'MI 11X PRO', '<table style=\"width:207.45pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.85pt; width:207.45pt\">\r\n			<p><strong>Mi 11X Pro Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>6.67-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>Qualcomm Snapdragon 888</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>4520mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.9pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.2pt; width:103.55pt\">\r\n			<p>108MP + 8MP + 5MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'mi-11x-pro', 599, 'mi-11x-pro.jpg', '2021-05-25', 1),
(31, 4, 'Xiaomi MI 11 Ultra', '<table style=\"width:178.9pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.55pt; width:178.9pt\">\r\n			<p><strong>Xiaomi Mi 11 Ultra Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.6pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.3pt\">\r\n			<p>Qualcomm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.6pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.3pt\">\r\n			<p>12GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.65pt; width:89.6pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.65pt; width:89.3pt\">\r\n			<p>256GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.6pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.3pt\">\r\n			<p>5000mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.6pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.3pt\">\r\n			<p>50MP + 48MP + 48MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.6pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.8pt; width:89.3pt\">\r\n			<p>20MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'xiaomi-mi-11-ultra', 1299.99, 'xiaomi-mi-11-ultra.jpg', '2021-05-27', 3),
(32, 4, 'One Plus 9 Pro', '<table style=\"width:196.5pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.1pt; width:196.5pt\">\r\n			<p><strong>OnePlus 9 Pro Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.25pt; width:98.4pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.25pt; width:98.1pt\">\r\n			<p>6.70-inch, 1440x3216 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.25pt; width:98.4pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.25pt; width:98.1pt\">\r\n			<p>Qualcomm Snapdragon 888</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:98.4pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:98.1pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'one-plus-9-pro', 957.99, 'one-plus-9-pro.jpg', '2021-05-30', 1),
(33, 4, 'OnePlus 9', '<table style=\"width:206.6pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.9pt; width:206.6pt\">\r\n			<p><strong>OnePlus 9 Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>6.55-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>Qualcomm Snapdragon 888</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>4500mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>48MP + 50MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.45pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:103.15pt\">\r\n			<p>16MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'oneplus-9', 690.99, 'oneplus-9.jpg', '2021-05-25', 1),
(34, 4, 'Samsung S21 Ultra', '<table style=\"width:174.7pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.4pt; width:174.7pt\">\r\n			<p><strong>Samsung Galaxy S21 Ultra Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>6.80-inch, 1440x3220 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>Samsung Exynos 2100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.5pt; width:87.5pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.5pt; width:87.2pt\">\r\n			<p>12GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>5000mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>108MP + 12MP + 10MP + 10MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.5pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:87.2pt\">\r\n			<p>40MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'samsung-s21-ultra', 1047, 'samsung-s21-ultra.jpg', '2021-05-30', 1),
(35, 4, 'IPhone 12 Pro Max', '<table style=\"width:223.9pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.8pt; width:223.9pt\">\r\n			<p><strong>iPhone 12 Pro Max Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.05pt; width:112.15pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.05pt; width:111.75pt\">\r\n			<p>6.70-inch, 1284x2778 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.05pt; width:112.15pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.05pt; width:111.75pt\">\r\n			<p>Apple A14 Bionic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.05pt; width:112.15pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.05pt; width:111.75pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.05pt; width:112.15pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.05pt; width:111.75pt\">\r\n			<p>12MP + 12MP + 12MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:19.3pt; width:112.15pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:19.3pt; width:111.75pt\">\r\n			<p>12MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'iphone-12-pro-max', 1099, '6-iphone-12-pro-max.jpg', '2021-05-30', 2),
(36, 4, 'iPhone 12 mini ', '<table style=\"width:227.6pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.75pt; width:227.6pt\">\r\n			<p><strong>iPhone 12 mini Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.9pt; width:113.95pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.9pt; width:113.65pt\">\r\n			<p>5.40-inch, 1080x2340 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.95pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.65pt\">\r\n			<p>Apple A14 Bionic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.95pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.65pt\">\r\n			<p>4GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.95pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.65pt\">\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.95pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.65pt\">\r\n			<p>12MP + 12MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.95pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:113.65pt\">\r\n			<p>12MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'iphone-12-mini', 799, 'iphone-12-mini.jpg', '2021-05-25', 1),
(37, 4, 'Samsung S20 FE 5G ', '<table style=\"width:183.1pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.9pt; width:183.1pt\">\r\n			<p><strong>Samsung Galaxy S20 FE Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>6.50-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>Snapdragon 888</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:15.05pt; width:91.7pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:15.05pt; width:91.4pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>4500mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>12MP + 12MP + 8MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.7pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:91.4pt\">\r\n			<p>32MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'samsung-s20-fe-5g', 699.99, 'samsung-s20-fe-5g.jpg', '2021-05-25', 1),
(38, 4, 'Moto G60', '<table style=\"width:206.6pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.7pt; width:206.6pt\">\r\n			<p><strong>Motorola Moto G60 Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.45pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.15pt\">\r\n			<p>6.80-inch, 1080x2460 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.45pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.15pt\">\r\n			<p>Qualcomm Snapdragon 732G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.45pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.15pt\">\r\n			<p>6GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.45pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.15pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.45pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:103.15pt\">\r\n			<p>6000mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'moto-g60', 241.99, 'moto-g60.jpg', '2021-05-25', 1),
(39, 4, 'Realme 8 pro', '<table style=\"width:187.3pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.15pt; width:187.3pt\">\r\n			<p><strong>Realme 8 Pro Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>6.40-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>Qualcomm Snapdragon 720G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>6GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>4500mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>108MP + 8MP + 2MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.8pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.5pt; width:93.5pt\">\r\n			<p>16MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'realme-8-pro', 310, 'realme-8-pro.jpg', '2021-05-25', 1),
(40, 4, 'Vivo X60 Pro', '<table style=\"width:192.35pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.7pt; width:192.35pt\">\r\n			<p><strong>Vivo X60 Pro Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>6.56-inch, 1080x2376 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>Qualcomm Snapdragon 870</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>12GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>256GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>4200mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>48MP + 13MP + 13MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.3pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.05pt; width:96.05pt\">\r\n			<p>32MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'vivo-x60-pro', 799, 'vivo-x60-pro.jpg', '2021-05-25', 1),
(41, 4, 'Samsung galaxy A52 ', '<table style=\"width:173.85pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.9pt; width:173.85pt\">\r\n			<p><strong>Samsung Galaxy A52 Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>6.50-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>Qualcomm Snapdragon 720G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>6GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>4500mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:87.05pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:86.8pt\">\r\n			<p>64MP + 12MP + 5MP + 5MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:.1in; width:87.05pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:.1in; width:86.8pt\">\r\n			<p>32MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'samsung-galaxy-a52', 499.99, 'samsung-galaxy-a52_1621961346.jpg', '2021-05-25', 1),
(42, 4, 'Redmi Note 10 Pro Max', '<table style=\"width:195.7pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.4pt; width:195.7pt\">\r\n			<p><strong>Redmi Note 10 Pro Max Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>6.67-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>Qualcomm Snapdragon 732G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>6GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>5020mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.7pt; width:98.0pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.7pt; width:97.7pt\">\r\n			<p>108MP + 8MP + 5MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'redmi-note-10-pro-max', 249, 'redmi-note-10-pro-max.jpg', '2021-05-25', 1),
(43, 4, 'Oppo Reno 5 Pro ', '<table style=\"width:192.35pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.9pt; width:192.35pt\">\r\n			<p><strong>Oppo Reno 5 Pro 5G Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>6.55-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>MediaTek Dimensity 1000+</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>4350mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.3pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.25pt; width:96.05pt\">\r\n			<p>64MP + 8MP + 2MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'oppo-reno-5-pro', 599.99, 'oppo-reno-5-pro.jpg', '2021-05-25', 1),
(44, 4, 'Realme X7 Pro', '<table style=\"width:183.0pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:16.1pt; width:183.0pt\">\r\n			<p><strong>Realme X7 Pro 5G Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>6.55-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>MediaTek Dimensity 1000+</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>4500mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>64MP + 8MP + 2MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.65pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.45pt; width:91.35pt\">\r\n			<p>32MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'realme-x7-pro', 452.49, 'realme-x7-pro.jpg', '2021-05-25', 2),
(45, 4, 'Realme Narzo 30 Pro', '<table style=\"width:2.45in\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"background-color:white; height:15.7pt; width:2.45in\">\r\n			<p><strong>Realme Narzo 30 Pro Specifications</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Display</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>6.50-inch, 1080x2400 pixels</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Processor</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>MediaTek Dimensity 800U</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>RAM</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>8GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Storage</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>128GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Battery Capacity</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>5000mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Rear Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>48MP + 8MP + 2MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.35pt\">\r\n			<p>Front Camera</p>\r\n			</td>\r\n			<td style=\"background-color:white; height:14.1pt; width:88.05pt\">\r\n			<p>16MP</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'realme-narzo-30-pro', 231, 'realme-narzo-30-pro.jpg', '2021-05-25', 2),
(46, 1, 'ASUS ROG ZEPHYRUS G14', '<p>Asus ROG Zephyrus G14 is a Windows 10 Home laptop with a 14.00-inch display that has a resolution of 1920x1080 pixels. It is powered by a Ryzen 5 processor.</p>\r\n\r\n<p>Graphics are powered by Nvidia GeForce GTX 1650. Connectivity options include Wi-Fi 802.11 a/b/g/n/ac, Bluetooth and it comes with 4 USB ports, HDMI Port, Lock Slot, Headphone and Mic Combo Jack ports.</p>\r\n\r\n<p>As of 26th May 2021, Asus ROG Zephyrus G14 price in India starts at Rs. 80,990.</p>\r\n', 'asus-rog-zephyrus-g14', 1449.99, 'asus-rog-zephyrus-g14.jpg', '2021-05-30', 1),
(47, 1, 'ASUS ROG ZEPHYRUS G15', '<p>Zephyrus G15 is one of the lightest 15-inch gaming laptops you can buy. But you&rsquo;re not compromising performance for that portability. The G15 is powered by the top mobile chips AMD and Nvidia have to offer, and pairs thim with a fast 165Hz QHD display. In our testing, the system was able to handle even the toughest AAA titles at QHD resolution.</p>\r\n\r\n<p>Almost everything else about the G15 is great too: the audio sounds good, the keyboard and touchpad are some of the best on the market, the port selection has just about everything you&rsquo;d need, and the battery can last over eight and a half hours to a charge. If you&rsquo;re looking for a high-powered gaming machine that also works great as a daily driver, the Zephyrus G15 should be at the top of your list.</p>\r\n', 'asus-rog-zephyrus-g15', 2551, 'asus-rog-zephyrus-g15.jpg', '2021-05-29', 1),
(48, 1, 'Dell XPS 13', '<p>The Dell XPS 13 is a compact and reliable laptop. Its beautiful chassis, excellent 16:10 display, and great performance make it an excellent choice for general-purpose users.</p>\r\n\r\n<p>This late-2020 model comes with Intel&rsquo;s new Tiger Lake processors, from a Core i3-1154G4 up to a Core i7-1165G7. It starts at $999, so it&rsquo;s a bit cheaper than the 2-in-1.Dell&rsquo;s XPS 13 is the ultimate execution on the traditional thin-and-light clamshell laptop design. It&rsquo;s sleek and compact, has a great keyboard and trackpad, and has excellent performance</p>\r\n', 'dell-xps-13', 950, 'dell-xps-13.jpg', '2021-05-27', 2),
(49, 1, 'Dell XPS 13 2-in-1', '<p>If you&rsquo;re looking for a convertible laptop that does just about everything right, we recommend Dell&rsquo;s latest XPS 13 2-in-1. It features a sturdy and well-made chassis, a nearly bezel-free 16:10 touch display, and Intel&rsquo;s newest 11th Gen processors.</p>\r\n\r\n<p>The base model, for $1,000, includes a Core i3-1154G4, 8GB of RAM, a 1920 x 1200 display, and a 256GB SSD. You can spec that up to a 3840 x 2400 display, a Core i7-1165G7, 32GB of RAM, and a 1TB SSD. There are various add-ons as well: you can pay $50 extra for a white model and $60 to upgrade to Windows 10 Pro. Basically, there&rsquo;s something for everyone.</p>\r\n\r\n<p>Dell has made a few minor tweaks to the 2-in-1 since last year&rsquo;s model. The webcam now supports Windows Hello, and the RAM and microSD reader have been upgraded. But the exciting news is the new chip and, in particular, Intel&rsquo;s new integrated graphics. The XPS 13 2-in-1 did a better job than any 10th Gen laptop with an iGPU on our Adobe Premiere Pro export test. And you can even play some games on this thing: it broke 60fps on&nbsp;<em>Rocket League</em>,&nbsp;<em>League of Legends</em>, and&nbsp;<em>Overwatch</em>, and even managed 36fps on&nbsp;<em>Shadow of the Tomb Raider</em>&nbsp;at its lowest settings. That&rsquo;s an improvement over the results we saw from 10th Gen systems, and it also beats some 11th Gen systems (including the clamshell Dell XPS 13).</p>\r\n', 'dell-xps-13-2-1', 1000, 'dell-xps-13-2-1.jpg', '2021-05-27', 1),
(50, 1, 'MacBook Air', '<p>The MacBook Air is a competent, reliable device with a stellar processor.</p>\r\n\r\n<p>he late-2020 MacBook Air, powered by Apple&rsquo;s M1 processor, is the best laptop you can buy. The base model, which includes 8GB of RAM and 256 GB of storage, starts at $999.</p>\r\n\r\n<p>Appearance-wise, this laptop has a lot in common with the Intel-powered MacBook Air that Apple released earlier this year, including the same 2560 x 1600 screen, Touch ID, 720p webcam, fingerprint sensor, and scissor-switch keyboard.</p>\r\n\r\n<p>But the new processor is the star of the show here; it&rsquo;s fast. In our testing, it handled intense photo- and video-editing workloads better than almost any Intel-powered laptop we&rsquo;ve tried this year. It was also able to run&nbsp;<em>Shadow of the Tomb Raider</em>&nbsp;at close-to-playable frame rates, which is quite a feat for integrated graphics. At launch, these apps hadn&rsquo;t yet been optimized for the M1 processor and were running through Apple&rsquo;s Rosetta 2 translation layer &mdash; but they still worked fine.</p>\r\n\r\n<p>And the processing power didn&rsquo;t even weigh down the battery life: we got between eight and 10 hours of sustained work.</p>\r\n', 'macbook-air', 999, 'macbook-air.jpg', '2021-05-26', 1),
(51, 1, 'HP Spectre x360 14', '<p>It&rsquo;s hard to come up with a single complaint about the Spectre x360 14. It&rsquo;s a drop-dead gorgeous machine with a sturdy build and a premium look and feel.</p>\r\n\r\n<p>But the Spectre x360 14 isn&rsquo;t just pretty to look at: it&rsquo;s also a pleasure to use as a daily work driver. Intel&rsquo;s latest 11th Gen processors and Iris Xe integrated graphics deliver snappy performance with no slowdown or freezes that we observed. And we got an average of 10 hours of battery life out of the device &mdash; one of the best results we&rsquo;ve ever seen.</p>\r\n\r\n<p>On the outside, the Spectre includes a roomy 3:2 display, and if FHD resolution doesn&rsquo;t suit your fancy, there are OLED and 1,000-nit options available. There&rsquo;s even a packaged stylus, which attaches magnetically to the side of the Spectre &mdash; handy if you&rsquo;re using the device as a tablet. Pretty much every other aspect of this laptop, from its comfortable keyboard and smooth touchpad to its bass-heavy audio and practical port selection, rivals or exceeds the best convertibles on the market.</p>\r\n\r\n<p>Such an exceptional package of features doesn&rsquo;t come cheap, and many customers will find everything they need in a less expensive product. But the Spectre x360 14 is the new gold standard of Windows convertibles. Overall, it&rsquo;s the best Windows laptop you can buy.</p>\r\n', 'hp-spectre-x360-14', 1270, 'hp-spectre-x360-14.jpg', '2021-05-30', 1),
(52, 1, ' LG Gram 17', '<p>Even if you&rsquo;ve used a light laptop before, it&rsquo;s difficult to explain how light the LG Gram 17 is. It has a massive 17-inch display, but it&rsquo;s somehow only three pounds. Picking it up messes with your mind; you feel like you&rsquo;re not holding anything.</p>\r\n\r\n<p>But the Gram 17&rsquo;s weight isn&rsquo;t the only standout feature. It also has some of the best battery life you can get, lasting over 12 hours in our testing. Add a great keyboard, a solid port selection, quiet fans, and a fast processor, and there&rsquo;s very little not to like about this device.</p>\r\n\r\n<p>Not everyone needs a 17-inch display, and many folks who do are looking for a heavier-duty workstation that probably doesn&rsquo;t get moved very often. But if you&rsquo;d just really like a large screen for your daily office work and Netflixing, you&rsquo;re the target demographic for this machine. It&rsquo;s a niche, but truly impressive device without much real competition in today&rsquo;s market.</p>\r\n', 'lg-gram-17', 1799, 'lg-gram-17.jpg', '0000-00-00', 0),
(53, 1, 'HP Envy x360 2020', '<p>You don&rsquo;t need to spend $1,000 to get a laptop that looks and feels premium. The HP Envy x360 2020 is the best budget laptop you can buy, thanks to its sturdy and compact build, chic convertible design, and excellent performance.</p>\r\n\r\n<p>Part of what makes the Envy so great is that HP has ported over a number of elements from its excellent 2019 flagship, the Spectre x360, including the thin-and-light chassis and nearly bezel-free display with an 88 percent screen-to-body ratio. The touchscreen (which supports HP&rsquo;s MPP2.0 pen) is bright and looks great. (You can choose a 300-nit, 400-nit, or 1,000-nit panel). And HP has added a row of convenient hotkeys to the keyboard, including kill switches for the microphone and webcam.</p>\r\n\r\n<p>But the most exciting feature is inside: the new Envy x360 is powered by AMD&rsquo;s Ryzen 4000 series. The Ryzen 5-4500U in my model did an outstanding job with a fairly heavy load of multitasking. And AMD&rsquo;s integrated Radeon graphics delivered good gaming performance comparable to what you&rsquo;d expect from a lower-powered discrete GPU.</p>\r\n', 'hp-envy-x360-2020', 900, 'hp-envy-x360-2020.jpg', '0000-00-00', 0),
(54, 1, 'Lenovo ThinkPad X1 Nano', '<p>The ThinkPad X1 Nano is a sturdy, premium laptop for mobile professionals.&nbsp;ThinkPad X1 Nano is a run-of-the-mill ThinkPad. It&rsquo;s got a solid sturdy chassis, discrete clickers, a physical privacy shutter, a red TrackPoint in the middle of the keyboard, and all kinds of business-specific security and management features.</p>\r\n\r\n<p>But the Nano is special because it&rsquo;s the lightest ThinkPad Lenovo has ever made. It&rsquo;s also one of the lightest laptops you can buy, at just 1.99 pounds. You&rsquo;re not sacrificing performance to get that mindblowing weight: The Nano kept up with our heavy testing workloads without any fan noise or noticeable heat. If you&rsquo;re looking for a reliable business laptop that will feel like nothing in your briefcase, this is the one for you.</p>\r\n', 'lenovo-thinkpad-x1-nano', 1463, 'lenovo-thinkpad-x1-nano.png', '0000-00-00', 0),
(55, 1, 'MacBook Pro', '<p>The 16-inch MacBook Pro is the best Apple laptop for power users. Apple dealt with the biggest complaints that people have historically had about MacBook Pros, and if you can stomach the price, there&rsquo;s not a lot else to complain about.</p>\r\n\r\n<p>Most importantly, the keyboard is good again. The keys have a full millimeter of travel, and while the typing experience isn&rsquo;t exceptional, it&rsquo;s a world away from the maligned butterfly keyboard of MacBooks past. It&rsquo;s fairly quiet, too.</p>\r\n\r\n<p>This MacBook also features the best sound you&rsquo;ll find on a laptop. Apple has crammed three speakers into each side, including two woofers. The result is balanced audio with audible bass and great stereo separation. For those who need a laptop that can crank through editing video, working with multiple audio tracks, or processing large batches of photos, the 16-inch MacBook Pro is the king of the hill.</p>\r\n', 'macbook-pro', 2399, 'macbook-pro.jpg', '0000-00-00', 0),
(56, 1, 'HP Elite Dragonfly', '<p>If you&rsquo;re a business professional and money is no object for you or your company, you can&rsquo;t do better than the HP Elite Dragonfly. The 2020 model is the first Dragonfly that features HP&rsquo;s super-secure SureView Reflect technology, which tints the screen so that snoops can&rsquo;t see what you&rsquo;re doing while you&rsquo;re working in public. When it&rsquo;s not tinted, the display gets quite bright (over 700 nits) and has great viewing angles.</p>\r\n\r\n<p>The new Dragonfly is also the first laptop to include a built-in Tile tracker. That means if you lose the device, you can use the Tile smartphone app to set off an alarm (if it&rsquo;s in Bluetooth range) or locate it anywhere in the world using Tile&rsquo;s crowd-finding network. The tracker can work for a limited time even when the laptop is off.</p>\r\n\r\n<p>Almost everything else about the Dragonfly is good; it has some of the best battery life of any laptop on the market (we got over 11 hours), a sleek and stunning 2-in-1 design, and an exceptional keyboard. Plus, it incorporates sustainable material, including ocean-bound plastics and recycled DVDs.</p>\r\n\r\n<p>The Dragonfly is pricey, and there are cheaper business laptops that will suit the needs of most professionals just fine. But if you&rsquo;re looking for the best of the best, it&rsquo;s the unambiguous winner.</p>\r\n', 'hp-elite-dragonfly', 1819, 'hp-elite-dragonfly.jpg', '2021-05-30', 1),
(57, 1, 'Lenovo Chromebook Duet', '<p>The Chromebook Duet boasts long battery life and has a 16:10 aspect ratio display to fit more content on the screen at once. The Duet can be used as a tablet or a laptop. On the downside, it has just one USB-C port and no 3.5mm headphone jack.&nbsp;</p>\r\n\r\n<p>Lenovo&rsquo;s Chromebook Duet is a great convertible laptop for kids, or anyone who wants a reliable secondary driver for browsing and games. It&rsquo;s a nice-looking, well-made 10-inch device that comes with a detachable keyboard and kickstand.</p>\r\n\r\n<p>The Duet is tailor-made to be used around the house and on the go, weighing just 2.03 pounds and delivering over 11 hours of battery life. Its MediaTek processor isn&rsquo;t designed to shoulder heavy loads, but it&rsquo;s just fine for browsing in a couple tabs, watching Netflix, or playing Android games &mdash; it even handles photo editing pretty well. The Duet also features a new &ldquo;tablet mode&rdquo; for Chrome OS, which supports an Android-inspired gesture navigation system and a unique Chrome layout optimized for tablet use.</p>\r\n', 'lenovo-chromebook-duet', 249, 'lenovo-chromebook-duet.jpg', '0000-00-00', 0),
(58, 1, 'Razer Book 13', '<p>The Razer Book 13 delivers outstanding performance in an oustanding chassis.&nbsp;Razer is best known for its gaming laptops, but the company is making a big splash in the business and productivity space with its new Razer Book 13. At 0.6 inches thick and 3.09 pounds, the Book 13 is a portable workstation with a gorgeous and sturdy aluminum build. It features a good port selection including Thunderbolt 4, USB-A, HDMI 2.0 and a microSD slot, and it&rsquo;s one of very few non-gaming laptops out there to come with a per-key RGB keyboard.</p>\r\n', 'razer-book-13', 1600, 'razer-book-13.jpg', '0000-00-00', 0),
(59, 1, 'Razer Blade Pro 17', '<p>The Blade Pro 17 is a powerful gaming laptop with a compact and attractive design. The Blade Pro 17 doesn&rsquo;t have quite the gaming chops of some bulky desktop replacements, it makes up for that by sporting the compact and attractive design that&rsquo;s a trademark of the Razer Blade line. At just over six pounds, it&rsquo;s not too difficult to move around (as 17-inch workstations go). You get an RTX GPU (up to Nvidia&rsquo;s 2080 Super Max-Q) an eight-core CPU (Intel&rsquo;s Core i7-10875H) and either a 300Hz screen or a 120Hz touchscreen. There&rsquo;s even an RGB keyboard with color effects tailored to the game you&rsquo;re playing.</p>\r\n', 'razer-blade-pro-17', 2900, 'razer-blade-pro-17.jpg', '0000-00-00', 0),
(60, 3, 'Samsung Galaxy Tab A7', '<ul>\r\n	<li>This tablet has a 10.4 inch ( 26.31 cms) Immersive Display (2000 X 1200 pixels resolution ) with symetric bezel for un-interrupted visual experience for gaming, watching videos, multi-tasking and more</li>\r\n	<li>Quad Stereo Sound - more lively movies and music</li>\r\n	<li>Long lasting 7,040 mAH battery with fast adaptive charging</li>\r\n	<li>3GB RAM, 32 GB Internal Memory (expandable to 1 TB)</li>\r\n	<li>This tablet supports seamless apps and gaming experience with Qualcomm Snapdragon 662 processor (4X2.0 GHz+4X1.8 GHz)</li>\r\n	<li>8 MP Primary Camera, 5 MP Front Facing Camera</li>\r\n	<li>Wi-Fi - 802.11 a/b/g/n/ac 2.4G+5GHz</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n</ul>\r\n', 'samsung-galaxy-tab-a7', 247.44, 'samsung-galaxy-tab-a7.jpg', '0000-00-00', 0),
(61, 3, 'New Apple iPad 8th Gen', '<ul>\r\n	<li>Gorgeous 10.2-inch Retina display</li>\r\n	<li>A12 Bionic chip with Neural Engine</li>\r\n	<li>Support for Apple Pencil (1st generation) and Smart Keyboard</li>\r\n	<li>8MP back camera, 1.2MP FaceTime HD front camera</li>\r\n	<li>Stereo speakers</li>\r\n	<li>802.11ac Wi-Fi</li>\r\n	<li>Up to 10 hours of battery life</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lightning connector for charging and accessories</li>\r\n	<li>Touch ID for secure authentication</li>\r\n	<li>iPadOS brings new capabilities designed specifically for iPad</li>\r\n</ul>\r\n', 'new-apple-ipad-8th-gen', 411, 'new-apple-ipad.jpg', '0000-00-00', 0),
(62, 3, 'Lenovo Yoga Smart Tablet', '<ul>\r\n	<li>8MP rear camera with auto focus | 5MP front camera</li>\r\n	<li>25.654 centimeters (10.1-inch) with 1920 x 1200 pixels resolution</li>\r\n	<li>Android Pie v9.0 operating system with Qualcomm Snapdragon 439 (4 x A53 @ 2.0GHz, 4 x A53 @ 1.45GHz) octa core processor, 4GB RAM, 64GB internal memory expandable up to 64GB, Single Nano SIM</li>\r\n	<li>7000mAH lithium-ion battery</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n</ul>\r\n', 'lenovo-yoga-smart-tablet', 288.68, 'lenovo-yoga-smart-tablet.jpg', '2021-05-27', 1),
(63, 3, 'Samsung Galaxy Tab S6 Lite', '<ul>\r\n	<li>26.31 Centimeters (10.4-inch) TFT with 2000 x 1200 pixels resolution, 16M color support</li>\r\n	<li>Ergonomic S-Pen included in box</li>\r\n	<li>8MP primary camera | 5MP front facing camera</li>\r\n	<li>Dual Speaker with Dolby Atmos</li>\r\n	<li>Andoid 10 operating system with 2.3GHz Exynos9611 Octa Core processor</li>\r\n	<li>4GB RAM, 64GB internal memory expandable up to 1TB</li>\r\n	<li>7,040mAH lithium-ion battery</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n</ul>\r\n', 'samsung-galaxy-tab-s6-lite', 384.91, 'samsung-galaxy-tab-s6-lite.jpg', '0000-00-00', 0),
(64, 3, 'HUAWEI MediaPad T5 Tablet', '<ul>\r\n	<li>10.1&rdquo; 1080P Full HD display &ndash; HUAWEI MediaPad T5 comes with 10.1&rdquo;, 1920 x 1200 IPS, 224 PPI screen, and 16:10 aspect ratio, bringing every moment to life and offering you a video feast all the time</li>\r\n	<li>Octa-core processor &ndash; The powerful octa-core processor with a main frequency up to 2.36GHz gives you great performance while smoothly running multiple applications simultaneously. And the memory size is expandable up to 256 GB with a MicroSD card</li>\r\n	<li>Thin,Light,durable &ndash; Elegantly designed with metal body, HUAWEI MediaPad T5 outstands for its luxurious look while its slimness, lightweight delivers a spectacular hand-feeling</li>\r\n	<li>Dual stereo speakers &ndash; It houses dual stereo speakers with HUAWEI Histen audio technology, delivering concert hall audio effect and providing with multi-layered and penetrating 4D surround sound</li>\r\n	<li>Eye-comfort mode - This Android Tablet features Google Android 8.0 (Oreo) &amp; latest Huawei Emotion UI 8.0. HUAWEI MediaPad T5 10.1&quot; offers an Eye-comfort Mode reduces harmful blue light to create healthy reading conditions for you and your family</li>\r\n	<li>Wonderland for your kids &ndash; The Children&rsquo;s Corner includes lots of innovative games, and offers enhanced eye-comfort modes for your kids&rsquo; eyesight health: posture guidance, blue light filter, limited using time</li>\r\n	<li>Long play time - Its 5100 mAh (TYP) battery and Smart Power-Saving technology allow you to enjoy 1080P videos to 11 hours.(Depending on the using environment, such as screen brightness)</li>\r\n	<li>Country of Origin: China</li>\r\n</ul>\r\n', 'huawei-mediapad-t5-tablet', 206.2, 'huawei-mediapad-t5-tablet.jpg', '0000-00-00', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(65, 3, 'Apple  iPad Pro 12.9-inch', '<ul>\r\n	<li>Apple M1 chip for next-level performance</li>\r\n	<li>Brilliant 32.77 cm (12.9-inch) Liquid Retina XDR display with ProMotion, True Tone, and P3 wide color</li>\r\n	<li>TrueDepth camera system featuring Ultra Wide camera with Center Stage</li>\r\n	<li>12MP Wide camera, 10MP Ultra Wide camera, and LiDAR Scanner for immersive AR</li>\r\n	<li>Stay connected with ultrafast Wi-Fi and 4GLTE</li>\r\n	<li>Go further with all-day battery life</li>\r\n	<li>Thunderbolt port for connecting to fast external storage, displays, and docks</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Face ID for secure authentication</li>\r\n	<li>Four speaker audio and five studio-quality microphones</li>\r\n	<li>Support for Apple Pencil (2nd generation), Magic Keyboard, and Smart Keyboard Folio</li>\r\n</ul>\r\n', 'apple-ipad-pro-12-9-inch', 1373.38, 'apple-ipad-pro-12-9-inch.jpg', '2021-05-30', 3),
(66, 3, 'Samsung Galaxy Tab S7', '<ul>\r\n	<li>11-inch(27.81 Centimeter) , LCD Display , WQXGA Resolution 2560 x 1600 , 276 PPI with 16M Colours</li>\r\n	<li>13MP AF + 5MP UW + Flash, 8MP FF</li>\r\n	<li>8000 mAh battery with 45W Type-C fast charger in the box</li>\r\n	<li>6GB RAM, 128GB Storage, with new Qualcomm SDM865 Pro, Octa-Core processor</li>\r\n	<li>1 year manufacturer warranty for Phone and 6 months warranty for in the box accessories</li>\r\n</ul>\r\n', 'samsung-galaxy-tab-s7', 879.83, 'samsung-galaxy-tab-s7.jpg', '0000-00-00', 0),
(67, 3, 'Samsung Galaxy Tab A', '<ul>\r\n	<li>10.1 inch (25.65 centimeters) WUXGA with 1920 x 1200 pixels resolution</li>\r\n	<li>8MP primary camera | 5MP front facing camera</li>\r\n	<li>2 GB RAM, 32 GB internal memory, expandable up to 512 GB</li>\r\n	<li>6,150 mAH lithium-ion battery</li>\r\n	<li>Dual Speakers with Dolby Atmos</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n</ul>\r\n', 'samsung-galaxy-tab', 206.2, 'samsung-galaxy-tab.jpg', '0000-00-00', 0),
(68, 3, 'Apple iPad Mini', '<ul>\r\n	<li>7.9-inch Retina display with True Tone and wide color</li>\r\n	<li>A12 Bionic chip</li>\r\n	<li>Touch ID fingerprint sensor</li>\r\n	<li>8MP back camera, 7MP FaceTime HD front camera</li>\r\n	<li>Stereo speakers</li>\r\n	<li>802.11ac Wi-Fi</li>\r\n	<li>Up to 10 hours of battery life</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lightning connector for charging and accessories</li>\r\n	<li>Support for Apple Pencil (1st generation)</li>\r\n	<li>iPadOS brings new capabilities designed specifically for iPad</li>\r\n</ul>\r\n', 'apple-ipad-mini', 479.79, 'apple-ipad-mini.jpg', '2021-05-27', 1),
(69, 3, 'Samsung Galaxy Tab S7 Plus', '<p>Weight:&nbsp;575g</p>\r\n\r\n<p>Dimensions:&nbsp;285 x 185 x 5.7 mm</p>\r\n\r\n<p>OS:&nbsp;Android 10</p>\r\n\r\n<p>Screen size:&nbsp;12.4-inch</p>\r\n\r\n<p>Resolution:&nbsp;1752 x 2800 pixels</p>\r\n\r\n<p>CPU:&nbsp;Snapdragon 865 Plus</p>\r\n\r\n<p>Storage:&nbsp;128GB/256GB</p>\r\n\r\n<p>microSD slot:&nbsp;Yes</p>\r\n\r\n<p>Battery:&nbsp;10,090mAh</p>\r\n\r\n<p>Rear camera:&nbsp;13MP + 5MP</p>\r\n\r\n<p>Front camera:&nbsp;8MP</p>\r\n', 'samsung-galaxy-tab-s7-plus', 1099.79, 'samsung-galaxy-tab-s7-plus.jpg', '2021-05-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(30) NOT NULL,
  `created_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `name`, `email`, `message`, `created_date`) VALUES
(1, 'Asmita', 'hav20@gmail.com', 'hiiii', '2021-05-26'),
(31, 'assmi', '98vasmi@gmail.com', 'hello', '2021-05-29'),
(32, 'Asmita', 'hav20@gmail.com', 'hii\r\n', '2021-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Electronics ', 'Basket', '', '', 'logo eb.png', 1, '', '', '2021-05-22'),
(18, 'hav20@gmail.com', '$2y$10$J6Mhfxa18/2ilx82GNdmOudegf0oqcu1LviEMQGcfs2zEjdeFpJcm', 0, 'blae', 'Vee', '', '', '', 1, 'YgSFOkAqGN7J', '', '2021-05-26'),
(19, 'asmita888vaishnav@gmail.com', '$2y$10$P8t4K0wMm/GcDaO9XA8S7uYVbA.f6zq3qAAdZQm8wn2COuY4yjHZO', 0, 'Asmita', 'Vaishnav', '', '', '', 1, 'RSGEx5mb7nLi', '', '2021-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
