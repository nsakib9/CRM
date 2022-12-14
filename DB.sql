-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2022 at 02:35 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ameltek_work`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `log_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_settings`
--

CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_options`
--

CREATE TABLE `allowance_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_employees`
--

CREATE TABLE `announcement_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `employee` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employees`
--

CREATE TABLE `attendance_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opening_balance` double(15,2) NOT NULL DEFAULT '0.00',
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'cash', '', '-', 0.00, '-', '-', 2, '2022-09-01 08:46:43', '2022-09-01 08:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_products`
--

CREATE TABLE `bill_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income_data` text COLLATE utf8_unicode_ci,
  `expense_data` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_comments`
--

CREATE TABLE `bug_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_files`
--

CREATE TABLE `bug_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_statuses`
--

CREATE TABLE `bug_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bug_statuses`
--

INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Resolved', 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Unconfirmed', 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'In Progress', 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Verified', 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `sub_type` int(11) NOT NULL DEFAULT '0',
  `is_enabled` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounts Receivable', 120, 1, 1, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Computer Equipment', 160, 1, 2, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Office Equipment', 150, 1, 2, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Inventory', 140, 1, 3, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Budget - Finance Staff', 857, 1, 6, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(6, 'Accumulated Depreciation', 170, 1, 7, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(7, 'Accounts Payable', 200, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(8, 'Accruals', 205, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(9, 'Office Equipment', 150, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(10, 'Clearing Account', 855, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(11, 'Employee Benefits Payable', 235, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(12, 'Employee Deductions payable', 236, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(13, 'Historical Adjustments', 255, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(14, 'Revenue Received in Advance', 835, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(15, 'Rounding', 260, 2, 8, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(16, 'Costs of Goods Sold', 500, 3, 11, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(17, 'Advertising', 600, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(18, 'Automobile Expenses', 644, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(19, 'Bad Debts', 684, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(20, 'Bank Revaluations', 810, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(21, 'Bank Service Charges', 605, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(22, 'Consulting & Accounting', 615, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(23, 'Depreciation', 700, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(24, 'General Expenses', 628, 3, 12, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(25, 'Interest Income', 460, 4, 13, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(26, 'Other Revenue', 470, 4, 13, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(27, 'Purchase Discount', 475, 4, 13, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(28, 'Sales', 400, 4, 13, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(29, 'Common Stock', 330, 5, 16, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(30, 'Owners Contribution', 300, 5, 16, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(31, 'Owners Draw', 310, 5, 16, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(32, 'Retained Earnings', 320, 5, 16, 1, NULL, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_sub_types`
--

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chart_of_account_sub_types`
--

INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Current Asset', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Fixed Asset', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Inventory', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Non-current Asset', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Prepayment', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(6, 'Bank & Cash', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(7, 'Depreciation', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(8, 'Current Liability', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(9, 'Liability', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(10, 'Non-current Liability', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(11, 'Direct Costs', 3, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(12, 'Expense', 3, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(13, 'Revenue', 4, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(14, 'Sales', 4, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(15, 'Other Income', 4, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(16, 'Equity', 5, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_types`
--

CREATE TABLE `chart_of_account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chart_of_account_types`
--

INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Liabilities', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Expenses', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Income', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Equity', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_deals`
--

CREATE TABLE `client_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payment_settings`
--

CREATE TABLE `company_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `limit` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` int(11) NOT NULL DEFAULT '0',
  `customer` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8_unicode_ci NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_questions`
--

CREATE TABLE `custom_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `labels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_calls`
--

CREATE TABLE `deal_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `call_result` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_discussions`
--

CREATE TABLE `deal_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_emails`
--

CREATE TABLE `deal_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_files`
--

CREATE TABLE `deal_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_tasks`
--

CREATE TABLE `deal_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill` int(11) NOT NULL DEFAULT '0',
  `vendor` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_options`
--

CREATE TABLE `deduction_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ducument_uploads`
--

CREATE TABLE `ducument_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `from`, `slug`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Create User', 'Work Ameltek', 'create_user', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Create Client', 'Work Ameltek', 'create_client', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Create Support', 'Work Ameltek', 'create_support', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Lead Assign', 'Work Ameltek', 'lead_assign', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Deal Assign', 'Work Ameltek', 'deal_assign', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(6, 'Award Send', 'Work Ameltek', 'award_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(7, 'Customer Invoice Send', 'Work Ameltek', 'customer_invoice_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(8, 'Invoice Payment', 'Work Ameltek', 'invoice_payment', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(9, 'Payment Reminder', 'Work Ameltek', 'payment_reminder', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(10, 'Bill Payment', 'Work Ameltek', 'bill_payment', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(11, 'Bill Resend', 'Work Ameltek', 'bill_resend', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(12, 'Proposal Send', 'Work Ameltek', 'proposal_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(13, 'Complaint Resend', 'Work Ameltek', 'complaint_resend', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(14, 'Leave Action Send', 'Work Ameltek', 'leave_action_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(15, 'Payslip Send', 'Work Ameltek', 'payslip_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(16, 'Promotion Send', 'Work Ameltek', 'promotion_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(17, 'Resignation Send', 'Work Ameltek', 'resignation_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(18, 'Termination Send', 'Work Ameltek', 'termination_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(19, 'Transfer Send', 'Work Ameltek', 'transfer_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(20, 'Trip Send', 'Work Ameltek', 'trip_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(21, 'Vender Bill Send', 'Work Ameltek', 'vender_bill_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(22, 'Warning Send', 'Work Ameltek', 'warning_send', 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_langs`
--

CREATE TABLE `email_template_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template_langs`
--

INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'Create User', '<p>????????????&nbsp;<br>?????????? ???? ???? {app_name}.</p><p><b>???????????? ???????????????????? </b>: {email}<br><b>???????? ????????</b> : {password}</p><p>{app_url}</p><p>????????<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 1, 'da', 'Create User', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 1, 'de', 'Create User', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 1, 'en', 'Create User', '<p>Hello,&nbsp;<br>Welcome to {app_name}.</p><p><b>Email </b>: {email}<br><b>Password</b> : {password}</p><p>{app_url}</p><p>Thanks,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 1, 'es', 'Create User', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electr??nico </b>: {email}<br><b>Contrase??a</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(6, 1, 'fr', 'Create User', '<p>Bonjour,&nbsp;<br>Bienvenue ?? {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(7, 1, 'it', 'Create User', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(8, 1, 'ja', 'Create User', '<p>??????????????????&nbsp;<br>??????????????? {app_name}.</p><p><b>E????????? </b>: {email}<br><b>???????????????</b> : {password}</p><p>{app_url}</p><p>???????????????<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(9, 1, 'nl', 'Create User', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(10, 1, 'pl', 'Create User', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Has??o</b> : {password}</p><p>{app_url}</p><p>Dzi??ki,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(11, 1, 'ru', 'Create User', '<p>????????????,&nbsp;<br>?????????? ???????????????????? ?? {app_name}.</p><p><b>?????????????????????? ???????????? </b>: {email}<br><b>????????????</b> : {password}</p><p>{app_url}</p><p>??????????????,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(12, 1, 'pt', 'Create User', '<p>Ol??,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(13, 2, 'ar', 'Create Client', '<p>?????????? { client_name } ?? </p><p>?????? ???????? Client ..</p><p>???????????? ???????????????????? : { client_email } </p><p>???????? ???????????? : { client_password }</p><p>{ app_url }</p><p>????????</p><p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(14, 2, 'da', 'Create Client', '<p>Hej { client_name },</p><p> Du er nu klient ..</p><p>E-mail: { client_email } </p><p>Password: { client_password }</p><p>{ app_url }</p><p>Tak.</p><p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(15, 2, 'de', 'Create Client', '<p>Hallo {client_name}, </p><p>Sie sind jetzt Client ..</p><p>E-Mail: {client_email}</p><p> Kennwort: {client_password}</p><p>{app_url}</p><p>Danke,</p><p>{Anwendungsname}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(16, 2, 'en', 'Create Client', '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Hello {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">You are now Client..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Email&nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_email}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Password</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">&nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Thanks,</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(17, 2, 'es', 'Create Client', '<p>Hola {nombre_cliente},</p><p> ahora es Cliente ..</p><p>Correo electr??nico: {client_email}</p><p> Contrase??a: {client_password}</p><p>{app_url}</p><p>Gracias,</p><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(18, 2, 'fr', 'Create Client', '<p>Bonjour { client_name }, </p><p>Vous ??tes maintenant Client ..</p><p>Adresse ??lectronique: { client_email } </p><p>Mot de passe: { client_password }</p><p>{ app_url }</p><p>Merci,</p><p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(19, 2, 'it', 'Create Client', '<p>Hello {client_name}, </p><p>Tu ora sei Client ..</p><p>Email: {client_email} </p><p>Password: {client_password}</p><p>{app_url}</p><p>Grazie,</p><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(20, 2, 'ja', 'Create Client', '<p>??????????????? {client_name} ???</p><p>??????????????????????????????</p><p>E ????????? : {client_email}</p><p> ??????????????? : {client_password}</p><p>{app_url}</p><p>??????????????????</p><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(21, 2, 'nl', 'Create Client', '<p>Hallo { client_name }, </p><p>U bent nu Client ..</p><p>E-mail: { client_email } </p><p>Wachtwoord: { client_password }</p><p>{ app_url }</p><p>Bedankt.</p><p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(22, 2, 'pl', 'Create Client', '<p>Witaj {client_name }, </p><p>jeste?? teraz Client ..</p><p>E-mail: {client_email }</p><p> Has??o: {client_password }</p><p>{app_url }</p><p>Dzi??kuj??,</p><p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(23, 2, 'ru', 'Create Client', '<p>Hello { client_name }, </p><p>???? ???????????? ???????????? ..</p><p>?????????? ?????????????????????? ??????????: { client_email } </p><p>????????????: { client_password }</p><p>{ app_url }</p><p>??????????????.</p><p>{ app_name }</p><p>Ol?? {client_name}, </p><p>Voc?? agora ?? Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(24, 2, 'pt', 'Create Client', '<p>Ol?? {client_name}, </p><p>Voc?? agora ?? Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(25, 3, 'ar', 'Create Support', '<p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">??????????</span><span style=\"font-size: 12pt;\">&nbsp;{support_name}</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">???? ?????? ?????????? ?????? ??????????.</span><span style=\"font-size: 12pt;\">.</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">??????????</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_title}</span><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">????????????</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">?????????? ????????????????</span><span style=\"font-size: 12pt;\">: {support_end_date}</span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">?????????? ??????</span><span style=\"font-size: 12pt;\"><strong>:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">???????? ????????????????</span><span style=\"font-size: 12pt;\">,</span><br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(26, 3, 'da', 'Create Support', '<p><b>Hej</b>&nbsp;{support_name}<br><br></p><p>Ny supportbillet er blevet ??bnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioritet</b>: {support_priority}<br></p><p><b>Slutdato</b>: {support_end_date}</p><p><br></p><p><b>Supportmeddelelse</b>:<br>{support_description}<br><br></p><p><b>Med venlig hilsen</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(27, 3, 'de', 'Create Support', '<p><b>Hallo</b>&nbsp;{support_name}<br><br></p><p>Neues Support-Ticket wurde er??ffnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Priorit??t</b>: {support_priority}<br></p><p><b>Endtermin</b>: {support_end_date}</p><p><br></p><p><b>Support-Nachricht</b>:<br>{support_description}<br><br></p><p><b>Mit freundlichen Gr????en</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(28, 3, 'en', 'Create Support', '<p><span style=\"font-size: 12pt;\"><b>Hi</b>&nbsp;{support_name}</span><br><br><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br><br><span style=\"font-size: 12pt;\"><strong>Title:</strong>&nbsp;{support_title}</span><br><span style=\"font-size: 12pt;\"><strong>Priority:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>End Date</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\"><strong>Support message:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br><b>Kind Regards</b>,</span><br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(29, 3, 'es', 'Create Support', '<p><b>Hola</b>&nbsp;{support_name}<br><br></p><p>Se ha abierto un nuevo ticket de soporte.<br><br></p><p><b>T??tulo</b>: {support_title}<br></p><p><b>Prioridad</b>: {support_priority}<br></p><p><b>Fecha final</b>: {support_end_date}</p><p><br></p><p><b>Mensaje de apoyo</b>:<br>{support_description}<br><br></p><p><b>Saludos cordiales</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(30, 3, 'fr', 'Create Support', '<p><b>salut</b>&nbsp;{support_name}<br><br></p><p>Un nouveau ticket d\'assistance a ??t?? ouvert.<br><br></p><p><b>Titre</b>: {support_title}<br></p><p><b>Priorit??</b>: {support_priority}<br></p><p><b>Date de fin</b>: {support_end_date}</p><p><b>Message d\'assistance</b>:<br>{support_description}<br><br></p><p><b>Sinc??res amiti??s</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(31, 3, 'it', 'Create Support', '<p><b>Ciao</b>&nbsp;{support_name},<br><br></p><p>?? stato aperto un nuovo ticket di supporto.<br><br></p><p><b>Titolo</b>: {support_title}<br></p><p><b>Priorit??</b>: {support_priority}<br></p><p><b>Data di fine</b>: {support_end_date}</p><p><br></p><p><b>Messaggio di supporto</b>:<br>{support_description}</p><p><b>Cordiali saluti</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(32, 3, 'ja', 'Create Support', '<p>??????????????? {support_name}<br><br></p><p>???????????????????????????????????????????????????????????????.<br><br></p><p>??????: {support_title}<br></p><p>??????: {support_priority}<br></p><p>?????????: {support_end_date}</p><p><br></p><p>???????????????????????????:<br>{support_description}<br><br></p><div class=\"tw-ta-container hide-focus-ring tw-lfl focus-visible\" id=\"tw-target-text-container\" tabindex=\"0\" data-focus-visible-added=\"\" style=\"overflow: hidden; position: relative; outline: 0px;\"><pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; line-height: 32px; border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; overflow-wrap: break-word;\"><span lang=\"ja\">?????????</span>,</pre></div><p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(33, 3, 'nl', 'Create Support', '<p><b>Hoi</b>&nbsp;{support_name}<br><br></p><p>Er is een nieuw supportticket geopend.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioriteit</b>: {support_priority}<br></p><p><b>Einddatum</b>: {support_end_date}</p><p><br></p><p><b>Ondersteuningsbericht</b>:<br>{support_description}<br><br></p><p><b>Vriendelijke groeten</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(34, 3, 'pl', 'Create Support', '<p><b>cze????</b>&nbsp;{support_name}<br><br></p><p>Nowe zg??oszenie do pomocy technicznej zosta??o otwarte.<br><br></p><p><b>Tytu??</b>: {support_title}<br></p><p><b>Priorytet</b>: {support_priority}<br></p><p><b>Data ko??cowa</b>: {support_end_date}</p><p><br></p><p><b>Wiadomo???? pomocy</b>:<br>{support_description}<br><br></p><p><b>Z powa??aniem</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(35, 3, 'ru', 'Create Support', '<p><b>????????????????????</b>&nbsp;{support_name}<br><br></p><p>?????????????? ?????????? ???????????? ?? ???????????? ??????????????????.<br><br></p><p><b>????????????????</b>: {support_title}<br></p><p><b>??????????????????</b>: {support_priority}<br></p><p><b>???????? ??????????????????</b>: {support_end_date}</p><p><br></p><p><b>?????????????????? ??????????????????</b>:<br>{support_description}<br><br></p><p><b>?? ??????????????????</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(36, 3, 'pt', 'Create Support', '<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>??Novo ticket de suporte foi aberto.<br><br></p><p><b>T??tulo</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>?? Atenciosamente</b>,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(37, 4, 'ar', 'Lead Assign', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">???</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">??????????,</span><br style=\"font-family: sans-serif;\"></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">???? ?????????? ???????? ?????????? ???????? ????.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">?????? ???????????? ??????????????&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"\">???????????? ???????????? ????????????????????<span style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">???? ???????????? ????????????&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">?????????? ????????????&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">?????????????? ??????????????: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(38, 4, 'da', 'Lead Assign', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hej,</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Ny bly er blevet tildelt dig.</span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead-e-mail</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></p><p><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blyr??rledning</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead scenen</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_stage}</span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blynavn</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span><span style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><br></span><br></span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(39, 4, 'de', 'Lead Assign', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Neuer Lead wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Name</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead-E-Mail</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Pipeline</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Stage</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(40, 4, 'en', 'Lead Assign', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">???</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">New Lead has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Name</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>Lead Email</b></span><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Pipeline</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Stage</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Subject</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(41, 4, 'es', 'Lead Assign', '<p style=\"line-height: 28px;\">Hola,<br style=\"\"></p><p>Se le ha asignado un nuevo plomo.</p><p></p><p style=\"line-height: 28px;\"><b>Nombre principal</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Correo electr??nico</b> principal&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Tuber??a de plomo</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>Etapa de plomo</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\"><b>Hauptthema</b>: {lead_subject}</span><br></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(42, 4, 'fr', 'Lead Assign', '<p style=\"line-height: 28px;\">Bonjour,<br style=\"\"></p><p style=\"\">Un nouveau prospect vous a ??t?? attribu??.</p><p></p><p style=\"line-height: 28px;\"><b>Nom du responsable</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Courriel principal</b>&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Pipeline de plomb</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>??tape principale</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Sujet principal</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(43, 4, 'it', 'Lead Assign', '<p style=\"line-height: 28px;\">Ciao,<br style=\"\"></p><p>New Lead ?? stato assegnato a te.</p><p><b>Lead Email</b>&nbsp;: {lead_email}</p><p><b>Conduttura di piombo&nbsp;: {lead_pipeline}</b></p><p><b>Lead Stage</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Nome del lead</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Soggetto principale</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(44, 4, 'ja', 'Lead Assign', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">??????????????????</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">???????????????????????????????????????????????????</span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">??????????????????</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">???????????????????????????</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">?????????????????????</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">????????????</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span><br></span></p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\" style=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">???????????????????????????</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_subject}</span></span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(45, 4, 'nl', 'Lead Assign', '<p style=\"line-height: 28px;\">Hallo,<br style=\"\"></p><p style=\"\">Nieuwe lead is aan u toegewezen.<br><b>E-mail leiden</b>&nbsp;: {lead_email}<br><b>Lead Pipeline</b>&nbsp;: {lead_pipeline}<br><b>Hoofdfase</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Lead naam</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Hoofdonderwerp</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(46, 4, 'pl', 'Lead Assign', '<p style=\"line-height: 28px;\">Witaj,<br style=\"\">Nowy potencjalny klient zosta?? do ciebie przypisany.</p><p style=\"line-height: 28px;\"><b>Imi?? i nazwisko</b>&nbsp;: {lead_name}<br><b>G????wny adres e-mail</b>&nbsp;: {lead_email}<br><b>O????w ruroci??gu</b>&nbsp;: {lead_pipeline}<br><b>Etap prowadz??cy</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>G????wny temat</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(47, 4, 'ru', 'Lead Assign', '<p style=\"line-height: 28px;\">????????????,<br style=\"\">?????????? ?????? ?????? ???????????????? ??????.</p><p style=\"line-height: 28px;\"><b>?????? ????????????</b>&nbsp;: {lead_name}<br><b>?????????????? Email</b>&nbsp;: {lead_email}<br><b>?????????????? ??????????????????????</b>&nbsp;: {lead_pipeline}<br><b>?????????????? ????????</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>?????????????? ????????</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(48, 4, 'pt', 'Lead Assign', '<p style=\"line-height: 28px;\">Ol??,<br style=\"\">O novo lead foi atribu??do a voc??.</p><p style=\"line-height: 28px;\"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Est??gio principal</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Assunto principal</b>: {lead_subject}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(49, 5, 'ar', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">????????????</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">???? ?????????? ???????? ?????????? ????.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">?????? ????????????</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">???? ???????????? ????????????</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">?????????? ????????????</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">???????? ????????????</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">?????? ????????????</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(50, 5, 'da', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hej,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal er blevet tildelt til dig.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Navn</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Fase</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal pris</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(51, 5, 'de', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Gesch??ftsname</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Ausgehandelter Preis</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(52, 5, 'en', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Name</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal Price</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(53, 5, 'es', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hola,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal ha sido asignado a usted.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nombre del trato</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Tuber??a de reparto</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etapa de reparto</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Estado del acuerdo</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Precio de oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(54, 5, 'fr', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Bonjour,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Le New Deal vous a ??t?? attribu??.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nom de l\'accord</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de transactions</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">??tape de l\'op??ration</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Statut de l\'accord</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prix ??????de l\'offre</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(55, 5, 'it', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Ciao,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal ?? stato assegnato a te.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome dell\'affare</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline di offerte</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Stage Deal</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Stato dell\'affare</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prezzo dell\'offerta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(56, 5, 'ja', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">??????????????????</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">????????????????????????????????????????????????</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">?????????</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">????????????????????????</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">??????????????????</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">????????????</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">????????????</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(57, 5, 'nl', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal is aan u toegewezen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Dealnaam</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Dealstatus</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal prijs</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(58, 5, 'pl', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Witaj,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Umowa zosta??a przeniesiona {deal_old_stage} do&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nazwa oferty</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etap transakcji</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status oferty</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Cena oferty</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(59, 5, 'ru', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">????????????,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">???????????? ???????? ???????????????????? ???? {deal_old_stage} ??&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">???????????????? ????????????</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">?????????????????????? ????????????</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">???????? ????????????</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">???????????? ????????????</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">???????? ????????????</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(60, 5, 'pt', 'Deal Assign', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Ol??,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">???????????? ???????? ???????????????????? ???? {deal_old_stage} ??&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome do neg??cio</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de neg??cios</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Est??gio do neg??cio</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status da transa????o</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Pre??o da oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(61, 6, 'ar', 'Award Send', '<p>????????????&nbsp;<br>?????????? ???? ???? {app_name}.</p><p><b>???????????? ???????????????????? </b>: {email}<br><b>???????? ????????</b> : {password}</p><p>{app_url}</p><p>????????<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(62, 6, 'da', 'Award Send', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(63, 6, 'de', 'Award Send', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(64, 6, 'en', 'Award Send', '<p>Hi ,??<span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>I am much pleased to nominate .</p><p>I am satisfied that he/she is the best employee for the award. </p><p>I have realized?? that he/she is a goal-oriented person, efficient and very punctual .</p><p>Feel free to reach out if you have any question.<br></p><p>Thank You,??</p><p>{app_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(65, 6, 'es', 'Award Send', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electr??nico </b>: {email}<br><b>Contrase??a</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(66, 6, 'fr', 'Award Send', '<p>Bonjour,&nbsp;<br>Bienvenue ?? {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(67, 6, 'it', 'Award Send', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(68, 6, 'ja', 'Award Send', '<p>??????????????????&nbsp;<br>??????????????? {app_name}.</p><p><b>E????????? </b>: {email}<br><b>???????????????</b> : {password}</p><p>{app_url}</p><p>???????????????<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(69, 6, 'nl', 'Award Send', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(70, 6, 'pl', 'Award Send', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Has??o</b> : {password}</p><p>{app_url}</p><p>Dzi??ki,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(71, 6, 'ru', 'Award Send', '<p>????????????,&nbsp;<br>?????????? ???????????????????? ?? {app_name}.</p><p><b>?????????????????????? ???????????? </b>: {email}<br><b>????????????</b> : {password}</p><p>{app_url}</p><p>??????????????,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(72, 6, 'pt', 'Award Send', '<p>Ol??,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(73, 7, 'ar', 'Customer Invoice Send', '<p>????????<span style=\"text-align: var(--bs-body-text-align);\">?????????? ?? { invoice_name }</span></p><p>?????????? ???? ???? { app_name }</p><p>?????????? ???? ???????? ?????? ???????????? ???????????????????? ???????? ?????????? ???????????? ?????? ?????? ???????????????? ?????????????? { invoice_number } ???????????? / ????????????.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???????????? ?? ???????? ?????? ???????????????? ?????????? :&nbsp;</span></p><p>{ invoice_url }</p><p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p><p>???????? ????</p><p>Regards,</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(74, 7, 'da', 'Customer Invoice Send', '<p>Hej, { invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Velkommen til { app_name }</span></p><p>H??ber denne e-mail finder dig godt! Se vedlagte fakturanummer { invoice_number } for product/service.</p><p>Klik p?? knappen nedenfor:&nbsp;</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Du er velkommen til at r??kke ud, hvis du har nogen sp??rgsm??l.</span></p><p>Tak.</p><p>Med venlig hilsen</p><p>{ company_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(75, 7, 'de', 'Customer Invoice Send', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {invoice_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hoffe, diese E-Mail findet dich gut! Bitte beachten Sie die beigef??gte Rechnungsnummer {invoice_number} f??r Produkt/Service.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Klicken Sie einfach auf den Button unten:&nbsp;</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{invoice_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">F??hlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(76, 7, 'en', 'Customer Invoice Send', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">???</span><span style=\"text-align: var(--bs-body-text-align);\">Hi ,{invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Welcome to {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Hope this email finds you well! Please see attached invoice number {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">} for product/service.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Simply click on the button below:??</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Feel free to reach out if you have any questions.</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Thank You,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Regards,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(77, 7, 'es', 'Customer Invoice Send', '<p>Hi, {invoice_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span></p><p>??Espero que este email le encuentre bien! Consulte el n??mero de factura adjunto {invoice_number} para el producto/servicio.</p><p>Simplemente haga clic en el bot??n de abajo:&nbsp;</p><p>{invoice_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Si??ntase libre de llegar si usted tiene alguna pregunta.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Gracias,</span></p><p>Considerando,</p><p>{nombre_empresa}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(78, 7, 'fr', 'Customer Invoice Send', '<p>Bonjour, { nom_appel }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>J esp??re que ce courriel vous trouve bien ! Voir le num??ro de facture { invoice_number } pour le produit/service.</p><p>Cliquez simplement sur le bouton ci-dessous:&nbsp;</p><p>{ url-invoque_utilisateur }</p><p>N h??sitez pas ?? nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(79, 7, 'it', 'Customer Invoice Send', '<p>Ciao, {nome_invoca_}</p><p>Benvenuti in {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura collegato {invoice_number} per il prodotto/servizio.</span></p><p>Semplicemente clicca sul pulsante sottostante:&nbsp;</p><p>{invoice_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(80, 7, 'ja', 'Customer Invoice Send', '<p>?????????????????? {????????????}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} ???????????????</span></p><p>?????? E ?????????????????????????????????????????? ?????? / ???????????????????????????????????????????????????????????? {invoice_number} ??????????????????????????????</p><p>??????????????????????????????????????????????????????&nbsp;</p><p>{????????? URL}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???????????????????????????????????????????????????????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">??????????????????????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">????????????</span></p><p>{ company_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(81, 7, 'nl', 'Customer Invoice Send', '<p>Hallo, { invoice_name }</p><p>Welkom bij { app_name }</p><p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde factuurnummer { invoice_number } voor product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Klik gewoon op de knop hieronder:&nbsp;</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(82, 7, 'pl', 'Customer Invoice Send', '<p>Witaj, {invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span></p><p>Mam nadziej??, ??e ta wiadomo???? znajdzie Ci?? dobrze! Sprawd?? za????czon?? faktur?? numer {invoice_number } dla produktu/us??ugi.</p><p>Wystarczy klikn???? na przycisk poni??ej:&nbsp;</p><p>{adres_URL_faktury }</p><p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p><p>Dzi??kuj??,</p><p>W odniesieniu do</p><p>{company_name }</p><p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(83, 7, 'ru', 'Customer Invoice Send', '<p>????????????, { invoice_name }</p><p>?????? ???????????????????????? { app_name }</p><p>??????????????, ?????? ?????????????????????? ???????????? ???????????? ?????? ????????????! ????. ?????????????????? ?????????? ??????????-?????????????? { invoice_number } ?????? ????????????????????????/????????????.</p><p>???????????? ?????????????? ???? ???????????? ????????:&nbsp;</p><p>{ invoice_url }</p><p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p><p>??????????????.</p><p>?? ??????????????????,</p><p>{ company_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(84, 7, 'pt', 'Customer Invoice Send', '<p><span style=\"font-size: 14.4px;\">Oi, {invoice_name}</span></p><p><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p><span style=\"font-size: 14.4px;\">Espero que este e-mail encontre voc?? bem! Por favor, consulte o n??mero da fatura anexa {invoice_number} para produto/servi??o.</span></p><p><span style=\"font-size: 14.4px;\">Basta clicar no bot??o abaixo:&nbsp;</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{invoice_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se ?? vontade para alcan??ar fora se voc?? tiver alguma d??vida.</span></p><p><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">{company_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(85, 8, 'ar', 'Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(86, 8, 'da', 'Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(87, 8, 'de', 'Invoice Payment', '<p>Hi,</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Sehr geehrter {invoice_payment_name}</p>\n                    <p>Wir haben Ihre Zahlung {invoice_payment_amount} f&uuml;r {invoice_number}, die am Datum {invoice_payment_date} &uuml;bergeben wurde, erhalten.</p>\n                    <p>Ihr {invoice_number} -f&auml;lliger Betrag ist {payment_dueAmount}</p>\n                    <p>Wir freuen uns &uuml;ber Ihre prompte Bezahlung und freuen uns auf das weitere Gesch&auml;ft mit Ihnen in der Zukunft.</p>\n                    <p>Vielen Dank und habe einen guten Tag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(88, 8, 'en', 'Invoice Payment', '<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Welcome to {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {invoice_payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We have recieved your amount {invoice_payment_amount} payment for {invoice_number} submited on date {invoice_payment_date}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Your {invoice_number} Due amount is {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We appreciate your prompt payment and look forward to continued business with you in the future.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Thank you very much and have a good day!!</span></span></p>\n                    <p>&nbsp;</p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Regards,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(89, 8, 'es', 'Invoice Payment', '<p>Hola,</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>Estimado {invoice_payment_name}</p>\n                    <p>Hemos recibido su importe {invoice_payment_amount} pago para {invoice_number} submitado en la fecha {invoice_payment_date}</p>\n                    <p>El importe de {invoice_number} Due es {payment_dueAmount}</p>\n                    <p>Agradecemos su pronto pago y esperamos continuar con sus negocios con usted en el futuro.</p>\n                    <p>Muchas gracias y que tengan un buen d&iacute;a!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(90, 8, 'fr', 'Invoice Payment', '<p>Salut,</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Cher { invoice_payment_name }</p>\n                    <p>Nous avons re&ccedil;u votre montant { invoice_payment_amount } de paiement pour { invoice_number } soumis le { invoice_payment_date }</p>\n                    <p>Votre {invoice_number} Montant d&ucirc; est { payment_dueAmount }</p>\n                    <p>Nous appr&eacute;cions votre rapidit&eacute; de paiement et nous attendons avec impatience de poursuivre vos activit&eacute;s avec vous &agrave; lavenir.</p>\n                    <p>Merci beaucoup et avez une bonne journ&eacute;e ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(91, 8, 'it', 'Invoice Payment', '<p>Ciao,</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Caro {invoice_payment_name}</p>\n                    <p>Abbiamo ricevuto la tua quantit&agrave; {invoice_payment_amount} pagamento per {invoice_number} subita alla data {invoice_payment_date}</p>\n                    <p>Il tuo {invoice_number} A somma cifra &egrave; {payment_dueAmount}</p>\n                    <p>Apprezziamo il tuo tempestoso pagamento e non vedo lora di continuare a fare affari con te in futuro.</p>\n                    <p>Grazie mille e buona giornata!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(92, 8, 'ja', 'Invoice Payment', '<p>??????????????????</p>\n                    <p>{app_name} ???????????????</p>\n                    <p>{ invoice_payment_name} ???????????????</p>\n                    <p>{ invoice_payment_date} ???????????????????????? {???????????????} ??????????????? } ????????????????????????????????? }</p>\n                    <p>???????????? {???????????????} ???????????? {payment_dueAmount} ??????</p>\n                    <p>??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>??????????????????????????????????????????????????????????????????</p>\n                    <p>&nbsp;</p>\n                    <p>????????????</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(93, 8, 'nl', 'Invoice Payment', '<p>Hallo,</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Beste { invoice_payment_name }</p>\n                    <p>We hebben uw bedrag ontvangen { invoice_payment_amount } betaling voor { invoice_number } ingediend op datum { invoice_payment_date }</p>\n                    <p>Uw { invoice_number } verschuldigde bedrag is { payment_dueAmount }</p>\n                    <p>Wij waarderen uw snelle betaling en kijken uit naar verdere zaken met u in de toekomst.</p>\n                    <p>Hartelijk dank en hebben een goede dag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(94, 8, 'pl', 'Invoice Payment', '<p>Witam,</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Droga {invoice_payment_name }</p>\n                    <p>Odebrano kwot?? {invoice_payment_amount } p??atno??ci za {invoice_number } w dniu {invoice_payment_date }, kt&oacute;ry zosta?? zast??piony przez u??ytkownika.</p>\n                    <p>{invoice_number } Kwota nale??na: {payment_dueAmount }</p>\n                    <p>Doceniamy Twoj?? szybk?? p??atno???? i czekamy na kontynuacj?? dzia??alno??ci gospodarczej z Tob?? w przysz??o??ci.</p>\n                    <p>Dzi??kuj?? bardzo i mam dobry dzie??!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(95, 8, 'ru', 'Invoice Payment', '<p>????????????.</p>\n                    <p>?????? ???????????????????????? { app_name }</p>\n                    <p>?????????????? { invoice_payment_name }</p>\n                    <p>???? ???????????????? ???????? ?????????? ???????????? {invoice_payment_amount} ?????? { invoice_number }, ???????????????? ???? ???????? { invoice_payment_date }</p>\n                    <p>???????? { invoice_number } ?????????????? ??????????-{ payment_dueAmount }</p>\n                    <p>???? ?????????? ???????? ?????????????????????????? ???????????? ?? ???????????????? ???? ?????????????????????? ?????????????? ?? ???????? ?? ??????????????.</p>\n                    <p>?????????????? ?????????????? ?? ???????????????? ??????!!</p>\n                    <p>&nbsp;</p>\n                    <p>?? ??????????????????,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(96, 8, 'pt', 'Invoice Payment', '<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(97, 9, 'ar', 'Payment Reminder', '<p>?????????? ?? { payment_reminder_name }</p>\n                    <p>?????? ???? ???????? ????????. ?????? ???????? ?????????? ?????? ?????????? ?????? ???????????????? { invoice_payment_number } ???????????????? { invoice_payment_dueAmount } ?? ?????????? ???????? ???????????????? ?????? { payment_reminder_date } ?????????? ??????????.</p>\n                    <p>?????????? ?????? ???????? ?????????? ?????????? ???????????? ?????? ????????????????.</p>\n                    <p>?????? ?????????? ?????? ?????????? ?? ???????? ???????? ?????? ?????? ???????? ???? ???????? a ???????? ?????????? ?????? ???????????????? ?????????? ???????? ?????? ????????.</p>\n                    <p>?????? ?????? ???????? ???? ???????? ???????? ?????? ?? ???????? ???????? ???????????? ?????????? ????????????????.</p>\n                    <p>&nbsp;</p>\n                    <p>????????&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(98, 9, 'da', 'Payment Reminder', '<p>K&aelig;re, { payment_reminder_name }</p>\n                    <p>Dette er blot en p&aring;mindelse om, at betaling p&aring; faktura { invoice_payment_number } i alt { invoice_payment_dueAmount}, som vi sendte til { payment_reminder_date }, er forfalden i dag.</p>\n                    <p>Du kan foretage betalinger til den bankkonto, der er angivet p&aring; fakturaen.</p>\n                    <p>Jeg er sikker p&aring; du har travlt, men jeg ville s&aelig;tte pris p&aring;, hvis du kunne tage et &oslash;jeblik og se p&aring; fakturaen, n&aring;r du f&aring;r en chance.</p>\n                    <p>Hvis De har nogen sp&oslash;rgsm&aring;l, s&aring; svar venligst, og jeg vil med gl&aelig;de tydeligg&oslash;re dem.</p>\n                    <p>&nbsp;</p>\n                    <p>Tak.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(99, 9, 'de', 'Payment Reminder', '<p>Sehr geehrte/r, {payment_reminder_name}</p>\n                    <p>Ich hoffe, Sie sind gut. Dies ist nur eine Erinnerung, dass die Zahlung auf Rechnung {invoice_payment_number} total {invoice_payment_dueAmount}, die wir gesendet am {payment_reminder_date} ist heute f&auml;llig.</p>\n                    <p>Sie k&ouml;nnen die Zahlung auf das auf der Rechnung angegebene Bankkonto vornehmen.</p>\n                    <p>Ich bin sicher, Sie sind besch&auml;ftigt, aber ich w&uuml;rde es begr&uuml;&szlig;en, wenn Sie einen Moment nehmen und &uuml;ber die Rechnung schauen k&ouml;nnten, wenn Sie eine Chance bekommen.</p>\n                    <p>Wenn Sie irgendwelche Fragen haben, antworten Sie bitte und ich w&uuml;rde mich freuen, sie zu kl&auml;ren.</p>\n                    <p>&nbsp;</p>\n                    <p>Danke,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(100, 9, 'en', 'Payment Reminder', '<p>Dear, {payment_reminder_name}</p>\n                    <p>I hope you&rsquo;re well.This is just a reminder that payment on invoice {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , which we sent on {payment_reminder_date} is due today.</p>\n                    <p>You can make payment to the bank account specified on the invoice.</p>\n                    <p>I&rsquo;m sure you&rsquo;re busy, but I&rsquo;d appreciate if you could take a moment and look over the invoice when you get a chance.</p>\n                    <p>If you have any questions whatever, please reply and I&rsquo;d be happy to clarify them.</p>\n                    <p>&nbsp;</p>\n                    <p>Thanks,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(101, 9, 'es', 'Payment Reminder', '<p>Estimado, {payment_reminder_name}</p>\n                    <p>Espero que est&eacute;s bien. Esto es s&oacute;lo un recordatorio de que el pago en la factura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos en {payment_reminder_date} se vence hoy.</p>\n                    <p>Puede realizar el pago a la cuenta bancaria especificada en la factura.</p>\n                    <p>Estoy seguro de que est&aacute;s ocupado, pero agradecer&iacute;a si podr&iacute;as tomar un momento y mirar sobre la factura cuando tienes una oportunidad.</p>\n                    <p>Si tiene alguna pregunta, por favor responda y me gustar&iacute;a aclararlas.</p>\n                    <p>&nbsp;</p>\n                    <p>Gracias,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(102, 9, 'fr', 'Payment Reminder', '<p>Cher, { payment_reminder_name }</p>\n                    <p>Jesp&egrave;re que vous &ecirc;tes bien, ce nest quun rappel que le paiement sur facture {invoice_payment_number}total { invoice_payment_dueAmount }, que nous avons envoy&eacute; le {payment_reminder_date} est d&ucirc; aujourdhui.</p>\n                    <p>Vous pouvez effectuer le paiement sur le compte bancaire indiqu&eacute; sur la facture.</p>\n                    <p>Je suis s&ucirc;r que vous &ecirc;tes occup&eacute;, mais je vous serais reconnaissant de prendre un moment et de regarder la facture quand vous aurez une chance.</p>\n                    <p>Si vous avez des questions, veuillez r&eacute;pondre et je serais heureux de les clarifier.</p>\n                    <p>&nbsp;</p>\n                    <p>Merci,&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(103, 9, 'it', 'Payment Reminder', '<p>Caro, {payment_reminder_name}</p>\n                    <p>Spero che tu stia bene, questo &egrave; solo un promemoria che il pagamento sulla fattura {invoice_payment_number} totale {invoice_payment_dueAmount}, che abbiamo inviato su {payment_reminder_date} &egrave; dovuto oggi.</p>\n                    <p>&Egrave; possibile effettuare il pagamento al conto bancario specificato sulla fattura.</p>\n                    <p>Sono sicuro che sei impegnato, ma apprezzerei se potessi prenderti un momento e guardare la fattura quando avrai una chance.</p>\n                    <p>Se avete domande qualunque, vi prego di rispondere e sarei felice di chiarirle.</p>\n                    <p>&nbsp;</p>\n                    <p>Grazie,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(104, 9, 'ja', 'Payment Reminder', '<p>ID??? {payment_reminder_name}</p>\n                    <p>???????????? { invoice_payment_dueAmount} ????????? {invoice_payment_dueAmount } ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>???????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>&nbsp;</p>\n                    <p>??????????????????&nbsp;</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(105, 9, 'nl', 'Payment Reminder', '<p>Geachte, { payment_reminder_name }</p>\n                    <p>Ik hoop dat u goed bent. Dit is gewoon een herinnering dat betaling op factuur { invoice_payment_number } totaal { invoice_payment_dueAmount }, die we verzonden op { payment_reminder_date } is vandaag verschuldigd.</p>\n                    <p>U kunt betaling doen aan de bankrekening op de factuur.</p>\n                    <p>Ik weet zeker dat je het druk hebt, maar ik zou het op prijs stellen als je even over de factuur kon kijken als je een kans krijgt.</p>\n                    <p>Als u vragen hebt, beantwoord dan uw antwoord en ik wil ze graag verduidelijken.</p>\n                    <p>&nbsp;</p>\n                    <p>Bedankt.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(106, 9, 'pl', 'Payment Reminder', '<p>Drogi, {payment_reminder_name }</p>\n                    <p>Mam nadziej??, ??e jeste?? dobrze. To jest tylko przypomnienie, ??e p??atno???? na fakturze {invoice_payment_number } total {invoice_payment_dueAmount }, kt&oacute;re wys??ali??my na {payment_reminder_date } jest dzisiaj.</p>\n                    <p>P??atno???? mo??na dokona?? na rachunek bankowy podany na fakturze.</p>\n                    <p>Jestem pewien, ??e jeste?? zaj??ty, ale by??bym wdzi??czny, gdyby?? m&oacute;g?? wzi???? chwil?? i spojrze?? na faktur??, kiedy masz szans??.</p>\n                    <p>Je??li masz jakie?? pytania, prosz?? o odpowied??, a ja ch??tnie je wyja??niam.</p>\n                    <p>&nbsp;</p>\n                    <p>Dzi??kuj??,&nbsp;</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(107, 9, 'ru', 'Payment Reminder', '<p>??????????????????, { payment_reminder_name }</p>\n                    <p>?? ??????????????, ?????? ???? ????????????. ?????? ???????????? ?????????????????????? ?? ??????, ?????? ???????????? ???? ?????????? { invoice_payment_number } ?????????? { invoice_payment_dueAmount }, ?????????????? ???? ?????????????????? ?? { payment_reminder_date }, ??????????????.</p>\n                    <p>???? ???????????? ???????????????????? ???????????? ???? ???????????????????? ????????, ?????????????????? ?? ??????????-??????????????.</p>\n                    <p>?? ??????????????, ?????? ???? ????????????, ???? ?? ???????? ???? ????????????????????????, ???????? ???? ???? ???????? ???? ?????????????????????? ???? ????????, ?????????? ?? ???????? ???????????????? ????????.</p>\n                    <p>???????? ?? ?????? ???????? ??????????????, ????????????????????, ????????????????, ?? ?? ???????? ?????? ???? ??????????????????.</p>\n                    <p>&nbsp;</p>\n                    <p>??????????????.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(108, 9, 'pt', 'Payment Reminder', '<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(109, 10, 'ar', 'Bill Payment', '<p>?????????? ?? { payment_name }</p><p>?????????? ???? ???? { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????? ???????? ???????????????? ?????????? ???? ???????????? ?????????????? (payment_????????????????) } ???????????? ????.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????? ???????????? ?????????? { payment_cama } ???????? { payment_???????????? } ?????? ???????????????? ???? ?????????????? { payment_date } ???? ???????? { payment_method }.</span></p><p>???????? ?????????? ???? ???????? ???????? ! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(110, 10, 'da', 'Bill Payment', '', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(111, 10, 'de', 'Bill Payment', '<p>Hallo, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Willkommen bei {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir schreiben Ihnen mitzuteilen, dass wir Ihre Zahlung von {payment_bill} gesendet haben.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir haben Ihre Zahlung {payment_amount} Zahlung f??r {payment_bill} am Datum {payment_date} ??ber {payment_method} gesendet.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Vielen Dank und haben einen guten Tag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(112, 10, 'en', 'Bill Payment', '<p>Hi , {payment_name}</p><p>Welcome to {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We are writing to inform you that we has sent your {payment_bill} payment.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We has sent your amount {payment_amount} payment for {payment_bill} submited&nbsp; on date {payment_date} via {payment_method}.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day !!!!</span></p><p>{company_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(113, 10, 'es', 'Bill Payment', '<p>Hola, {nombre_pago}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escribiendo para informarle que hemos enviado su pago {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hemos enviado su importe {payment_amount} pago para {payment_bill} submitado en la fecha {payment_date} a trav??s de {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{nombre_empresa}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(114, 10, 'fr', 'Bill Payment', '<p>Salut, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous vous ??crivons pour vous informer que nous avons envoy?? votre paiement { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous avons envoy?? votre paiement { payment_amount } pour { payment_bill } soumis ?? la date { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Merci beaucoup et avez un bon jour ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ adresse_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(115, 10, 'it', 'Bill Payment', '<p>Ciao, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Benvenuti in {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Scriviamo per informarti che abbiamo inviato il tuo pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Abbiamo inviato la tua quantit?? {payment_amount} pagamento per {payment_bill} subita alla data {payment_date} tramite {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie mille e buona giornata! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(116, 10, 'ja', 'Bill Payment', '<p>?????????????????? {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} ???????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_??????} ???????????????????????????????????????????????????????????????????????????????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_date } ?????????????????? {payment_??????} ?????????????????? {payment_??????} ?????????????????? {payment_method}????????????????????????????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">??????????????????????????????????????????????????????????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(117, 10, 'nl', 'Bill Payment', '<p>Hallo, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wij schrijven u om u te informeren dat wij uw betaling van { payment_bill } hebben verzonden.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We hebben uw bedrag { payment_amount } betaling voor { payment_bill } verzonden op datum { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hartelijk dank en hebben een goede dag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ bedrijfsnaam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(118, 10, 'pl', 'Bill Payment', '<p>Witaj, {payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Piszemy, aby poinformowa?? Ci??, ??e wys??ali??my Twoj?? p??atno???? {payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Twoja kwota {payment_amount } zosta??a wys??ana przez u??ytkownika {payment_bill } w dniu {payment_date } za pomoc?? metody {payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dzi??kuj?? bardzo i mam dobry dzie??! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(119, 10, 'ru', 'Bill Payment', '<p>????????????, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????? ???????????????????????? { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???? ??????????, ?????????? ???????????????? ??????, ?????? ???? ?????????????????? ???????? ???????????? { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???? ?????????????????? ???????? ?????????? ???????????? { payment_amoon } ?????? { payment_bill }, ?????????? ???? ???????? { payment_date } ?????????? { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????????????? ?????????????? ?? ???????????????? ??????! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(120, 10, 'pt', 'Bill Payment', '<p>Oi, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escrevendo para inform??-lo que enviamos o seu pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">N??s enviamos sua quantia {payment_amount} pagamento por {payment_bill} requisitado na data {payment_date} via {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Muito obrigado e tenha um bom dia! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(121, 11, 'ar', 'Bill Resend', '<p>?????????? ?? { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????????? ???? ???? { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????????? ???? ???????? ?????? ???????????? ???????????????????? ???????? ?????????? ???????????? ?????? ?????? ???????????????? ?????????????? { bill_bill } ?????????? ???????????? / ????????????.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ???????????? ???????? ?????? ???????????????? ??????????.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???????? ?????????? ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(122, 11, 'da', 'Bill Resend', '<p>Hej, { bill_name }</p><p>Velkommen til { app_name }</p><p>H??ber denne e-mail finder dig godt! Se vedlagte fakturanummer { bill_bill } for product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik p?? knappen nedenfor.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Du er velkommen til at r??kke ud, hvis du har nogen sp??rgsm??l.</p><p>Tak for din virksomhed! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(123, 11, 'de', 'Bill Resend', '<p>Hi, {bill_name}</p><p>Willkommen bei {app_name}</p><p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angeh??ngte Rechnungsnummer {bill_bill} f??r Produkt/Service an.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Klicken Sie einfach auf den Button unten.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">F??hlen Sie sich frei, wenn Sie Fragen haben.</span></p><p>Vielen Dank f??r Ihr Gesch??ft! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betrachtet,</span></p><p>{company_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(124, 11, 'en', 'Bill Resend', '<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hi , {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hope this email finds you well! Please see attached bill number {bill_bill} for product/service.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simply click on the button below .</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</span></p><p>Feel free to reach out if you have any questions.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You for your business !!!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(125, 11, 'es', 'Bill Resend', '<p>Hi, {nombre_billar}</p><p>Bienvenido a {app_name}</p><p>??Espero que este email le encuentre bien! Consulte el n??mero de factura adjunto {bill_bill} para el producto/servicio.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simplemente haga clic en el bot??n de abajo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Si??ntase libre de llegar si usted tiene alguna pregunta.</p><p>Thank You for your business! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considerando,</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(126, 11, 'fr', 'Bill Resend', '<p>Salut, { nom_facturation }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>Jesp??re que ce courriel vous trouve bien ! Veuillez consulter le num??ro de facture { factur_bill } associ?? au produit / service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cliquez simplement sur le bouton ci-dessous.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ url-facturation }</span></p><p>Nh??sitez pas ?? nous contacter si vous avez des questions.</p><p>Merci pour votre entreprise ! !!!</p><p>Regards,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span></p><p>{ adresse_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(127, 11, 'it', 'Bill Resend', '<p>Ciao, {bill_name}</p><p>Benvenuti in {app_name}</p><p>Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura allegato {bill_bill} per il prodotto/servizio.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Semplicemente clicca sul pulsante sottostante.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie per il tuo business! !!!</p><p>Riguardo,</p><p>{company_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(128, 11, 'ja', 'Bill Resend', '<p>?????????????????? {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} ???????????????</span></p><p>?????? E ?????????????????????????????????????????? ?????? / ?????????????????????????????????????????? {bill_??????} ??????????????????????????????</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ??????????????????????????????????????????????????????</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???????????????????????????????????????????????????????????????</span></p><p>???????????????????????????????????????????????????</p><p>????????????</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(129, 11, 'nl', 'Bill Resend', '<p>Hallo, { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span></p><p>Hoop dat deze e-mail je goed vindt! Zie het bijgesloten factuurnummer { bill_bill } voor product/service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik gewoon op de knop hieronder.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dank U voor uw bedrijf! !!!</span></p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(130, 11, 'pl', 'Bill Resend', '<p>Witaj, {nazwa_faktury }</p><p>Witamy w aplikacji {app_name }</p><p>Mam nadziej??, ??e ta wiadomo???? znajdzie Ci?? dobrze! Zapoznaj si?? z za????czonym numerem rachunku {bill_bill } dla produktu/us??ugi.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Wystarczy klikn???? na przycisk poni??ej.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{adres_URL_faktury }</p><p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p><p>Dzi??kujemy za sw??j biznes! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">W odniesieniu do</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(131, 11, 'ru', 'Bill Resend', '<p>????????????, { bill_name }</p><p>?????? ???????????????????????? { app_name }</p><p>??????????????, ?????? ?????????????????????? ???????????? ???????????? ?????? ????????????! ????. ?????????????????????? ?????????? ?????????? { bill_bill } ?????? product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ???????????? ?????????????? ???? ???????????? ??????????.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p><p>?????????????? ???? ?????? ????????????! !!!</p><p>?? ??????????????????,</p><p>{ company_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(132, 11, 'pt', 'Bill Resend', '<p>Oi, {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre voc?? bem! Por favor, consulte o n??mero de faturamento conectado {bill_bill} para produto/servi??o.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no bot??o abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se ?? vontade para alcan??ar fora se voc?? tiver alguma d??vida.</p><p>Obrigado pelo seu neg??cio! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(133, 12, 'ar', 'Proposal Send', '<p>?????????? ?? { proposal_name }</p>\n                    <p>?????????? ???? ???????? ?????? ???????????? ???????????????????? ???????? ?????????? ???????????? ?????? ?????? ???????????????? ???????????? { proposal_number } ???????????? / ????????????.</p>\n                    <p>???????? ???????????? ?????? ???????????????? ??????????</p>\n                    <p>{ proposal_url }</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ?????????? ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(134, 12, 'da', 'Proposal Send', '<p>Hej, {proposal__name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se det vedh&aelig;ftede forslag nummer { proposal_number } for product/service.</p>\n                    <p>klik bare p&aring; knappen nedenfor</p>\n                    <p>{ proposal_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak for din virksomhed!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(135, 12, 'de', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angeh&auml;ngte Vorschlagsnummer {proposal_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten</p>\n                    <p>{proposal_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank f&uuml;r Ihr Unternehmen!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(136, 12, 'en', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>Hope this email ???nds you well! Please see attached proposal number {proposal_number} for product/service.</p>\n                    <p>simply click on the button below</p>\n                    <p>{proposal_url}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you for your business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(137, 12, 'es', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>&iexcl;Espero que este email le encuentre bien! Consulte el n&uacute;mero de propuesta adjunto {proposal_number} para el producto/servicio.</p>\n                    <p>simplemente haga clic en el bot&oacute;n de abajo</p>\n                    <p>{proposal_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias por su negocio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(138, 12, 'fr', 'Proposal Send', '<p>Salut, {proposal_name}</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! Veuillez consulter le num&eacute;ro de la proposition jointe {proposal_number} pour le produit/service.</p>\n                    <p>Il suffit de cliquer sur le bouton ci-dessous</p>\n                    <p>{proposal_url}</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci pour votre entreprise ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(139, 12, 'it', 'Proposal Send', '<p>Ciao, {proposal_name}</p>\n                    <p>Spero che questa email ti trovi bene! Si prega di consultare il numero di proposta allegato {proposal_number} per il prodotto/servizio.</p>\n                    <p>semplicemente clicca sul pulsante sottostante</p>\n                    <p>{proposal_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie per il tuo business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(140, 12, 'ja', 'Proposal Send', '<p>?????????????????? {proposal_name}</p>\n                    <p>?????? E ?????????????????????????????????????????? ?????? / ?????????????????????????????????????????????????????? {proposal_number} ??????????????????????????????</p>\n                    <p>?????????????????????????????????????????????</p>\n                    <p>{proposal_url}</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>?????????????????????????????????????????????</p>\n                    <p>&nbsp;</p>\n                    <p>????????????</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(141, 12, 'nl', 'Proposal Send', '<p>Hallo, {proposal_name}</p>\n                    <p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde nummer { proposal_number } voor product/service.</p>\n                    <p>gewoon klikken op de knop hieronder</p>\n                    <p>{ proposal_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u voor uw bedrijf!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(142, 12, 'pl', 'Proposal Send', '<p>Witaj, {proposal_name}</p>\n                    <p>Mam nadziej??, ??e ta wiadomo???? znajdzie Ci?? dobrze! Prosz?? zapozna?? si?? z za????czonym numerem wniosku {proposal_number} dla produktu/us??ugi.</p>\n                    <p>po prostu kliknij na przycisk poni??ej</p>\n                    <p>{proposal_url}</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy za prowadzenie dzia??alno??ci!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(143, 12, 'ru', 'Proposal Send', '<p>????????????????????????, { proposal_name }</p>\n                    <p>??????????????, ?????? ?????????????????????? ???????????? ???????????? ?????? ????????????! ????. ?????????????????? ?????????????????????? ?????????? { proposal_number} ?????? product/service.</p>\n                    <p>???????????? ?????????????? ???? ???????????? ??????????</p>\n                    <p>{ proposal_url}</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>?????????????? ???? ???????? ????????!</p>\n                    <p>&nbsp;</p>\n                    <p>?? ??????????????????,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(144, 12, 'pt', 'Proposal Send', '<p>Oi, {proposal_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem! Por favor, consulte o n&uacute;mero da proposta anexada {proposal_number} para produto/servi&ccedil;o.</p>\n                    <p>basta clicar no bot&atilde;o abaixo</p>\n                    <p>{proposal_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado pelo seu neg&oacute;cio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(145, 13, 'ar', 'Complaint Resend', '<p>??????????</p><p>?????????? ???? ???? { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">(??) ?????????? ?????????????? ?????????????? / ???????????? ???????????? ???????? ??????????????.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">?????????? { demyt_name }</span></p><p>?????? ???? ???????? ???? ???????? ???????? ???????? ?????????? ?????????? ?????? ???????? ?????? ?????????? ???????? ???????????? ?????????????? ?????????????? ?? ?????????? ???? ?????????? ???? ?????? ?????????????? ???? ???????? ?????????? ?????? / ????.</p><p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p><p>???????? ????</p><p>Regards,</p><p>?????? ?????????????? ??????????????</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(146, 13, 'da', 'Complaint Resend', '<p>Hej.</p><p>Velkommen til { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR department/company to send klager brev.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">K??re { klaint_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Jeg vil gerne anmelde en konflikt mellem dig og den anden person. Der har v??ret flere tilf??lde i l??bet af de seneste dage, og jeg mener, at tiden er inde til at anmelde en formel klage over for ham.</span></p><p>Du er velkommen til at r??kke ud, hvis du har nogen sp??rgsm??l.</p><p>Tak.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelingen.</span></p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(147, 13, 'de', 'Complaint Resend', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung/Unternehmen, um Beschwerdeschreiben zu versenden.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrter {beanstandname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Ich m??chte einen Konflikt zwischen Ihnen und der anderen Person melden. Es gab in den letzten Tagen mehrere Zwischenf??lle, und ich bin der Meinung, dass es an der Zeit ist, eine formelle Beschwerde gegen ihn zu erstatten.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">F??hlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><div><br></div><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(148, 13, 'en', 'Complaint Resend', '<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">HR department/company to send complaints letter.<br></span></font></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {complaint_name}</span></font></p><p>I would like to report a conflict between you and the other person. There?? have been several incidents over the last few days, and I feel that its is time to report a formal complaint against him/her.</p><p>Feel free to reach out if you have any questions.</p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department.</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(149, 13, 'es', 'Complaint Resend', '<p>Hola,</p><p>Bienvenido a {app_name}</p><p>Departamento de Recursos Humanos/Empresa para enviar una carta de reclamaciones.</p><p>Estimado {nombre_reclamaci??n}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Me gustar??a informar de un conflicto entre usted y la otra persona. Ha habido varios incidentes en los ??ltimos d??as, y siento que ha llegado el momento de denunciar una queja formal contra ??l.</span></p><p>Si??ntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Departamento de Recursos Humanos.</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(150, 13, 'fr', 'Complaint Resend', '<p>Salut,</p><p>Bienvenue dans { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Minist??re / entreprise des RH pour envoyer une lettre de plainte.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Cher { nom_plainte }</span></p><p>Je voudrais signaler un conflit entre vous et lautre personne. Il y a eu plusieurs incidents au cours des derniers jours, et je pense quil est temps de signaler une plainte officielle contre lui.</p><p>N h??sitez pas ?? nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>D??partement des RH.</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(151, 13, 'it', 'Complaint Resend', '<p>Ciao,</p><p>Benvenuti in {app_name}</p><p>HR dipartimenta/azienda per inviare la lettera dei reclami.</p><p>Caro {nome_denuncia}</p><p>Vorrei segnalare un conflitto tra lei e l altra persona. Ci sono stati diversi incidenti negli ultimi giorni e sento che il suo ?? il momento di denunciare una denuncia formale contro di lui.</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p>Riguardo,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span></p><p>{app_url}</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(152, 13, 'ja', 'Complaint Resend', '<p>??????????????????</p><p>{app_name} ???????????????</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">??????????????????????????????????????? HR ?????? / ?????????</span></p><p>{ complaint_name} ??? Dear ???????????????</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</span></p><p>???????????????????????????????????????????????????????????????</p><p>??????????????????????????????</p><p>????????????</p><p>HR ??????</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(153, 13, 'nl', 'Complaint Resend', '<p>Hallo,</p><p>Welkom bij { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelings/bedrijf om klachten brief te sturen.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Geachte { klacht_naam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ik zou een conflict willen melden tussen u en de andere persoon. Er zijn de afgelopen dagen verschillende incidenten geweest en ik vind dat het tijd is om een formele klacht tegen hem/haar in te dienen.</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling.</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(154, 13, 'pl', 'Complaint Resend', '<p>Witam,</p><p>Witamy w aplikacji {app_name }</p><p>Dzia?? kadr/firma, aby wys??a?? reklamacje.</p><p>Szanowny {skarga }</p><p>Chcia??bym zg??osi?? konflikt mi??dzy tob?? a drug?? osob??. W ci??gu ostatnich kilku dni dosz??o do kilku incydent??w i uwa??am, ??e nadszed?? czas, aby zg??osi?? przeciwko nim formaln?? skarg??.</p><p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dzi??kuj??,</span></p><p>W odniesieniu do</p><p>Dzia?? HR.</p><p>{company_name }</p><p>{app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(155, 13, 'ru', 'Complaint Resend', '<p>????????????.</p><p>?????? ???????????????????????? { app_name }</p><p>?????????? ????????????/???????????????? ?????? ?????????????????????? ???????????? ?? ????????????????.</p><p>?????????????????? { ??????-???????????? }</p><p>?? ?????????? ???? ???????????????? ?? ?????????????????? ?????????? ???????? ?? ???????????? ??????????????????. ???? ?????????????????? ?????????????????? ???????? ?????????????????? ?????????????????? ????????????????????, ?? ?? ????????????, ?????? ?????????????? ?????????? ?????? ????????, ?????????? ???????????????? ???? ?????????????????????? ???????????? ???????????? ????????.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">??????????????.</span></p><p>?? ??????????????????,</p><p>?????????? ????????????.</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(156, 13, 'pt', 'Complaint Resend', '<p style=\"\"><span style=\"font-size: 14.4px;\">Oi,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">HR department/empresa para enviar carta de reclama????es.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Querido {reclamnome_}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Eu gostaria de relatar um conflito entre voc?? e a outra pessoa. Houve v??rios incidentes ao longo dos ??ltimos dias, e eu sinto que o seu ?? tempo de relatar uma queixa formal contra him/her.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Sinta-se ?? vontade para alcan??ar fora se voc?? tiver alguma d??vida.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p style=\"\"><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Departamento de RH.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{company_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{app_url}</span></p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(157, 14, 'ar', 'Leave Action Send', '<p>?????????????? : \" ?????????? ?????????????? ?????????????? / ???????????? ???????????? ?????????? ???????????? ?????? { leave_status } ?????????? ???? ?????????? \".</p><p>?????????? ?? { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ?????? { leave_status } ?????? ?????? ???????? { leave_???????? } ???? { leave_start_date } ?????? { leave_end_date }. { total_leave_y???????? } ???????? ?????? { leave_status } ?????? ???????????? ?????????? ???? ?????? { leave_???????? }.</p><p>???????? ???????? ???????? ???? ???????????? ???? ?????????????? ?????????????? ???? ???? ???????? ???????? ???????? ?????? ???? ?????????? ???????????? ???? ?????????? ???? ?????????? ?????????? ???????????? ???????? ???????? ?????? ?????? ?????? ?????????????? ???? ?????????????? ???????? ??????????.</p><p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p><p>???????? ????</p><p>Regards,</p><p>?????????? ?????????????? ?????????????? ??</p><p>{ app_name }</p><p>{ app_url }</p><div><br></div>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(158, 14, 'da', 'Leave Action Send', '<p>Emne: \" HR-afdeling / virksomhed, der skal sende godkendelsesbrev til { leave_status } en ferie eller orlov \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hej, { leave_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jeg har { leave_status } din orlov-anmodning for { leave_reason } fra { leave_start_date } til { leave_end_date }. { total_leave_days } dage Jeg har { leave_status } din anmodning om { leave_reason }.</p><p>Vi beder dig om at f??rdigg??re alt dit udest??ende arbejde eller et andet vigtigt sp??rgsm??l, s?? virksomheden ikke st??r over for nogen tab eller problemer under dit frav??r. Vi s??tter pris p?? Deres bet??nksomhed, for at informere os godt p?? forh??nd.</p><p>Du er velkommen til at r??kke ud, hvis du har nogen sp??rgsm??l.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Tak.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span></p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(159, 14, 'de', 'Leave Action Send', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um den Zulassungsbescheid an {leave_status} einen Urlaub oder Urlaub zu schicken \".</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {leave_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ich habe {leave_status} Ihre Urlaubsanforderung f??r {leave_reason} von {leave_start_date} bis {leave_end_date}. {total_leave_days} Tage Ich habe {leave_status} Ihre Urlaubs-Anfrage f??r {leave_reason}.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Wir bitten Sie, Ihre gesamte anstehende Arbeit oder ein anderes wichtiges Thema abzuschlie??en, so dass das Unternehmen w??hrend Ihrer Abwesenheit keinerlei Verlust oder kein Problem zu bew??ltigen hat. Wir freuen uns ??ber Ihre Nachdenklichkeit, um uns im Vorfeld gut zu informieren.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">F??hlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(160, 14, 'en', 'Leave Action Send', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject : \"HR department/company to send approval letter to {leave_status} a vacation or leave\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">???Hi ,{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I have {leave_status} your leave request for&nbsp; {leave_reason} from {leave_start_date} to {leave_end_date}. {total_leave_days}\n days I have&nbsp; {leave_status} your leave request for {leave_reason}.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We request you to complete all your pending work or any other important issue so that the company does not face any any loss or problem during your absence. We appreciate your thoughtfulness to inform us well in advance.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Thank You,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">HR Department,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(161, 14, 'es', 'Leave Action Send', '<p>Asunto: \" Departamento de RR.HH./compa????a para enviar la carta de aprobaci??n a {leave_status} unas vacaciones o vacaciones \".</p><p>Hi, {nombre_archivo}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tengo {leave_status} la solicitud de licencia para {leave_reason} de {leave_start_date} a {leave_end_date}. {total_leave_days} d??as tengo {leave_status} la solicitud de licencia para {leave_reason}.</p><p>Le solicitamos que complete todos sus trabajos pendientes o cualquier otro asunto importante para que la empresa no se enfrente a ninguna p??rdida o problema durante su ausencia. Agradecemos su consideraci??n para informarnos con mucha antelaci??n.</p><p>Si??ntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(162, 14, 'fr', 'Leave Action Send', '<p>Objet: \" Service des ressources humaines /entreprise pour envoyer une lettre d approbation ?? { leave_status } un cong?? annuel ou un cong?? \".</p><p>Salut, { nom_onde }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; J ai { leave_status } votre demande de permission pour { leave_reason } de { leave_start_date } ?? { leave_end_date }. { total_leave_days } jours, j ai { leave_status } votre demande de cong?? pour { leave_reason }.</span></p><p>Nous vous demandons de remplir tous vos travaux en cours ou toute autre question importante afin que l entreprise ne soit pas confront??e ?? une perte ou ?? un probl??me pendant votre absence. Nous appr??cions votre attention pour nous informer longtemps ?? l avance.</p><p>N h??sitez pas ?? nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>D??partement des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(163, 14, 'it', 'Leave Action Send', '<p>Oggetto: \" HR department /company per inviare lettera di approvazione a {leave_status} una vacanza o un congedo \".</p><p>Ciao, {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ho {leave_status} la tua richiesta di permesso per {leave_ragione} da {leave_start_date} a {leave_end_date}. {total_leave_days} giorni I ho {leave_status} la tua richiesta di permesso per {leave_ragione}.</p><p>Ti richiediamo di completare tutte le tue lavorazioni in sospeso o qualsiasi altra questione importante in modo che lazienda non faccia alcuna perdita o problema durante la tua assenza. Apprezziamo la vostra premura per informarci bene in anticipo.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Sentiti libero di raggiungere se hai domande.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span></p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(164, 14, 'ja', 'Leave Action Send', '<p>?????? : \" ?????????????????? { leave_status} ???????????????????????????????????????????????????????????? / ?????????</p><p>?????????????????? {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { leave_start_date} ?????? {leave_end_date}????????? { leave_reason} { leave_reason} { leave_status} { leave_status } { leave_status } { total_leave_status } { leave_reason } { leave_reason} ?????????????????????????????????????????????????????????????????????</p><p>??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????</p><p>???????????????????????????????????????????????????????????????</p><p>??????????????????????????????</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">????????????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR ??????</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(165, 14, 'nl', 'Leave Action Send', '<p>Onderwerp: \" HR-afdeling/bedrijf om een goedkeuringsbrief te sturen naar { leave_status } een vakantie of verlof \".</p><p>Hallo, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ik heb { leave_status } uw verzoek om verlof voor { leave_reason } van { leave_start_date } aan { leave_end_date }. { total_leave_days } dagen Ik heb { leave_status } uw verzoek om verlof voor { leave_reason }.</p><p>Wij vragen u om al uw lopende werk of een andere belangrijke kwestie, zodat het bedrijf geen verlies of probleem tijdens uw afwezigheid geconfronteerd. Wij waarderen uw bedachtzaamheid om ons van tevoren goed te informeren.</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(166, 14, 'pl', 'Leave Action Send', '<p>Temat: \" Dzia?? HR /firma, aby wys??a?? list zatwierdzaj??cy do {leave_status } urlop lub urlop \".</p><p>Cze????, {leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mam {leave_status } ????danie pozostania dla {leave_reason } od {leave_start_date } do {leave_end_date }. {total_leave_days } dni mam {leave_status } ????danie opuszczenia u??ytkownika dla {leave_reason }.</p><p>Prosimy o wype??nienie wszystkich oczekuj??cych prac lub innych wa??nych spraw, tak aby firma nie boryka??a si?? z ??adn?? strat?? lub problemem w czasie Twojej nieobecno??ci. Doceniamy twoj?? przemy??lno????, aby poinformowa?? nas z wyprzedzeniem.</p><p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p><p>Dzi??kuj??,</p><p>W odniesieniu do</p><p>Dzia?? HR,</p><p>{app_name }</p><p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(167, 14, 'ru', 'Leave Action Send', '<p>????????: \" ?????????? ????????????/???????????????? ?????? ???????????????? ???????????? ?? ???????????????????????? ?? { leave_status } ???????????? ?????? ???????????? \".</p><p>????????????, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ?? ???????? ???????? { leave_status } ?????? ???????????? ???? ???????????? ?????? { leave_reason } ???? { leave_start_date } ?? { leave_end_date }. { total_leave_days } ???????? { leave_status } ?????? ???????????? ???? ???????????? ?????? { leave_reason }.</p><p>???? ???????????? ?????? ?????????????????? ?????? ???????? ?????????????????? ???????????? ?????? ?????????? ???????????? ???????????? ????????????, ?????????? ???????????????? ???? ???????????????????????? ?? ????????????-???????? ?????????????? ?????? ?????????????????? ???? ?????????? ???????????? ????????????????????. ???? ?????????? ???????? ????????????????????????, ?????????? ???????????????? ?????? ??????????????.</p><p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p><p>??????????????.</p><p>?? ??????????????????,</p><p>?????????? ????????????,</p><p>{ ??????_?????????????????? }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(168, 14, 'pt', 'Leave Action Send', '<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento de RH /empresa para enviar carta de aprova????o para {leave_status} f??rias ou licen??a \".</span></p><p><span style=\"font-size: 14.4px;\">Oi, {leave_name}</span></p><p><span style=\"font-size: 14.4px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicita????o de licen??a para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicita????o de licen??a para {leave_reason}.</span></p><p><span style=\"font-size: 14.4px;\">Solicitamos que voc?? complete todo o seu trabalho pendente ou qualquer outra quest??o importante para que a empresa n??o enfrente qualquer perda ou problema durante a sua aus??ncia. Agradecemos a sua atenciosidade para nos informar com bastante anteced??ncia.</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se ?? vontade para alcan??ar fora se voc?? tiver alguma d??vida.</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Obrigado,</span><br></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(169, 15, 'ar', 'Payslip Send', '<p>?????????????? : \" ?????????? ?????????????? ?????????????? / ???????????? ???????????? ???????? ???? ???????? ???????????? ???????????????????? ???? ?????? ?????????? ??????????. \"</p><p>?????????? ?? { paysp_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; ?????????? ???? ???????? ?????? ???????????? ???????????????????? ???????? ?????????? ???????????? ?????? payalp ?????????????? ?????? { payplip_salary_?????? }. ???????? ???????????? ?????? ???????????????? ???? ???????? : { payspp_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</span></p><p>Regards,</p><p>?????????? ?????????????? ?????????????? ??</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(170, 15, 'da', 'Payslip Send', '<p>Emne: \" HR-afdeling / Kompagni til at sende l??nsedler via e-mail p?? tidspunktet for bekr??ftelsen af l??nsedlerne. \"</p><p>K??re, { payslip_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; H??ber denne e-mail finder dig godt! Se vedh??ftet payseddel for { payslip_salary_month }. Klik p?? knappen nedenfor: { payslip_url }</p><p>Du er velkommen til at r??kke ud, hvis du har nogen sp??rgsm??l.</p><p>Med venlig hilsen</p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(171, 15, 'de', 'Payslip Send', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um payslips per E-Mail zum Zeitpunkt der Best??tigung des Auszahlungsscheins zu senden. \"</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrte, {payslip_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie den angeh??ngten payslip f??r {payslip_salary_month}. Klicken Sie einfach auf die folgende Schaltfl??che: {payslip_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">F??hlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(172, 15, 'en', 'Payslip Send', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject :&nbsp; \" HR&nbsp; Department / Company to send&nbsp; payslips by email at time of confirmation of payslip. \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">???Dear ,{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; Hope this email finds you well! Please see attached payslip for {payslip_salary_month} . Simply click on the button below :&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to&nbsp; reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards ,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(173, 15, 'es', 'Payslip Send', '<p>Asunto: \" Departamento de Recursos Humanos/Empresa para enviar n??minas por correo electr??nico en el momento de la confirmaci??n de payslip. \"</p><p>Estimado, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ??Espero que este email le encuentre bien! Consulte la ficha de pago adjunta para {payslip_salary_month}. Simplemente haga clic en el bot??n de abajo: {payslip_url}</p><p>Si??ntase libre de llegar si usted tiene alguna pregunta.</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(174, 15, 'fr', 'Payslip Send', '<p>Objet: \" HR Department / Company to send payborderby email at time of confirmation of payslip. \"</p><p>Cher, { nom_d??calage }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; J esp??re que ce courriel vous trouve bien ! Veuillez consulter le bordereau de paiement ci-joint pour { payement_salary_month }. Cliquez simplement sur le bouton ci-dessous: { payslip_url }</p><p>N h??sitez pas ?? nous contacter si vous avez des questions.</p><p>Regards,</p><p>D??partement des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(175, 15, 'it', 'Payslip Send', '<p>Oggetto: \" HR Department / Company per inviare busta paga via email al momento della conferma della busta paga \".</p><p>Caro, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Spero che questa email ti trovi bene! Si prega di consultare la busta paga per {payslip_salary_month}. Semplicemente clicca sul pulsante sottostante: {payslip_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Riguardo,</p><p>Dipartimento HR,</p><p>{app_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(176, 15, 'ja', 'Payslip Send', '<p>?????? : \" ?????????????????????????????????????????????????????????????????????????????????????????? HR ?????? / ?????????</p><p>{ payslip_name} ?????????????????????</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ?????? E ?????????????????????????????????????????? {payslip_salary_month} ??????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????? { payslip_url} ????????????????????????????????????</p><p>???????????????????????????????????????????????????????????????</p><p>????????????</p><p>HR ??????</p><p>{app_name}</p><p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(177, 15, 'nl', 'Payslip Send', '<p>Onderwerp: \" HR Department/Company om betalingen te sturen per e-mail op het moment van de bevestiging van de payslip. \"</p><p>Schat, { payslip_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Hoop dat deze e-mail je goed vindt! Zie bijgevoegde payslip voor { payslip_salary_month }. Klik gewoon op de knop hieronder: { payslip_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Voel je vrij om uit te reiken als je vragen hebt.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betreft:</span></p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(178, 15, 'pl', 'Payslip Send', '<p>Temat: \" Dzia?? HR/Firma, aby wys??a?? payslips poczt?? elektroniczn?? w momencie potwierdzenia payslip. \"</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Szanowny, {payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Mam nadziej??, ??e ta wiadomo???? znajdzie Ci?? dobrze! Patrz za????czony payslip dla {payslip_salary_month }. Wystarczy klikn???? na przycisk poni??ej: {payslip_url }</p><p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p><p>W odniesieniu do</p><p>Dzia?? HR,</p><p>{app_name }</p><p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(179, 15, 'ru', 'Payslip Send', '<p>????????: \" ?????????? ????????????/???????????????? ?????? ???????????????? ???????????? ???? ?????????????????????? ?????????? ???? ?????????? ?????????????????????????? ???????????????? \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">??????????????????, { payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; ??????????????, ?????? ?????????????????????? ???????????? ???????????? ?????? ????????????! ????. ?????????????????? ???????????? ?????? { payslip_salary_month }. ???????????? ?????????????? ???? ???????????? ????????: { payslip_url }</p><p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p><p>?? ??????????????????,</p><p>?????????? ????????????,</p><p>{ ??????_?????????????????? }</p><p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(180, 15, 'pt', 'Payslip Send', '<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento / Companhia de RH para enviar payslips por e-mail a hora da confirma????o de payslip. \"</span></p><p><span style=\"font-size: 14.4px;\">Querido, {payslip_name}</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Espero que este e-mail encontre voc?? bem! Por favor, consulte o payslip anexo para {payslip_salary_month}. Basta clicar no bot??o abaixo: {payslip_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se ?? vontade para alcan??ar fora se voc?? tiver alguma d??vida.</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(181, 16, 'ar', 'Promotion Send', '<p>Subject : -HR ?????????? / ???????????? ???????????? ?????????? ?????????? ?????? ?????????? ?????????????? ????????????.</p>\n                    <p>?????????? { employee_name },</p>\n                    <p>?????????? ?????? ???????????? ?????? { promotion_designation } { promotion_title } ???????????? { promotion_date }.</p>\n                    <p>?????????????? ???????? ?????????? ?????????????? ???????????? ?????????? ?????????? ???????? ???? ?????????? ????????????. ?????????? ???? ???????? ???????? ???????????????? ?????????????? ???? ??????????????.</p>\n                    <p>???????????? ?????? ?????????????? ???? ???????????? ???? ???????????????? ?? ???????????????? !</p>\n                    <p>???????? ???????? ?? ???????????? ?????? ???????????? ????????????.</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ????</p>\n                    <p>Regards,</p>\n                    <p>?????????? ?????????????? ?????????????? ??</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(182, 16, 'da', 'Promotion Send', '<p>Om: HR-afdelingen / Virksomheden om at sende en lyk&oslash;nskning til jobfremst&oslash;d.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Tillykke med din forfremmelse til { promotion_designation } { promotion_title } effektiv { promotion_date }.</p>\n                    <p>Vi vil fortsat forvente konsekvens og store resultater fra Dem i Deres nye rolle. Vi h&aring;ber, at De vil foreg&aring; med et godt eksempel for de &oslash;vrige ansatte i organisationen.</p>\n                    <p>Vi &oslash;nsker Dem held og lykke med Deres fremtidige optr&aelig;den, og tillykke!</p>\n                    <p>Endnu en gang tillykke med den nye holdning.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(183, 16, 'de', 'Promotion Send', '<p>Betrifft: -Personalabteilung/Unternehmen, um einen Gl&uuml;ckwunschschreiben zu senden.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Herzlichen Gl&uuml;ckwunsch zu Ihrer Werbeaktion an {promotion_designation} {promotion_title} wirksam {promotion_date}.</p>\n                    <p>Wir werden von Ihnen in Ihrer neuen Rolle weiterhin Konsistenz und gro&szlig;e Ergebnisse erwarten. Wir hoffen, dass Sie ein Beispiel f&uuml;r die anderen Mitarbeiter der Organisation setzen werden.</p>\n                    <p>Wir w&uuml;nschen Ihnen viel Gl&uuml;ck f&uuml;r Ihre zuk&uuml;nftige Leistung, und gratulieren!</p>\n                    <p>Nochmals herzlichen Gl&uuml;ckwunsch zu der neuen Position.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(184, 16, 'en', 'Promotion Send', '<p>&nbsp;</p>\n                    <p><strong>Subject:-HR department/Company to send job promotion congratulation letter.</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Congratulations on your promotion to {promotion_designation} {promotion_title} effective {promotion_date}.</p>\n                    <p>We shall continue to expect consistency and great results from you in your new role. We hope that you will set an example for the other employees of the organization.</p>\n                    <p>We wish you luck for your future performance, and congratulations!.</p>\n                    <p>Again, congratulations on the new position.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(185, 16, 'es', 'Promotion Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de felicitaci&oacute;n de promoci&oacute;n de empleo.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>Felicidades por su promoci&oacute;n a {promotion_designation} {promotion_title} efectiva {promotion_date}.</p>\n                    <p>Seguiremos esperando la coherencia y los grandes resultados de ustedes en su nuevo papel. Esperamos que usted ponga un ejemplo para los otros empleados de la organizaci&oacute;n.</p>\n                    <p>Le deseamos suerte para su futuro rendimiento, y felicitaciones!.</p>\n                    <p>Una vez m&aacute;s, felicidades por la nueva posici&oacute;n.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(186, 16, 'fr', 'Promotion Send', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de f&eacute;licitations pour la promotion de lemploi.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>F&eacute;licitations pour votre promotion &agrave; { promotion_d&eacute;signation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Nous continuerons &agrave; vous attendre &agrave; une coh&eacute;rence et &agrave; de grands r&eacute;sultats de votre part dans votre nouveau r&ocirc;le. Nous esp&eacute;rons que vous trouverez un exemple pour les autres employ&eacute;s de lorganisation.</p>\n                    <p>Nous vous souhaitons bonne chance pour vos performances futures et f&eacute;licitations !</p>\n                    <p>Encore une fois, f&eacute;licitations pour le nouveau poste.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(187, 16, 'it', 'Promotion Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare la lettera di congratulazioni alla promozione del lavoro.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>Complimenti per la tua promozione a {promotion_designation} {promotion_title} efficace {promotion_date}.</p>\n                    <p>Continueremo ad aspettarci coerenza e grandi risultati da te nel tuo nuovo ruolo. Ci auguriamo di impostare un esempio per gli altri dipendenti dellorganizzazione.</p>\n                    <p>Ti auguriamo fortuna per le tue prestazioni future, e complimenti!.</p>\n                    <p>Ancora, complimenti per la nuova posizione.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(188, 16, 'ja', 'Promotion Send', '<p>??????:-HR ??????/?????????????????????????????????????????????????????????</p>\n                    <p>{ employee_name} ?????????????????????</p>\n                    <p>{promotion_designation } { promotion_title} {promotion_date} ?????????????????????????????????????????????????????????</p>\n                    <p>?????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????</p>\n                    <p>???????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>?????????????????????????????????????????????????????????</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>???????????????</p>\n                    <p>????????????</p>\n                    <p>HR ??????</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(189, 16, 'nl', 'Promotion Send', '<p>Betreft: -HR-afdeling/Bedrijf voor het versturen van de aanbevelingsbrief voor taakpromotie.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Gefeliciteerd met uw promotie voor { promotion_designation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Wij zullen de consistentie en de grote resultaten van u in uw nieuwe rol blijven verwachten. Wij hopen dat u een voorbeeld zult stellen voor de andere medewerkers van de organisatie.</p>\n                    <p>Wij wensen u geluk voor uw toekomstige prestaties, en gefeliciteerd!.</p>\n                    <p>Nogmaals, gefeliciteerd met de nieuwe positie.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(190, 16, 'pl', 'Promotion Send', '<p>Temat: -Dzia?? kadr/Firma w celu wys??ania listu gratulacyjnego dla promocji zatrudnienia.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Gratulacje dla awansowania do {promotion_designation } {promotion_title } efektywnej {promotion_date }.</p>\n                    <p>W dalszym ci??gu oczekujemy konsekwencji i wspania??ych wynik&oacute;w w Twojej nowej roli. Mamy nadziej??, ??e postawicie na przyk??ad dla pozosta??ych pracownik&oacute;w organizacji.</p>\n                    <p>??yczymy powodzenia dla przysz??ych wynik&oacute;w, gratulujemy!.</p>\n                    <p>Jeszcze raz gratulacje na nowej pozycji.</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(191, 16, 'ru', 'Promotion Send', '<p>????????: -HR ??????????/???????????????? ?????? ???????????????? ???????????? ?? ??????????????????????????.</p>\n                    <p>?????????????????? { employee_name },</p>\n                    <p>?????????????????????? ?????? ?? ???????????????????????? ?? { promotion_designation } { promotion_title } ?????????????????????? { promotion_date }.</p>\n                    <p>???? ?????????? ?? ???????????? ?????????????? ???? ?????? ???????????????????????? ?? ?????????????? ?????????????????????? ?? ?????????? ?????????? ????????. ???? ????????????????, ?????? ???? ?????????????? ???????????????? ?????? ???????????? ?????????????????????? ??????????????????????.</p>\n                    <p>???????????? ?????? ?????????? ?? ????????????????????????!</p>\n                    <p>?????? ?????? ???????????????????? ?? ?????????? ????????????????.</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(192, 16, 'pt', 'Promotion Send', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(193, 17, 'ar', 'Resignation Send', '<p>Subject :-?????? ?????????????? ?????????????? / ???????????? ???????????? ???????? ????????????????.</p>\n                    <p>?????????? { assign_user } ??</p>\n                    <p>?????? ?????? ?????????? ?????????? ???????????? ???? ?????????? ?????????? ?????????????? ?????????? ???????????????? ???? { notice_date } ?????? { resignation_date } ???? ?????????? ???????????? ??????????.</p>\n                    <p>?????? ?????? ???? ?????????? ?????????? ?????????? ???????? ?? ?????????????????? ???? ???????????? ?? ?????? ???? ?????????? ?????? ???????? ?????? ???? ???????? ?????????????? ???? ????????????????. ?????? ???????? ?????? ?????????????? ?? ???????? ???????????? ?????? ???????? ?????????????? ?????????? ?????????????? ?????????? ???? ?????????? ??????????????????.</p>\n                    <p>???????? ?????? ?????? ???????? ?????? ???????????? ???????????????? ???????????? ?????????? ???? ?????? ??????????????.</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ????</p>\n                    <p>Regards,</p>\n                    <p>?????????? ?????????????? ?????????????? ??</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(194, 17, 'da', 'Resignation Send', '<p>Om: HR-afdelingen / Kompagniet, for at sende en opsigelse.</p>\n                    <p>K&aelig;re { assign_user },</p>\n                    <p>Det er med stor beklagelse, at jeg formelt anerkender modtagelsen af din opsigelsesmeddelelse p&aring; { notice_date } til { resignation_date } er din sidste arbejdsdag</p>\n                    <p>Det har v&aelig;ret en forn&oslash;jelse at arbejde sammen med Dem, og p&aring; vegne af teamet vil jeg &oslash;nske Dem det bedste i alle Deres fremtidige bestr&aelig;belser. Med dette brev kan du finde en informationspakke med detaljerede oplysninger om tilbagetr&aelig;delsesprocessen.</p>\n                    <p>Endnu en gang tak for Deres positive holdning og h&aring;rde arbejde i alle disse &aring;r.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(195, 17, 'de', 'Resignation Send', '<p>Betreff: -Personalabteilung/Firma, um R&uuml;ckmeldungsschreiben zu senden.</p>\n                    <p>Sehr geehrter {assign_user},</p>\n                    <p>Es ist mit gro&szlig;em Bedauern, dass ich den Eingang Ihrer R&uuml;cktrittshinweis auf {notice_date} an {resignation_date} offiziell best&auml;tige, ist Ihr letzter Arbeitstag.</p>\n                    <p>Es war eine Freude, mit Ihnen zu arbeiten, und im Namen des Teams m&ouml;chte ich Ihnen w&uuml;nschen, dass Sie in allen Ihren zuk&uuml;nftigen Bem&uuml;hungen am besten sind. In diesem Brief finden Sie ein Informationspaket mit detaillierten Informationen zum R&uuml;cktrittsprozess.</p>\n                    <p>Vielen Dank noch einmal f&uuml;r Ihre positive Einstellung und harte Arbeit all die Jahre.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(196, 17, 'en', 'Resignation Send', '<p ><b>Subject:-HR department/Company to send resignation letter .</b></p>\n                    <p ><b>Dear {assign_user},</b></p>\n                    <p >It is with great regret that I formally acknowledge receipt of your resignation notice on {notice_date} to {resignation_date} is your final day of work. </p>\n                    <p >It has been a pleasure working with you, and on behalf of the team, I would like to wish you the very best in all your future endeavors. Included with this letter, please find an information packet with detailed information on the resignation process. </p>\n                    <p>Thank you again for your positive attitude and hard work all these years.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(197, 17, 'es', 'Resignation Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de renuncia.</p>\n                    <p>Estimado {assign_user},</p>\n                    <p>Es con gran pesar que recibo formalmente la recepci&oacute;n de su aviso de renuncia en {notice_date} a {resignation_date} es su &uacute;ltimo d&iacute;a de trabajo.</p>\n                    <p>Ha sido un placer trabajar con usted, y en nombre del equipo, me gustar&iacute;a desearle lo mejor en todos sus esfuerzos futuros. Incluido con esta carta, por favor encuentre un paquete de informaci&oacute;n con informaci&oacute;n detallada sobre el proceso de renuncia.</p>\n                    <p>Gracias de nuevo por su actitud positiva y trabajo duro todos estos a&ntilde;os.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(198, 17, 'fr', 'Resignation Send', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de d&eacute;mission.</p>\n                    <p>Cher { assign_user },</p>\n                    <p>Cest avec grand regret que je reconnais officiellement la r&eacute;ception de votre avis de d&eacute;mission sur { notice_date } &agrave; { resignation_date } est votre dernier jour de travail.</p>\n                    <p>Cest un plaisir de travailler avec vous, et au nom de l&eacute;quipe, jaimerais vous souhaiter le meilleur dans toutes vos activit&eacute;s futures. Inclus avec cette lettre, veuillez trouver un paquet dinformation contenant des informations d&eacute;taill&eacute;es sur le processus de d&eacute;mission.</p>\n                    <p>Je vous remercie encore de votre attitude positive et de votre travail acharne durant toutes ces ann&eacute;es.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(199, 17, 'it', 'Resignation Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di dimissioni.</p>\n                    <p>Caro {assign_user},</p>\n                    <p>&Egrave; con grande dispiacere che riconosca formalmente la ricezione del tuo avviso di dimissioni su {notice_date} a {resignation_date} &egrave; la tua giornata di lavoro finale.</p>\n                    <p>&Egrave; stato un piacere lavorare con voi, e a nome della squadra, vorrei augurarvi il massimo in tutti i vostri futuri sforzi. Incluso con questa lettera, si prega di trovare un pacchetto informativo con informazioni dettagliate sul processo di dimissioni.</p>\n                    <p>Grazie ancora per il vostro atteggiamento positivo e duro lavoro in tutti questi anni.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(200, 17, 'ja', 'Resignation Send', '<p>??????:-HR ??????/????????????????????????????????????</p>\n                    <p>{assign_user} ??????????????????????????????</p>\n                    <p>{ notice_date} ??????????????????????????????????????? { resignation_date} ??????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>??????????????????????????????????????????????????????????????????????????????</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>???????????????</p>\n                    <p>????????????</p>\n                    <p>HR ??????</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(201, 17, 'nl', 'Resignation Send', '<p>Betreft: -HR-afdeling/Bedrijf om ontslagbrief te sturen.</p>\n                    <p>Geachte { assign_user },</p>\n                    <p>Het is met grote spijt dat ik de ontvangst van uw ontslagbrief op { notice_date } tot { resignation_date } formeel de ontvangst van uw laatste dag van het werk bevestigt.</p>\n                    <p>Het was een genoegen om met u samen te werken, en namens het team zou ik u het allerbeste willen wensen in al uw toekomstige inspanningen. Vermeld bij deze brief een informatiepakket met gedetailleerde informatie over het ontslagproces.</p>\n                    <p>Nogmaals bedankt voor uw positieve houding en hard werken al die jaren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(202, 17, 'pl', 'Resignation Send', '<p>Temat: -Dzia?? HR/Firma do wysy??ania listu rezygnacyjnego.</p>\n                    <p>Drogi u??ytkownika {assign_user },</p>\n                    <p>Z wielkim ??alem, ??e oficjalnie potwierdzam otrzymanie powiadomienia o rezygnacji w dniu {notice_date } to {resignation_date } to tw&oacute;j ostatni dzie?? pracy.</p>\n                    <p>Z przyjemno??ci?? wsp&oacute;??pracujemy z Tob??, a w imieniu zespo??u chcia??bym ??yczy?? Wam wszystkiego najlepszego we wszystkich swoich przysz??ych przedsi??wzi??ciu. Do????czone do tego listu prosimy o znalezienie pakietu informacyjnego ze szczeg&oacute;??owymi informacjami na temat procesu dymisji.</p>\n                    <p>Jeszcze raz dzi??kuj?? za pozytywne nastawienie i ci????k?? prac?? przez te wszystkie lata.</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(203, 17, 'ru', 'Resignation Send', '<p>????????: -HR ??????????/???????????????? ?????????????????? ???????????? ???? ????????????????.</p>\n                    <p>?????????????????? ???????????????????????? { assign_user },</p>\n                    <p>?? ?????????????? ???????????????????? ?? ???????????????????? ?????????????????????? ?????????????????? ???????????? ?????????????????????? ???? ???????????????? { notice_date } ?? { resignation_date }-?????? ?????? ?????????????????? ???????? ????????????.</p>\n                    <p>?? ???????? ???????? ?????????????? ????????????????, ?? ???? ?????????? ?????????????? ?? ?????????? ???? ????# ???????????? ?????? ???????????? ?????????????? ???? ???????? ?????????? ?????????????? ????????????????????. ?? ???????? ???????????? ???? ???????????? ?????????? ???????????????????????????? ?????????? ?? ?????????????????? ?????????????????????? ???? ????????????????.</p>\n                    <p>?????? ?????? ?????????????? ???? ???????? ???????????????????? ?????????????????? ?? ???????????????????? ?????? ?????? ????????.</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(204, 17, 'pt', 'Resignation Send', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {assign_user},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">&Eacute; com grande pesar que reconhe&ccedil;o formalmente o recebimento do seu aviso de demiss&atilde;o em {notice_date} a {resignation_date} &eacute; o seu dia final de trabalho.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Foi um prazer trabalhar com voc&ecirc;, e em nome da equipe, gostaria de desej&aacute;-lo o melhor em todos os seus futuros empreendimentos. Inclu&iacute;dos com esta carta, por favor, encontre um pacote de informa&ccedil;&otilde;es com informa&ccedil;&otilde;es detalhadas sobre o processo de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado novamente por sua atitude positiva e trabalho duro todos esses anos.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(205, 18, 'ar', 'Termination Send', '<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\"><span style=\"font-size: 12pt; white-space: pre-wrap;\">Subject :-?????????? / ???????? HR ???????????? ?????????? ??????????. ?????????? { </span><span style=\"white-space: pre-wrap;\">employee_termination_name</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ?? ?????? ?????????????? ???????????? ?????????????? ?????? ???????? ???? ???????????? ???? ???? ???????????? ???????? ???? ???????????????? ???? ?????????????? : ?????????? ?????????????? : { </span><span style=\"white-space: pre-wrap;\">notice_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ?????????? ?????????????? : { </span><span style=\"white-space: pre-wrap;\">termination_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ?????? ?????????????? : { termination_type } ???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????. ???????? ???? Regards, ?????????? ?????????????? ?????????????? ?? { app_name }</span></span></span></span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(206, 18, 'da', 'Termination Send', '<p>Emne:-HR-afdelingen / Virksomheden om at sende afslutningstskrivelse.</p>\n                    <p>K&aelig;re { employee_termination_name },</p>\n                    <p>Dette brev er skrevet for at meddele dig, at dit arbejde med vores virksomhed er afsluttet.</p>\n                    <p>Flere oplysninger om oph&aelig;velse:</p>\n                    <p>Adviseringsdato: { notifice_date }</p>\n                    <p>Opsigelsesdato: { termination_date }</p>\n                    <p>Opsigelsestype: { termination_type }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(207, 18, 'de', 'Termination Send', '<p>Betreff: -Personalabteilung/Firma zum Versenden von K&uuml;ndigungsschreiben.</p>\n                    <p>Sehr geehrter {employee_termination_name},</p>\n                    <p>Dieser Brief wird Ihnen schriftlich mitgeteilt, dass Ihre Besch&auml;ftigung mit unserem Unternehmen beendet ist.</p>\n                    <p>Weitere Details zur K&uuml;ndigung:</p>\n                    <p>K&uuml;ndigungsdatum: {notice_date}</p>\n                    <p>Beendigungsdatum: {termination_date}</p>\n                    <p>Abbruchstyp: {termination_type}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(208, 18, 'en', 'Termination Send', '<p><strong>Subject:-HR department/Company to send termination letter.</strong></p>\n                    <p><strong>Dear {employee_termination_name},</strong></p>\n                    <p>This letter is written to notify you that your employment with our company is terminated.</p>\n                    <p>More detail about termination:</p>\n                    <p>Notice Date :{notice_date}</p>\n                    <p>Termination Date:{termination_date}</p>\n                    <p>Termination Type:{termination_type}</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(209, 18, 'es', 'Termination Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de rescisi&oacute;n.</p>\n                    <p>Estimado {employee_termination_name},</p>\n                    <p>Esta carta est&aacute; escrita para notificarle que su empleo con nuestra empresa ha terminado.</p>\n                    <p>M&aacute;s detalles sobre la terminaci&oacute;n:</p>\n                    <p>Fecha de aviso: {notice_date}</p>\n                    <p>Fecha de terminaci&oacute;n: {termination_date}</p>\n                    <p>Tipo de terminaci&oacute;n: {termination_type}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(210, 18, 'fr', 'Termination Send', '<p>Objet: -HR department / Company to send termination letter.</p>\n                    <p>Cher { employee_termination_name },</p>\n                    <p>Cette lettre est r&eacute;dig&eacute;e pour vous aviser que votre emploi aupr&egrave;s de notre entreprise prend fin.</p>\n                    <p>Plus de d&eacute;tails sur larr&ecirc;t:</p>\n                    <p>Date de lavis: { notice_date }</p>\n                    <p>Date de fin: { termination_date}</p>\n                    <p>Type de terminaison: { termination_type }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(211, 18, 'it', 'Termination Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di terminazione.</p>\n                    <p>Caro {employee_termination_name},</p>\n                    <p>Questa lettera &egrave; scritta per comunicarti che la tua occupazione con la nostra azienda &egrave; terminata.</p>\n                    <p>Pi&ugrave; dettagli sulla cessazione:</p>\n                    <p>Data avviso: {notice_data}</p>\n                    <p>Data di chiusura: {termination_date}</p>\n                    <p>Tipo di terminazione: {termination_type}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(212, 18, 'ja', 'Termination Send', '<p>??????:-HR ??????/??????????????????????????????????????????</p>\n                    <p>{ employee_termination_name} ?????????????????????</p>\n                    <p>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>??????????????????????????? :</p>\n                    <p>????????? :{notice_date}</p>\n                    <p>?????????:{termination_date}</p>\n                    <p>???????????????:{termination_type}</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>???????????????</p>\n                    <p>????????????</p>\n                    <p>HR ??????</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(213, 18, 'nl', 'Termination Send', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van afgiftebrief.</p>\n                    <p>Geachte { employee_termination_name },</p>\n                    <p>Deze brief is geschreven om u te melden dat uw werk met ons bedrijf wordt be&euml;indigd.</p>\n                    <p>Meer details over be&euml;indiging:</p>\n                    <p>Datum kennisgeving: { notice_date }</p>\n                    <p>Be&euml;indigingsdatum: { termination_date }</p>\n                    <p>Be&euml;indigingstype: { termination_type }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(214, 18, 'pl', 'Termination Send', '<p>Temat: -Dzia?? kadr/Firma do wysy??ania listu zaka??czego.</p>\n                    <p>Droga {employee_termination_name },</p>\n                    <p>Ten list jest napisany, aby poinformowa?? Ci??, ??e Twoje zatrudnienie z nasz?? firm?? zostaje zako??czone.</p>\n                    <p>Wi??cej szczeg&oacute;??&oacute;w na temat zako??czenia pracy:</p>\n                    <p>Data og??oszenia: {notice_date }</p>\n                    <p>Data zako??czenia: {termination_date }</p>\n                    <p>Typ zako??czenia: {termination_type }</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(215, 18, 'ru', 'Termination Send', '<p>????????: -HR ??????????/???????????????? ?????????????????? ???????????? ?? ??????????????????????.</p>\n                    <p>?????????????????? { employee_termination_name },</p>\n                    <p>?????? ???????????? ????????????????, ?????????? ?????????????????? ?????? ?? ??????, ?????? ???????? ?????????????????????????????? ?? ?????????? ?????????????????? ????????????????????????.</p>\n                    <p>?????????? ?????????????????? ???????????????????? ?? ????????????????????:</p>\n                    <p>???????? ??????????????????????: { notice_date }</p>\n                    <p>???????? ????????????????????: { termination_date }</p>\n                    <p>?????? ????????????????????: { termination_type }</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(216, 18, 'pt', 'Termination Send', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(217, 19, 'ar', 'Transfer Send', '<p>Subject : -HR ?????????? / ???????? ???????????? ???????? ?????? ?????? ???????? ???? ???????? ?????? ??????.</p>\n                    <p>?????????? { transfer_name },</p>\n                    <p>???????? ???????????????? ?????????????? ?? ?????? ?????? ?????????????? ???????????? ???? w.e.f. { transfer_date }.</p>\n                    <p>???????? ?????????????? ???????????? ?????????? ???? ???? { transfer_department } ?????? ???? ?????? { transfer_branch } ???????????? ?????????????? { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ????</p>\n                    <p>Regards,</p>\n                    <p>?????????? ?????????????? ?????????????? ??</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(218, 19, 'da', 'Transfer Send', '<p>Emne:-HR-afdelingen / kompagniet om at sende overf&oslash;rsels brev til en medarbejder fra den ene lokalitet til den anden.</p>\n                    <p>K&aelig;re { transfer_name },</p>\n                    <p>Som Styring af direktiver overf&oslash;res dine serviceydelser w.e.f. { transfer_date }.</p>\n                    <p>Dit nye sted for postering er { transfer_departement } afdeling af { transfer_branch } gren og dato for overf&oslash;rsel { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(219, 19, 'de', 'Transfer Send', '<p>Betreff: -Personalabteilung/Unternehmen, um einen &Uuml;berweisungsschreiben an einen Mitarbeiter von einem Standort an einen anderen zu senden.</p>\n                    <p>Sehr geehrter {transfer_name},</p>\n                    <p>Wie pro Management-Direktiven werden Ihre Dienste &uuml;ber w.e.f. {transfer_date} &uuml;bertragen.</p>\n                    <p>Ihr neuer Ort der Entsendung ist {transfer_department} Abteilung von {transfer_branch} Niederlassung und Datum der &Uuml;bertragung {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(220, 19, 'en', 'Transfer Send', '<p ><b>Subject:-HR department/Company to send transfer letter to be issued to an employee from one location to another.</b></p>\n                    <p ><b>Dear {transfer_name},</b></p>\n                    <p >As per Management directives, your services are being transferred w.e.f.{transfer_date}. </p>\n                    <p >Your new place of posting is {transfer_department} department of {transfer_branch} branch and date of transfer {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(221, 19, 'es', 'Transfer Send', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de transferencia a un empleado de un lugar a otro.</p>\n                    <p>Estimado {transfer_name},</p>\n                    <p>Seg&uacute;n las directivas de gesti&oacute;n, los servicios se transfieren w.e.f. {transfer_date}.</p>\n                    <p>El nuevo lugar de publicaci&oacute;n es el departamento {transfer_department} de la rama {transfer_branch} y la fecha de transferencia {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(222, 19, 'fr', 'Transfer Send', '<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre de transfert &agrave; un employ&eacute; dun endroit &agrave; un autre.</p>\n                    <p>Cher { transfer_name },</p>\n                    <p>Selon les directives de gestion, vos services sont transf&eacute;r&eacute;s dans w.e.f. { transfer_date }.</p>\n                    <p>Votre nouveau lieu daffectation est le d&eacute;partement { transfer_department } de la branche { transfer_branch } et la date de transfert { transfer_date }.</p>\n                    <p>{ description_transfert }.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(223, 19, 'it', 'Transfer Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(224, 19, 'ja', 'Transfer Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(225, 19, 'nl', 'Transfer Send', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van overdrachtsbrief aan een werknemer van de ene plaats naar de andere.</p>\n                    <p>Geachte { transfer_name },</p>\n                    <p>Als per beheerinstructie worden uw services overgebracht w.e.f. { transfer_date }.</p>\n                    <p>Uw nieuwe plaats van post is { transfer_department } van de afdeling { transfer_branch } en datum van overdracht { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(226, 19, 'pl', 'Transfer Send', '<p>Temat:-Dzia?? HR/Firma do wysy??ania listu przelewowego, kt&oacute;ry ma by?? wydany pracownikowi z jednego miejsca do drugiego.</p>\n                    <p>Droga {transfer_name },</p>\n                    <p>Zgodnie z dyrektywami zarz??dzania, Twoje us??ugi s?? przesy??ane w.e.f. {transfer_date }.</p>\n                    <p>Twoje nowe miejsce delegowania to {transfer_department } dzia?? {transfer_branch } ga?????? i data transferu {transfer_date }.</p>\n                    <p>{transfer_description }.</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(227, 19, 'ru', 'Transfer Send', '<p>????????: -HR ??????????/???????????????? ?????? ???????????????? ???????????????????????? ???????????? ???????????????????? ???? ???????????? ?????????? ?? ????????????.</p>\n                    <p>?????????????????? { transfer_name },</p>\n                    <p>?? ???????????????????????? ?? ?????????????????????? ???????????????????? ???????? ???????????? ???????????????????? .ef. { transfer_date }.</p>\n                    <p>?????????? ?????????? ????????????????: { transfer_department} ?????????????????????????? { transfer_branch } ?? ???????? ???????????????? { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(228, 19, 'pt', 'Transfer Send', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(229, 20, 'ar', 'Trip Send', '<p>Subject : -HR ?????????? / ???????? ???????????? ?????????? ????????.</p>\n                    <p>?????????? { employee_name },</p>\n                    <p>?????? ???????????? ???????? ! ???????? ?????? ???????? ?????????????? ???????? ???????????? ?????????? ???? ?????? ?????????? ?????? ???????????? ???? ??????.</p>\n                    <p>???????????? ?????? ?????????????? ???? ?????????????? ?????????????? ???????????? ???????????? ???? ?????????? ?? ?????? ?????? ???????????? ?????? ?????? ?????????????? ?????? ???????? ???????????? ???????????? ???????????????? ???????? ???????????? ????????????????.</p>\n                    <p>???? ???????????? ???????? ???????? ???????? ?????????? ???????? ???? ???????????????? ???????????????????? ???????? ???????????? ?????? ???????????? ?? ???????????? ???????? ?? ???????? ?????????? ???? ?????????????? ??????????????????. ?????? ?????? ?????????? ?? ?????????? ???????? ???????? ?????????? ???????????? ?????????????? ???? ???? ???????? ???? ??????????????.</p>\n                    <p>???????? ???? ???????????????? ???? ???????????? :&nbsp;</p>\n                    <p>?????? ???????????? : { start_date } ?????? { end_date }</p>\n                    <p>?????????? ???? ?????????????? : { purpose_of_visit }</p>\n                    <p>???????? ?????????????? : { place_of_visit }</p>\n                    <p>?????????? : { trip_description }</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ????</p>\n                    <p>Regards,</p>\n                    <p>?????????? ?????????????? ?????????????? ??</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(230, 20, 'da', 'Trip Send', '<p>Om: HR-afdelingen / Kompagniet, der skal sende udflugten.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Godmorgen til dig! Jeg skriver til dit kontor med en ydmyg anmodning om at rejse for en { purpose_of_visit } i udlandet.</p>\n                    <p>Det ville v&aelig;re &aring;rets f&oslash;rende klimaforum, og det ville v&aelig;re heldigt nok at blive nomineret til at repr&aelig;sentere vores virksomhed og regionen under seminaret.</p>\n                    <p>Mit tre&aring;rige medlemskab som en del af den gruppe og de bidrag, jeg har givet til virksomheden, har som f&oslash;lge heraf v&aelig;ret symbiotisk fordelagtigt. I den henseende anmoder jeg om, at De som min n&aelig;rmeste overordnede giver mig lov til at deltage.</p>\n                    <p>Flere oplysninger om turen:</p>\n                    <p>Trip Duration: { start_date } til { end_date }</p>\n                    <p>Form&aring;let med Bes&oslash;g: { purpose_of_visit }</p>\n                    <p>Plads af bes&oslash;g: { place_of_visit }</p>\n                    <p>Beskrivelse: { trip_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(231, 20, 'de', 'Trip Send', '<p>Betreff: -Personalabteilung/Firma, um Reisebrief zu schicken.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Top of the morning to you! Ich schreibe an Ihre Dienststelle mit dem&uuml;tiger Bitte um eine Reise nach einem {purpose_of_visit} im Ausland.</p>\n                    <p>Es w&auml;re das f&uuml;hrende Klima-Business-Forum des Jahres und hatte das Gl&uuml;ck, nominiert zu werden, um unser Unternehmen und die Region w&auml;hrend des Seminars zu vertreten.</p>\n                    <p>Meine dreij&auml;hrige Mitgliedschaft als Teil der Gruppe und die Beitr&auml;ge, die ich an das Unternehmen gemacht habe, sind dadurch symbiotisch vorteilhaft gewesen. In diesem Zusammenhang ersuche ich Sie als meinen unmittelbaren Vorgesetzten, mir zu gestatten, zu besuchen.</p>\n                    <p>Mehr Details zu Reise:</p>\n                    <p>Dauer der Fahrt: {start_date} bis {end_date}</p>\n                    <p>Zweck des Besuchs: {purpose_of_visit}</p>\n                    <p>Ort des Besuchs: {place_of_visit}</p>\n                    <p>Beschreibung: {trip_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(232, 20, 'en', 'Trip Send', '<p><strong>Subject:-HR department/Company to send trip letter .</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Top of the morning to you! I am writing to your department office with a humble request to travel for a {purpose_of_visit} abroad.</p>\n                    <p>It would be the leading climate business forum of the year and have been lucky enough to be nominated to represent our company and the region during the seminar.</p>\n                    <p>My three-year membership as part of the group and contributions I have made to the company, as a result, have been symbiotically beneficial. In that regard, I am requesting you as my immediate superior to permit me to attend.</p>\n                    <p>More detail about trip:{start_date} to {end_date}</p>\n                    <p>Trip Duration:{start_date} to {end_date}</p>\n                    <p>Purpose of Visit:{purpose_of_visit}</p>\n                    <p>Place of Visit:{place_of_visit}</p>\n                    <p>Description:{trip_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(233, 20, 'es', 'Trip Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de viaje.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>&iexcl;Top de la ma&ntilde;ana para ti! Estoy escribiendo a su oficina del departamento con una humilde petici&oacute;n de viajar para un {purpose_of_visit} en el extranjero.</p>\n                    <p>Ser&iacute;a el principal foro de negocios clim&aacute;ticos del a&ntilde;o y han tenido la suerte de ser nominados para representar a nuestra compa&ntilde;&iacute;a y a la regi&oacute;n durante el seminario.</p>\n                    <p>Mi membres&iacute;a de tres a&ntilde;os como parte del grupo y las contribuciones que he hecho a la compa&ntilde;&iacute;a, como resultado, han sido simb&oacute;ticamente beneficiosos. En ese sentido, le estoy solicitando como mi superior inmediato que me permita asistir.</p>\n                    <p>M&aacute;s detalles sobre el viaje:&nbsp;</p>\n                    <p>Duraci&oacute;n del viaje: {start_date} a {end_date}</p>\n                    <p>Finalidad de la visita: {purpose_of_visit}</p>\n                    <p>Lugar de visita: {place_of_visit}</p>\n                    <p>Descripci&oacute;n: {trip_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(234, 20, 'fr', 'Trip Send', '<p>Objet: -Service des RH / Compagnie pour envoyer une lettre de voyage.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>Top of the morning to you ! J&eacute;crai au bureau de votre minist&egrave;re avec une humble demande de voyage pour une {purpose_of_visit } &agrave; l&eacute;tranger.</p>\n                    <p>Il sagit du principal forum sur le climat de lann&eacute;e et a eu la chance d&ecirc;tre d&eacute;sign&eacute; pour repr&eacute;senter notre entreprise et la r&eacute;gion au cours du s&eacute;minaire.</p>\n                    <p>Mon adh&eacute;sion de trois ans au groupe et les contributions que jai faites &agrave; lentreprise, en cons&eacute;quence, ont &eacute;t&eacute; b&eacute;n&eacute;fiques sur le plan symbiotique. &Agrave; cet &eacute;gard, je vous demande d&ecirc;tre mon sup&eacute;rieur imm&eacute;diat pour me permettre dy assister.</p>\n                    <p>Plus de d&eacute;tails sur le voyage:</p>\n                    <p>Dur&eacute;e du voyage: { start_date } &agrave; { end_date }</p>\n                    <p>Objet de la visite: { purpose_of_visit}</p>\n                    <p>Lieu de visite: { place_of_visit }</p>\n                    <p>Description: { trip_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(235, 20, 'it', 'Trip Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di viaggio.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>In cima al mattino a te! Scrivo al tuo ufficio dipartimento con umile richiesta di viaggio per un {purpose_of_visit} allestero.</p>\n                    <p>Sarebbe il forum aziendale sul clima leader dellanno e sono stati abbastanza fortunati da essere nominati per rappresentare la nostra azienda e la regione durante il seminario.</p>\n                    <p>La mia adesione triennale come parte del gruppo e i contributi che ho apportato allazienda, di conseguenza, sono stati simbioticamente vantaggiosi. A tal proposito, vi chiedo come mio immediato superiore per consentirmi di partecipare.</p>\n                    <p>Pi&ugrave; dettagli sul viaggio:</p>\n                    <p>Trip Duration: {start_date} a {end_date}</p>\n                    <p>Finalit&agrave; di Visita: {purpose_of_visit}</p>\n                    <p>Luogo di Visita: {place_of_visit}</p>\n                    <p>Descrizione: {trip_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(236, 20, 'ja', 'Trip Send', '<p>??????:-HR ??????/?????????????????????????????????????????????</p>\n                    <p>{ employee_name} ?????????????????????</p>\n                    <p>?????????????????? ! ????????? {purpose_of_visit} ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>????????????????????????????????? 3 ??????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n                    <p>????????????????????????????????? :</p>\n                    <p>??????????????????:{start_date} ??? {end_date} ??????????????????</p>\n                    <p>????????????????????? :{purpose_of_visit}</p>\n                    <p>??????????????? :{place_of_visit}</p>\n                    <p>??????:{trip_description}</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>???????????????</p>\n                    <p>????????????</p>\n                    <p>HR ??????</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(237, 20, 'nl', 'Trip Send', '<p>Betreft: -HR-afdeling/Bedrijf om reisbrief te sturen.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Top van de ochtend aan u! Ik schrijf uw afdelingsbureau met een bescheiden verzoek om een { purpose_of_visit } in het buitenland te bezoeken.</p>\n                    <p>Het zou het toonaangevende klimaatforum van het jaar zijn en hebben het geluk gehad om genomineerd te worden om ons bedrijf en de regio te vertegenwoordigen tijdens het seminar.</p>\n                    <p>Mijn driejarige lidmaatschap als onderdeel van de groep en bijdragen die ik heb geleverd aan het bedrijf, als gevolg daarvan, zijn symbiotisch gunstig geweest. Wat dat betreft, verzoek ik u als mijn directe chef mij in staat te stellen aanwezig te zijn.</p>\n                    <p>Meer details over reis:</p>\n                    <p>Duur van reis: { start_date } tot { end_date }</p>\n                    <p>Doel van bezoek: { purpose_of_visit }</p>\n                    <p>Plaats van bezoek: { place_of_visit }</p>\n                    <p>Beschrijving: { trip_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u we</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(238, 20, 'pl', 'Trip Send', '<p>Temat:-Dzia?? HR/Firma do wysy??ania listu podr&oacute;??y.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Od samego rana do Ciebie! Pisz?? do twojego biura, z pokornym pro??b?? o wyjazd na {purpose_of_visit&nbsp;} za granic??.</p>\n                    <p>By??oby to wiod??cym forum biznesowym w tym roku i mia??o szcz????cie by?? nominowane do reprezentowania naszej firmy i regionu podczas seminarium.</p>\n                    <p>Moje trzyletnie cz??onkostwo w grupie i sk??adkach, kt&oacute;re uczyni??em w firmie, w rezultacie, by??y symbiotycznie korzystne. W tym wzgl??dzie, zwracam si?? do pana o m&oacute;j bezpo??redni prze??o??ony, kt&oacute;ry pozwoli mi na udzia?? w tej sprawie.</p>\n                    <p>Wi??cej szczeg&oacute;??&oacute;w na temat wyjazdu:</p>\n                    <p>Czas trwania rejsu: {start_date } do {end_date }</p>\n                    <p>Cel wizyty: {purpose_of_visit }</p>\n                    <p>Miejsce wizyty: {place_of_visit }</p>\n                    <p>Opis: {trip_description }</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(239, 20, 'ru', 'Trip Send', '<p>????????: -HR ??????????/???????????????? ?????? ???????????????? ???????????? ???? ??????????????.</p>\n                    <p>?????????????????? { employee_name },</p>\n                    <p>?? ???????? ???? ????????! ?? ???????? ?? ?????? ?????????? ?? ?????????????????? ???????????????? ???? ?????????????? ???? ??????????????.</p>\n                    <p>?????? ?????? ???? ?????????????? ?????????????????????????? ????????????-?????????? ???????? ?? ???? ??????????, ?????? ?? ???????? ???????????????? ???? ?????????? ???????????????????????? ???????? ???????????????? ?? ????????????.</p>\n                    <p>?????? ???????????????????? ???????????????? ?? ?????????????? ???????????? ?? ????????????, ?????????????? ?? ???????? ?? ????????????????, ?? ????????????????????, ???????? ?????????????????????????? ??????????????. ?? ???????? ?????????? ?? ?????????? ?????? ?????? ?????????? ?????????????????????????????????? ???????????????????? ?????????????????? ?????? ????????????????????????????.</p>\n                    <p>?????????????????? ?? ??????????????:</p>\n                    <p>???????????????????????? ??????????????: { start_date } ?? { end_date }</p>\n                    <p>???????? ??????????????????: { purpose_of_visit }</p>\n                    <p>?????????? ??????????????????: { place_of_visit }</p>\n                    <p>????????????????: { trip_description }</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(240, 20, 'pt', 'Trip Send', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de viagem.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Topo da manh&atilde; para voc&ecirc;! Estou escrevendo para o seu departamento de departamento com um humilde pedido para viajar por um {purpose_of_visit} no exterior.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Seria o principal f&oacute;rum de neg&oacute;cios clim&aacute;tico do ano e teve a sorte de ser indicado para representar nossa empresa e a regi&atilde;o durante o semin&aacute;rio.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">A minha filia&ccedil;&atilde;o de tr&ecirc;s anos como parte do grupo e contribui&ccedil;&otilde;es que fiz &agrave; empresa, como resultado, foram simbioticamente ben&eacute;fico. A esse respeito, solicito que voc&ecirc; seja meu superior imediato para me permitir comparecer.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Mais detalhes sobre viagem:</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Trip Dura&ccedil;&atilde;o: {start_date} a {end_date}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Objetivo da Visita: {purpose_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Local de Visita: {place_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Descri&ccedil;&atilde;o: {trip_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(241, 21, 'ar', 'Vendor Bill Send', '<p>?????????? ?? { bill_name }</p>\n                    <p>?????????? ???? ???? { app_name }</p>\n                    <p>?????????? ???? ???????? ?????? ???????????? ???????????????????? ???????? ! ! ?????????? ???????????? ?????? ?????? ???????????????? ?????????????? { bill_number } ???????????? ?????? ???????????? / ????????????.</p>\n                    <p>???????????? ???????? ?????? ???????????????? ??????????.</p>\n                    <p>{ bill_url }</p>\n                    <p>???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????.</p>\n                    <p>???????? ????</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(242, 21, 'da', 'Vendor Bill Send', '<p>Hej, { bill_name }</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se vedlagte fakturanummer } { bill_number } for product/service.</p>\n                    <p>Klik p&aring; knappen nedenfor.</p>\n                    <p>{ bill_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(243, 21, 'de', 'Vendor Bill Send', '<p>Hi, {bill_name}</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut!! Sehen Sie sich die beigef&uuml;gte Rechnungsnummer {bill_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten.</p>\n                    <p>{bill_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank,</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(244, 21, 'en', 'Vendor Bill Send', '<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hi, {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Welcome to {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hope this email finds you well!! Please see attached bill number {bill_number} for product/service.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Simply click on the button below.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Feel free to reach out if you have any questions.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Thank You,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Regards,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(245, 21, 'es', 'Vendor Bill Send', '<p>Hi, {bill_name}</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>&iexcl;Espero que este correo te encuentre bien!! Consulte el n&uacute;mero de factura adjunto {bill_number} para el producto/servicio.</p>\n                    <p>Simplemente haga clic en el bot&oacute;n de abajo.</p>\n                    <p>{bill_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>Gracias,</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(246, 21, 'fr', 'Vendor Bill Send', '<p>Salut, { bill_name }</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! ! Veuillez consulter le num&eacute;ro de facture { bill_number } associ&eacute; au produit / service.</p>\n                    <p>Cliquez simplement sur le bouton ci-dessous.</p>\n                    <p>{bill_url }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci,</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(247, 21, 'it', 'Vendor Bill Send', '<p>Ciao, {bill_name}</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Spero che questa email ti trovi bene!! Si prega di consultare il numero di fattura allegato {bill_number} per il prodotto/servizio.</p>\n                    <p>Semplicemente clicca sul pulsante sottostante.</p>\n                    <p>{bill_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie,</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(248, 21, 'ja', 'Vendor Bill Send', '<p>?????????????????? {bill_name}</p>\n                    <p>{app_name} ???????????????</p>\n                    <p>?????? E ?????????????????????????????????????????? !! ?????? / ?????????????????????????????????????????? {bill_number} ??????????????????????????????</p>\n                    <p>??????????????????????????????????????????????????????</p>\n                    <p>{bill_url}</p>\n                    <p>???????????????????????????????????????????????????????????????</p>\n                    <p>??????????????????????????????</p>\n                    <p>&nbsp;</p>\n                    <p>????????????</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(249, 21, 'nl', 'Vendor Bill Send', '<p>Hallo, { bill_name }</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Hoop dat deze e-mail je goed vindt!! Zie bijgevoegde factuurnummer { bill_number } voor product/service.</p>\n                    <p>Klik gewoon op de knop hieronder.</p>\n                    <p>{ bill_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank U,</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(250, 21, 'pl', 'Vendor Bill Send', '<p>Witaj, {bill_name }</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Mam nadziej??, ??e ta wiadomo???? e-mail znajduje Ci?? dobrze!! Zapoznaj si?? z za????czonym numerem rachunku {bill_number } dla produktu/us??ugi.</p>\n                    <p>Wystarczy klikn???? na przycisk poni??ej.</p>\n                    <p>{bill_url}</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kuj??,</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(251, 21, 'ru', 'Vendor Bill Send', '<p>????????????, { bill_name }</p>\n                    <p>?????? ???????????????????????? { app_name }</p>\n                    <p>??????????????, ?????? ???????????? ???????????? ?????? ????????????! ????. ?????????????????????? ?????????? ?????????? { bill_number } ?????? product/service.</p>\n                    <p>???????????? ?????????????? ???? ???????????? ??????????.</p>\n                    <p>{ bill_url }</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>&nbsp;</p>\n                    <p>?? ??????????????????,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(252, 21, 'pt', 'Vendor Bill Send', '<p>Oi, {bill_name}</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem!! Por favor, consulte o n&uacute;mero de faturamento conectado {bill_number} para produto/servi&ccedil;o.</p>\n                    <p>Basta clicar no bot&atilde;o abaixo.</p>\n                    <p>{bill_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado,</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(253, 22, 'ar', 'Warning Send', '<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">Subject : -HR ?????????? / ???????? ???????????? ?????????? ??????????. ?????????? { employe_warning_name }, { warning_subject } { warning_description } ???????? ?????????????? ???????????? ?????? ???????????? ?????? ???????? ???? ??????????. ???????? ???? Regards, ?????????? ?????????????? ?????????????? ?? { app_name }</span></span></span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(254, 22, 'da', 'Warning Send', '<p>Om: HR-afdelingen / kompagniet for at sende advarselsbrev.</p>\n                    <p>K&aelig;re { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(255, 22, 'de', 'Warning Send', '<p>Betreff: -Personalabteilung/Unternehmen zum Senden von Warnschreiben.</p>\n                    <p>Sehr geehrter {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(256, 22, 'en', 'Warning Send', '<p><strong>Subject:-HR department/Company to send warning letter.</strong></p>\n                    <p><strong>Dear {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(257, 22, 'es', 'Warning Send', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de advertencia.</p>\n                    <p>Estimado {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(258, 22, 'fr', 'Warning Send', '<p>Objet: -HR department / Company to send warning letter.</p>\n                    <p>Cher { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(259, 22, 'it', 'Warning Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di avvertimento.</p>\n                    <p>Caro {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(260, 22, 'ja', 'Warning Send', '<p><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">??????:-HR ??????/????????????????????????????????????????????? { employee_warning_name} ????????????????????? {warning_subject} {warning_description} ??????????????????????????????????????????????????????????????? ??????????????? ???????????? HR ?????? {app_name}</span></span></span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(261, 22, 'nl', 'Warning Send', '<p>Betreft: -HR-afdeling/bedrijf om een waarschuwingsbrief te sturen.</p>\n                    <p>Geachte { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(262, 22, 'pl', 'Warning Send', '<p>Temat: -Dzia?? HR/Firma do wysy??ania listu ostrzegawczego.</p>\n                    <p>Szanowny {employee_warning_name },</p>\n                    <p>{warning_subject }</p>\n                    <p>{warning_description }</p>\n                    <p>Czuj si?? swobodnie, je??li masz jakie?? pytania.</p>\n                    <p>Dzi??kujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dzia?? HR,</p>\n                    <p>{app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(263, 22, 'ru', 'Warning Send', '<p>????????: -HR ??????????/???????????????? ?????? ???????????????? ???????????????????????????????? ????????????.</p>\n                    <p>?????????????????? { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>???? ????????????????????, ???????? ?? ?????? ???????? ??????????????.</p>\n                    <p>??????????????.</p>\n                    <p>?? ??????????????????,</p>\n                    <p>?????????? ????????????,</p>\n                    <p>{ app_name }</p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(264, 22, 'pt', 'Warning Send', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `designation_id` int(11) NOT NULL DEFAULT '0',
  `company_doj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'accountant', NULL, NULL, NULL, NULL, 'accountant@example.com', '$2y$10$VlRYOxkrdhhJr.0Dr0F9E.4/EjeCxMwLdNwWjDyNFJt3WKwXwfqFG', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimations`
--

CREATE TABLE `estimations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimation_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_employees`
--

CREATE TABLE `event_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_lead_active` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_field_responses`
--

CREATE TABLE `form_field_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `response` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genrate_payslip_options`
--

CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_display` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `progress` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `designation` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `employee_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `ref_number` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manually',
  `txn_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `requirement` text COLLATE utf8_unicode_ci,
  `branch` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8_unicode_ci,
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_archive` int(11) NOT NULL DEFAULT '0',
  `custom_question` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_application_notes`
--

CREATE TABLE `job_application_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL DEFAULT '0',
  `note_created` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_on_boards`
--

CREATE TABLE `job_on_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Applied', 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Phone Screen', 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Interview', 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Hired', 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Rejected', 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_items`
--

CREATE TABLE `journal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `debit` double(8,2) NOT NULL DEFAULT '0.00',
  `credit` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'On Hold', 'primary', 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'New', 'info', 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Pending', 'warning', 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Loss', 'danger', 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Win', 'success', 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sections`
--

CREATE TABLE `landing_page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `labels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_converted` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_activity_logs`
--

CREATE TABLE `lead_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_calls`
--

CREATE TABLE `lead_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `call_result` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_discussions`
--

CREATE TABLE `lead_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_emails`
--

CREATE TABLE `lead_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_stages`
--

INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Sent', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Open', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Revised', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Declined', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `leave_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `module_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_employees`
--

CREATE TABLE `meeting_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_22_192348_create_messages_table', 1),
(5, '2019_09_28_102009_create_settings_table', 1),
(6, '2019_09_30_050856_create_pipelines_table', 1),
(7, '2019_09_30_052036_create_sources_table', 1),
(8, '2019_09_30_061801_create_stages_table', 1),
(9, '2019_09_30_092218_create_labels_table', 1),
(10, '2019_10_03_052618_create_deals_table', 1),
(11, '2019_10_05_045358_create_user_deals_table', 1),
(12, '2019_10_05_045359_create_client_deals_table', 1),
(13, '2019_10_07_054657_create_deal_files_table', 1),
(14, '2019_10_07_091153_create_deal_tasks_table', 1),
(15, '2019_10_14_055151_create_deal_discussions_table', 1),
(16, '2019_10_16_211433_create_favorites_table', 1),
(17, '2019_10_18_223259_add_avatar_to_users', 1),
(18, '2019_10_20_211056_add_messenger_color_to_users', 1),
(19, '2019_10_22_000539_add_dark_mode_to_users', 1),
(20, '2019_10_24_060326_create_projectstages_table', 1),
(21, '2019_10_25_214038_add_active_status_to_users', 1),
(22, '2019_11_12_073012_create_bug_comments_table', 1),
(23, '2019_11_12_100007_create_bug_files_table', 1),
(24, '2019_11_13_051828_create_taxes_table', 1),
(25, '2019_11_13_055026_create_invoices_table', 1),
(26, '2019_11_21_090403_create_plans_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2019_12_18_110230_create_bugs_table', 1),
(29, '2019_12_18_112007_create_bug_statuses_table', 1),
(30, '2019_12_26_101754_create_departments_table', 1),
(31, '2019_12_26_101814_create_designations_table', 1),
(32, '2019_12_26_105721_create_documents_table', 1),
(33, '2019_12_27_083751_create_branches_table', 1),
(34, '2019_12_27_090831_create_employees_table', 1),
(35, '2019_12_27_112922_create_employee_documents_table', 1),
(36, '2019_12_28_050508_create_awards_table', 1),
(37, '2019_12_28_050919_create_award_types_table', 1),
(38, '2019_12_31_060916_create_termination_types_table', 1),
(39, '2019_12_31_062259_create_terminations_table', 1),
(40, '2019_12_31_070521_create_resignations_table', 1),
(41, '2019_12_31_072252_create_travels_table', 1),
(42, '2019_12_31_090637_create_promotions_table', 1),
(43, '2019_12_31_092838_create_transfers_table', 1),
(44, '2019_12_31_100319_create_warnings_table', 1),
(45, '2019_12_31_103019_create_complaints_table', 1),
(46, '2020_01_02_090837_create_payslip_types_table', 1),
(47, '2020_01_02_093331_create_allowance_options_table', 1),
(48, '2020_01_02_102558_create_loan_options_table', 1),
(49, '2020_01_02_103822_create_deduction_options_table', 1),
(50, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
(51, '2020_01_02_111807_create_set_salaries_table', 1),
(52, '2020_01_03_084302_create_allowances_table', 1),
(53, '2020_01_03_101735_create_commissions_table', 1),
(54, '2020_01_03_105019_create_loans_table', 1),
(55, '2020_01_03_105046_create_saturation_deductions_table', 1),
(56, '2020_01_03_105100_create_other_payments_table', 1),
(57, '2020_01_03_105111_create_overtimes_table', 1),
(58, '2020_01_04_060343_create_contract_types_table', 1),
(59, '2020_01_04_060343_create_performance_type_table', 1),
(60, '2020_01_04_060354_create_contracts_table', 1),
(61, '2020_01_04_072527_create_pay_slips_table', 1),
(62, '2020_01_08_063207_create_product_services_table', 1),
(63, '2020_01_08_084029_create_product_service_categories_table', 1),
(64, '2020_01_08_092717_create_product_service_units_table', 1),
(65, '2020_01_08_121541_create_customers_table', 1),
(66, '2020_01_09_104945_create_venders_table', 1),
(67, '2020_01_09_113852_create_bank_accounts_table', 1),
(68, '2020_01_09_124222_create_bank_transfers_table', 1),
(69, '2020_01_10_064723_create_transactions_table', 1),
(70, '2020_01_13_072608_create_invoice_products_table', 1),
(71, '2020_01_13_084720_create_events_table', 1),
(72, '2020_01_15_034438_create_revenues_table', 1),
(73, '2020_01_15_051228_create_bills_table', 1),
(74, '2020_01_15_060859_create_bill_products_table', 1),
(75, '2020_01_15_073237_create_payments_table', 1),
(76, '2020_01_16_041720_create_announcements_table', 1),
(77, '2020_01_16_043907_create_orders_table', 1),
(78, '2020_01_16_090747_create_leave_types_table', 1),
(79, '2020_01_16_093256_create_leaves_table', 1),
(80, '2020_01_16_110357_create_meetings_table', 1),
(81, '2020_01_18_051650_create_invoice_payments_table', 1),
(82, '2020_01_20_091035_create_bill_payments_table', 1),
(83, '2020_01_23_101613_create_meeting_employees_table', 1),
(84, '2020_01_23_123844_create_event_employees_table', 1),
(85, '2020_01_24_062752_create_announcement_employees_table', 1),
(86, '2020_01_27_052503_create_attendance_employees_table', 1),
(87, '2020_02_25_052356_create_credit_notes_table', 1),
(88, '2020_02_26_033827_create_debit_notes_table', 1),
(89, '2020_03_04_122711_create_leads_table', 1),
(90, '2020_03_04_122801_create_lead_stages_table', 1),
(91, '2020_03_05_042105_create_lead_activity_logs_table', 1),
(92, '2020_03_05_042308_create_lead_discussions_table', 1),
(93, '2020_03_05_042318_create_user_leads_table', 1),
(94, '2020_03_05_042549_create_lead_files_table', 1),
(95, '2020_03_05_042636_create_lead_emails_table', 1),
(96, '2020_03_05_042710_create_lead_calls_table', 1),
(97, '2020_03_05_044157_create_deal_emails_table', 1),
(98, '2020_03_05_044322_create_deal_calls_table', 1),
(99, '2020_03_12_095629_create_coupons_table', 1),
(100, '2020_03_12_120749_create_user_coupons_table', 1),
(101, '2020_03_17_104345_create_estimations_table', 1),
(102, '2020_03_18_104909_create_notifications_table', 1),
(103, '2020_04_02_045834_create_proposals_table', 1),
(104, '2020_04_02_055706_create_proposal_products_table', 1),
(105, '2020_04_18_035141_create_goals_table', 1),
(106, '2020_04_21_115823_create_assets_table', 1),
(107, '2020_04_24_023732_create_custom_fields_table', 1),
(108, '2020_04_24_024217_create_custom_field_values_table', 1),
(109, '2020_05_01_122144_create_ducument_uploads_table', 1),
(110, '2020_05_02_075614_create_email_templates_table', 1),
(111, '2020_05_02_075630_create_email_template_langs_table', 1),
(112, '2020_05_02_075647_create_user_email_templates_table', 1),
(113, '2020_05_04_070452_create_indicators_table', 1),
(114, '2020_05_05_023742_create_appraisals_table', 1),
(115, '2020_05_05_061241_create_goal_types_table', 1),
(116, '2020_05_05_095926_create_goal_trackings_table', 1),
(117, '2020_05_07_093520_create_company_policies_table', 1),
(118, '2020_05_07_131311_create_training_types_table', 1),
(119, '2020_05_08_023838_create_trainers_table', 1),
(120, '2020_05_08_043039_create_trainings_table', 1),
(121, '2020_05_21_065337_create_permission_tables', 1),
(122, '2020_06_02_085538_create_task_stages_table', 1),
(123, '2020_06_30_043627_create_user_to_dos_table', 1),
(124, '2020_06_30_120854_add_balance_to_customers_table', 1),
(125, '2020_06_30_121531_add_balance_to_vender_table', 1),
(126, '2020_07_01_033457_change_product_services_tax_id_column_type', 1),
(127, '2020_07_01_063255_change_tax_column_type', 1),
(128, '2020_07_03_054342_add_convert_in_proposal_table', 1),
(129, '2020_07_04_041452_create_project_email_templates_table', 1),
(130, '2020_07_06_102454_add_payment_type_in_orders_table', 1),
(131, '2020_07_06_110501_create_user_contacts_table', 1),
(132, '2020_07_07_052211_add_field_in_invoice_payments_table', 1),
(133, '2020_07_22_131715_change_amount_type_size', 1),
(134, '2020_08_04_034206_change_settings_value_type', 1),
(135, '2020_08_10_073242_create_project_invoices_table', 1),
(136, '2020_08_26_093539_create_time_trackers_table', 1),
(137, '2020_09_16_040822_change_user_type_size_in_users_table', 1),
(138, '2020_09_17_053350_change_shipping_default_val', 1),
(139, '2020_09_17_070031_add_description_field', 1),
(140, '2020_10_07_034726_create_holidays_table', 1),
(141, '2020_12_11_094137_add_mode_to_users', 1),
(142, '2020_12_11_094137_add_receipt_to_payment', 1),
(143, '2020_12_11_094137_add_tax_number_to_customers', 1),
(144, '2021_01_11_062508_create_chart_of_accounts_table', 1),
(145, '2021_01_11_070441_create_chart_of_account_types_table', 1),
(146, '2021_01_12_032834_create_journal_entries_table', 1),
(147, '2021_01_12_033815_create_journal_items_table', 1),
(148, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
(149, '2021_01_20_113044_create_log_activities_table', 1),
(150, '2021_03_13_114832_create_job_categories_table', 1),
(151, '2021_03_13_123125_create_job_stages_table', 1),
(152, '2021_03_15_094707_create_jobs_table', 1),
(153, '2021_03_15_153745_create_job_applications_table', 1),
(154, '2021_03_16_115140_create_job_application_notes_table', 1),
(155, '2021_03_17_100224_create_projects_table', 1),
(156, '2021_03_17_163107_create_custom_questions_table', 1),
(157, '2021_03_18_060536_create_project_tasks_table', 1),
(158, '2021_03_18_070146_create_milestones_table', 1),
(159, '2021_03_18_091547_create_task_checklists_table', 1),
(160, '2021_03_18_092113_create_task_files_table', 1),
(161, '2021_03_18_092400_create_task_comments_table', 1),
(162, '2021_03_18_102517_create_activity_logs_table', 1),
(163, '2021_03_18_140630_create_interview_schedules_table', 1),
(164, '2021_03_19_053350_create_project_users_table', 1),
(165, '2021_03_22_100636_create_expenses_table', 1),
(166, '2021_03_22_122532_create_job_on_boards_table', 1),
(167, '2021_03_23_032633_create_timesheets_table', 1),
(168, '2021_06_15_071245_create_landing_page_sections_table', 1),
(169, '2021_08_03_093459_create_form_builders_table', 1),
(170, '2021_08_03_094508_create_form_fields_table', 1),
(171, '2021_08_03_094534_create_form_field_responses_table', 1),
(172, '2021_08_03_094548_create_form_responses_table', 1),
(173, '2021_08_04_072610_admin_payment_settings', 1),
(174, '2021_08_04_090539_company_payment_settings', 1),
(175, '2021_08_05_114738_create_supports_table', 1),
(176, '2021_08_05_115212_create_support_replies_table', 1),
(177, '2021_08_20_084119_create_competencies_table', 1),
(178, '2021_08_21_044211_add_hour_in_project', 1),
(179, '2021_08_21_044211_add_rating_in_competencies', 1),
(180, '2021_09_03_112043_create_track_photos_table', 1),
(181, '2021_09_10_160559_add_last_login_to_user_table', 1),
(182, '2021_09_10_165514_create_plan_requests_table', 1),
(183, '2021_10_13_102756_create_add_new_field_lead_table', 1),
(184, '2021_12_02_052828_create_budgets_table', 1),
(185, '2021_12_24_104639_create_zoom_meetings_table', 1),
(186, '2022_03_03_100148_change_price_val', 1),
(187, '2022_03_11_035602_create_stock_reports_table', 1),
(188, '2022_03_11_103119_add_type_to_allowance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `recurring` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_types`
--

CREATE TABLE `payslip_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8_unicode_ci NOT NULL,
  `commission` text COLLATE utf8_unicode_ci NOT NULL,
  `loan` text COLLATE utf8_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_types`
--

CREATE TABLE `performance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show hrm dashboard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(2, 'copy invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(3, 'show project dashboard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(4, 'show account dashboard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(5, 'manage user', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(6, 'create user', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(7, 'edit user', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(8, 'delete user', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(9, 'create language', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(10, 'manage role', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(11, 'create role', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(12, 'edit role', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(13, 'delete role', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(14, 'manage permission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(15, 'create permission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(16, 'edit permission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(17, 'delete permission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(18, 'manage company settings', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(19, 'manage print settings', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(20, 'manage business settings', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(21, 'manage stripe settings', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(22, 'manage expense', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(23, 'create expense', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(24, 'edit expense', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(25, 'delete expense', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(26, 'manage invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(27, 'create invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(28, 'edit invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(29, 'delete invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(30, 'show invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(31, 'create payment invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(32, 'delete payment invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(33, 'send invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(34, 'delete invoice product', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(35, 'convert invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(36, 'manage constant unit', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(37, 'create constant unit', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(38, 'edit constant unit', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(39, 'delete constant unit', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(40, 'manage constant tax', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(41, 'create constant tax', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(42, 'edit constant tax', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(43, 'delete constant tax', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(44, 'manage constant category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(45, 'create constant category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(46, 'edit constant category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(47, 'delete constant category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(48, 'manage product & service', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(49, 'create product & service', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(50, 'edit product & service', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(51, 'delete product & service', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(52, 'manage customer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(53, 'create customer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(54, 'edit customer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(55, 'delete customer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(56, 'show customer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(57, 'manage vender', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(58, 'create vender', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(59, 'edit vender', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(60, 'delete vender', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(61, 'show vender', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(62, 'manage bank account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(63, 'create bank account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(64, 'edit bank account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(65, 'delete bank account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(66, 'manage bank transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(67, 'create bank transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(68, 'edit bank transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(69, 'delete bank transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(70, 'manage transaction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(71, 'manage revenue', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(72, 'create revenue', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(73, 'edit revenue', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(74, 'delete revenue', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(75, 'manage bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(76, 'create bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(77, 'edit bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(78, 'delete bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(79, 'show bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(80, 'manage payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(81, 'create payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(82, 'edit payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(83, 'delete payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(84, 'delete bill product', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(85, 'send bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(86, 'create payment bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(87, 'delete payment bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(88, 'manage order', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(89, 'income report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(90, 'expense report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(91, 'income vs expense report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(92, 'invoice report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(93, 'bill report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(94, 'stock report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(95, 'tax report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(96, 'loss & profit report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(97, 'manage customer payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(98, 'manage customer transaction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(99, 'manage customer invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(100, 'vender manage bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(101, 'manage vender bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(102, 'manage vender payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(103, 'manage vender transaction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(104, 'manage credit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(105, 'create credit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(106, 'edit credit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(107, 'delete credit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(108, 'manage debit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(109, 'create debit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(110, 'edit debit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(111, 'delete debit note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(112, 'duplicate invoice', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(113, 'duplicate bill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(114, 'manage proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(115, 'create proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(116, 'edit proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(117, 'delete proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(118, 'duplicate proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(119, 'show proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(120, 'send proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(121, 'delete proposal product', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(122, 'manage customer proposal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(123, 'manage goal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(124, 'create goal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(125, 'edit goal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(126, 'delete goal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(127, 'manage assets', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(128, 'create assets', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(129, 'edit assets', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(130, 'delete assets', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(131, 'statement report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(132, 'manage constant custom field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(133, 'create constant custom field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(134, 'edit constant custom field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(135, 'delete constant custom field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(136, 'manage chart of account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(137, 'create chart of account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(138, 'edit chart of account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(139, 'delete chart of account', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(140, 'manage journal entry', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(141, 'create journal entry', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(142, 'edit journal entry', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(143, 'delete journal entry', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(144, 'show journal entry', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(145, 'balance sheet report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(146, 'ledger report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(147, 'trial balance report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(148, 'manage client', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(149, 'create client', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(150, 'edit client', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(151, 'delete client', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(152, 'manage lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(153, 'create lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(154, 'view lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(155, 'edit lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(156, 'delete lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(157, 'move lead', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(158, 'create lead call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(159, 'edit lead call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(160, 'delete lead call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(161, 'create lead email', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(162, 'manage pipeline', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(163, 'create pipeline', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(164, 'edit pipeline', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(165, 'delete pipeline', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(166, 'manage lead stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(167, 'create lead stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(168, 'edit lead stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(169, 'delete lead stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(170, 'convert lead to deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(171, 'manage source', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(172, 'create source', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(173, 'edit source', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(174, 'delete source', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(175, 'manage label', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(176, 'create label', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(177, 'edit label', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(178, 'delete label', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(179, 'manage deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(180, 'create deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(181, 'view task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(182, 'create task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(183, 'edit task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(184, 'delete task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(185, 'edit deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(186, 'view deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(187, 'delete deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(188, 'move deal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(189, 'create deal call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(190, 'edit deal call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(191, 'delete deal call', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(192, 'create deal email', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(193, 'manage stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(194, 'create stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(195, 'edit stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(196, 'delete stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(197, 'manage employee', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(198, 'create employee', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(199, 'view employee', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(200, 'edit employee', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(201, 'delete employee', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(202, 'manage employee profile', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(203, 'show employee profile', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(204, 'manage department', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(205, 'create department', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(206, 'view department', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(207, 'edit department', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(208, 'delete department', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(209, 'manage designation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(210, 'create designation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(211, 'view designation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(212, 'edit designation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(213, 'delete designation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(214, 'manage branch', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(215, 'create branch', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(216, 'edit branch', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(217, 'delete branch', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(218, 'manage document type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(219, 'create document type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(220, 'edit document type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(221, 'delete document type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(222, 'manage document', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(223, 'create document', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(224, 'edit document', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(225, 'delete document', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(226, 'manage payslip type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(227, 'create payslip type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(228, 'edit payslip type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(229, 'delete payslip type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(230, 'create allowance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(231, 'edit allowance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(232, 'delete allowance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(233, 'create commission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(234, 'edit commission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(235, 'delete commission', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(236, 'manage allowance option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(237, 'create allowance option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(238, 'edit allowance option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(239, 'delete allowance option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(240, 'manage loan option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(241, 'create loan option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(242, 'edit loan option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(243, 'delete loan option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(244, 'manage deduction option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(245, 'create deduction option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(246, 'edit deduction option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(247, 'delete deduction option', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(248, 'create loan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(249, 'edit loan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(250, 'delete loan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(251, 'create saturation deduction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(252, 'edit saturation deduction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(253, 'delete saturation deduction', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(254, 'create other payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(255, 'edit other payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(256, 'delete other payment', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(257, 'create overtime', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(258, 'edit overtime', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(259, 'delete overtime', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(260, 'manage set salary', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(261, 'edit set salary', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(262, 'manage pay slip', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(263, 'create set salary', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(264, 'create pay slip', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(265, 'manage company policy', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(266, 'create company policy', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(267, 'edit company policy', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(268, 'manage appraisal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(269, 'create appraisal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(270, 'edit appraisal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(271, 'show appraisal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(272, 'delete appraisal', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(273, 'manage goal tracking', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(274, 'create goal tracking', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(275, 'edit goal tracking', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(276, 'delete goal tracking', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(277, 'manage goal type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(278, 'create goal type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(279, 'edit goal type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(280, 'delete goal type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(281, 'manage indicator', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(282, 'create indicator', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(283, 'edit indicator', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(284, 'show indicator', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(285, 'delete indicator', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(286, 'manage training', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(287, 'create training', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(288, 'edit training', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(289, 'delete training', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(290, 'show training', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(291, 'manage trainer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(292, 'create trainer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(293, 'edit trainer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(294, 'delete trainer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(295, 'manage training type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(296, 'create training type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(297, 'edit training type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(298, 'delete training type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(299, 'manage award', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(300, 'create award', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(301, 'edit award', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(302, 'delete award', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(303, 'manage award type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(304, 'create award type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(305, 'edit award type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(306, 'delete award type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(307, 'manage resignation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(308, 'create resignation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(309, 'edit resignation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(310, 'delete resignation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(311, 'manage travel', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(312, 'create travel', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(313, 'edit travel', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(314, 'delete travel', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(315, 'manage promotion', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(316, 'create promotion', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(317, 'edit promotion', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(318, 'delete promotion', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(319, 'manage complaint', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(320, 'create complaint', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(321, 'edit complaint', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(322, 'delete complaint', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(323, 'manage warning', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(324, 'create warning', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(325, 'edit warning', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(326, 'delete warning', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(327, 'manage termination', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(328, 'create termination', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(329, 'edit termination', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(330, 'delete termination', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(331, 'manage termination type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(332, 'create termination type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(333, 'edit termination type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(334, 'delete termination type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(335, 'manage job application', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(336, 'create job application', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(337, 'show job application', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(338, 'delete job application', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(339, 'move job application', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(340, 'add job application skill', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(341, 'add job application note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(342, 'delete job application note', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(343, 'manage job onBoard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(344, 'manage job category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(345, 'create job category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(346, 'edit job category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(347, 'delete job category', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(348, 'manage job', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(349, 'create job', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(350, 'edit job', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(351, 'show job', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(352, 'delete job', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(353, 'manage job stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(354, 'create job stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(355, 'edit job stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(356, 'delete job stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(357, 'Manage Competencies', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(358, 'Create Competencies', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(359, 'Edit Competencies', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(360, 'Delete Competencies', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(361, 'manage custom question', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(362, 'create custom question', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(363, 'edit custom question', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(364, 'delete custom question', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(365, 'create interview schedule', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(366, 'edit interview schedule', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(367, 'delete interview schedule', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(368, 'show interview schedule', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(369, 'create estimation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(370, 'view estimation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(371, 'edit estimation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(372, 'delete estimation', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(373, 'edit holiday', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(374, 'create holiday', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(375, 'delete holiday', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(376, 'manage holiday', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(377, 'show career', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(378, 'manage meeting', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(379, 'create meeting', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(380, 'edit meeting', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(381, 'delete meeting', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(382, 'manage event', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(383, 'create event', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(384, 'edit event', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(385, 'delete event', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(386, 'manage transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(387, 'create transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(388, 'edit transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(389, 'delete transfer', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(390, 'manage announcement', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(391, 'create announcement', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(392, 'edit announcement', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(393, 'delete announcement', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(394, 'manage leave', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(395, 'create leave', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(396, 'edit leave', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(397, 'delete leave', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(398, 'manage leave type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(399, 'create leave type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(400, 'edit leave type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(401, 'delete leave type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(402, 'manage attendance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(403, 'create attendance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(404, 'edit attendance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(405, 'delete attendance', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(406, 'manage report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(407, 'manage project', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(408, 'create project', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(409, 'view project', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(410, 'edit project', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(411, 'delete project', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(412, 'create milestone', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(413, 'edit milestone', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(414, 'delete milestone', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(415, 'view milestone', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(416, 'view grant chart', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(417, 'manage project stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(418, 'create project stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(419, 'edit project stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(420, 'delete project stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(421, 'view timesheet', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(422, 'view expense', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(423, 'manage project task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(424, 'create project task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(425, 'edit project task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(426, 'view project task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(427, 'delete project task', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(428, 'view activity', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(429, 'view CRM activity', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(430, 'manage project task stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(431, 'edit project task stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(432, 'create project task stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(433, 'delete project task stage', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(434, 'manage timesheet', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(435, 'create timesheet', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(436, 'edit timesheet', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(437, 'delete timesheet', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(438, 'manage bug report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(439, 'create bug report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(440, 'edit bug report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(441, 'delete bug report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(442, 'move bug report', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(443, 'manage bug status', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(444, 'create bug status', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(445, 'edit bug status', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(446, 'delete bug status', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(447, 'manage client dashboard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(448, 'manage super admin dashboard', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(449, 'manage system settings', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(450, 'manage plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(451, 'create plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(452, 'edit plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(453, 'manage coupon', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(454, 'create coupon', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(455, 'edit coupon', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(456, 'delete coupon', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(457, 'manage company plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(458, 'buy plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(459, 'manage form builder', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(460, 'create form builder', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(461, 'edit form builder', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(462, 'delete form builder', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(463, 'manage performance type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(464, 'create performance type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(465, 'edit performance type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(466, 'delete performance type', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(467, 'manage form field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(468, 'create form field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(469, 'edit form field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(470, 'delete form field', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(471, 'view form response', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(472, 'create budget plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(473, 'edit budget plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(474, 'manage budget plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(475, 'delete budget plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(476, 'view budget plan', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(477, 'manage contract', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(478, 'create contract', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(479, 'edit contract', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(480, 'delete contract', 'web', '2022-09-01 08:46:41', '2022-09-01 08:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pipelines`
--

CREATE TABLE `pipelines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pipelines`
--

INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sales', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `max_users` int(11) NOT NULL DEFAULT '0',
  `max_customers` int(11) NOT NULL DEFAULT '0',
  `max_venders` int(11) NOT NULL DEFAULT '0',
  `max_clients` int(11) NOT NULL DEFAULT '0',
  `crm` int(11) NOT NULL DEFAULT '0',
  `hrm` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `max_users`, `max_customers`, `max_venders`, `max_clients`, `crm`, `hrm`, `account`, `project`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Free Plan', 0.00, 'unlimited', 5, 5, 5, 5, 1, 1, 1, 1, NULL, 'free_plan.png', '2022-09-01 08:46:41', '2022-09-01 08:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `plan_requests`
--

CREATE TABLE `plan_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_services`
--

CREATE TABLE `product_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `tax_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_categories`
--

CREATE TABLE `product_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_units`
--

CREATE TABLE `product_service_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimated_hrs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `start_date`, `end_date`, `project_image`, `budget`, `client_id`, `description`, `status`, `estimated_hrs`, `tags`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Project', '2022-09-03', '1970-01-01', 'projects/1662221049.mov', 0, 4, NULL, 'in_progress', NULL, NULL, 2, '2022-09-03 21:04:09', '2022-09-03 21:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `projectstages`
--

CREATE TABLE `projectstages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_email_templates`
--

CREATE TABLE `project_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_invoices`
--

CREATE TABLE `project_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_tasks`
--

CREATE TABLE `project_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `estimated_hrs` int(11) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_to` text COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `stage_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_favourite` int(11) NOT NULL DEFAULT '0',
  `is_complete` int(11) NOT NULL DEFAULT '0',
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `invited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, '2022-09-03 21:04:09', '2022-09-03 21:04:09'),
(2, 1, 3, 0, '2022-09-03 21:04:09', '2022-09-03 21:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `converted_invoice_id` int(11) NOT NULL DEFAULT '0',
  `is_convert` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal_products`
--

CREATE TABLE `proposal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', 0, '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(2, 'customer', 'web', 0, '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(3, 'vender', 'web', 0, '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(4, 'company', 'web', 0, '2022-09-01 08:46:41', '2022-09-01 08:46:41'),
(5, 'accountant', 'web', 2, '2022-09-01 08:46:43', '2022-09-01 08:46:43'),
(6, 'client', 'web', 2, '2022-09-01 08:46:43', '2022-09-01 08:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(21, 1),
(88, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(30, 2),
(56, 2),
(97, 2),
(98, 2),
(99, 2),
(119, 2),
(122, 2),
(61, 3),
(79, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4),
(131, 4),
(132, 4),
(133, 4),
(134, 4),
(135, 4),
(136, 4),
(137, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(145, 4),
(146, 4),
(147, 4),
(148, 4),
(149, 4),
(150, 4),
(151, 4),
(152, 4),
(153, 4),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(174, 4),
(175, 4),
(176, 4),
(177, 4),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(182, 4),
(183, 4),
(184, 4),
(185, 4),
(186, 4),
(187, 4),
(188, 4),
(189, 4),
(190, 4),
(191, 4),
(192, 4),
(193, 4),
(194, 4),
(195, 4),
(196, 4),
(197, 4),
(198, 4),
(199, 4),
(200, 4),
(201, 4),
(202, 4),
(203, 4),
(204, 4),
(205, 4),
(206, 4),
(207, 4),
(208, 4),
(209, 4),
(210, 4),
(211, 4),
(212, 4),
(213, 4),
(214, 4),
(215, 4),
(216, 4),
(217, 4),
(218, 4),
(219, 4),
(220, 4),
(221, 4),
(222, 4),
(223, 4),
(224, 4),
(225, 4),
(226, 4),
(227, 4),
(228, 4),
(229, 4),
(230, 4),
(231, 4),
(232, 4),
(233, 4),
(234, 4),
(235, 4),
(236, 4),
(237, 4),
(238, 4),
(239, 4),
(240, 4),
(241, 4),
(242, 4),
(243, 4),
(244, 4),
(245, 4),
(246, 4),
(247, 4),
(248, 4),
(249, 4),
(250, 4),
(251, 4),
(252, 4),
(253, 4),
(254, 4),
(255, 4),
(256, 4),
(257, 4),
(258, 4),
(259, 4),
(260, 4),
(261, 4),
(262, 4),
(263, 4),
(264, 4),
(265, 4),
(266, 4),
(267, 4),
(268, 4),
(269, 4),
(270, 4),
(271, 4),
(272, 4),
(273, 4),
(274, 4),
(275, 4),
(276, 4),
(277, 4),
(278, 4),
(279, 4),
(280, 4),
(281, 4),
(282, 4),
(283, 4),
(284, 4),
(285, 4),
(286, 4),
(287, 4),
(288, 4),
(289, 4),
(290, 4),
(291, 4),
(292, 4),
(293, 4),
(294, 4),
(295, 4),
(296, 4),
(297, 4),
(298, 4),
(299, 4),
(300, 4),
(301, 4),
(302, 4),
(303, 4),
(304, 4),
(305, 4),
(306, 4),
(307, 4),
(308, 4),
(309, 4),
(310, 4),
(311, 4),
(312, 4),
(313, 4),
(314, 4),
(315, 4),
(316, 4),
(317, 4),
(318, 4),
(319, 4),
(320, 4),
(321, 4),
(322, 4),
(323, 4),
(324, 4),
(325, 4),
(326, 4),
(327, 4),
(328, 4),
(329, 4),
(330, 4),
(331, 4),
(332, 4),
(333, 4),
(334, 4),
(335, 4),
(336, 4),
(337, 4),
(338, 4),
(339, 4),
(340, 4),
(341, 4),
(342, 4),
(343, 4),
(344, 4),
(345, 4),
(346, 4),
(347, 4),
(348, 4),
(349, 4),
(350, 4),
(351, 4),
(352, 4),
(353, 4),
(354, 4),
(355, 4),
(356, 4),
(357, 4),
(358, 4),
(359, 4),
(360, 4),
(361, 4),
(362, 4),
(363, 4),
(364, 4),
(365, 4),
(366, 4),
(367, 4),
(368, 4),
(369, 4),
(370, 4),
(371, 4),
(372, 4),
(373, 4),
(374, 4),
(375, 4),
(376, 4),
(377, 4),
(378, 4),
(379, 4),
(380, 4),
(381, 4),
(382, 4),
(383, 4),
(384, 4),
(385, 4),
(386, 4),
(387, 4),
(388, 4),
(389, 4),
(390, 4),
(391, 4),
(392, 4),
(393, 4),
(394, 4),
(395, 4),
(396, 4),
(397, 4),
(398, 4),
(399, 4),
(400, 4),
(401, 4),
(402, 4),
(403, 4),
(404, 4),
(405, 4),
(406, 4),
(407, 4),
(408, 4),
(409, 4),
(410, 4),
(411, 4),
(412, 4),
(413, 4),
(414, 4),
(415, 4),
(416, 4),
(417, 4),
(418, 4),
(419, 4),
(420, 4),
(421, 4),
(422, 4),
(423, 4),
(424, 4),
(425, 4),
(426, 4),
(427, 4),
(428, 4),
(429, 4),
(430, 4),
(431, 4),
(432, 4),
(433, 4),
(434, 4),
(435, 4),
(436, 4),
(437, 4),
(438, 4),
(439, 4),
(440, 4),
(441, 4),
(442, 4),
(443, 4),
(444, 4),
(445, 4),
(446, 4),
(450, 4),
(457, 4),
(458, 4),
(459, 4),
(460, 4),
(461, 4),
(462, 4),
(463, 4),
(464, 4),
(465, 4),
(466, 4),
(467, 4),
(468, 4),
(469, 4),
(470, 4),
(471, 4),
(472, 4),
(473, 4),
(474, 4),
(475, 4),
(476, 4),
(477, 4),
(478, 4),
(479, 4),
(480, 4),
(4, 5),
(19, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(79, 5),
(80, 5),
(81, 5),
(82, 5),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(89, 5),
(90, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 5),
(104, 5),
(105, 5),
(106, 5),
(107, 5),
(108, 5),
(109, 5),
(110, 5),
(111, 5),
(114, 5),
(115, 5),
(116, 5),
(117, 5),
(118, 5),
(119, 5),
(120, 5),
(121, 5),
(123, 5),
(124, 5),
(125, 5),
(126, 5),
(127, 5),
(128, 5),
(129, 5),
(130, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(138, 5),
(139, 5),
(140, 5),
(141, 5),
(142, 5),
(143, 5),
(144, 5),
(145, 5),
(146, 5),
(147, 5),
(472, 5),
(473, 5),
(474, 5),
(475, 5),
(476, 5),
(162, 6),
(166, 6),
(171, 6),
(175, 6),
(179, 6),
(181, 6),
(186, 6),
(188, 6),
(193, 6),
(407, 6),
(409, 6),
(416, 6),
(421, 6),
(423, 6),
(424, 6),
(425, 6),
(426, 6),
(427, 6),
(428, 6),
(434, 6),
(438, 6),
(439, 6),
(440, 6),
(441, 6),
(442, 6),
(447, 6),
(477, 6),
(478, 6),
(479, 6),
(480, 6);

-- --------------------------------------------------------

--
-- Table structure for table `saturation_deductions`
--

CREATE TABLE `saturation_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'company_logo_dark', 'logo-dark.png', 1, NULL, NULL),
(2, 'title_text', NULL, 1, NULL, NULL),
(3, 'footer_text', NULL, 1, NULL, NULL),
(4, 'default_language', 'en', 1, NULL, NULL),
(5, 'display_landing_page', 'on', 1, NULL, NULL),
(6, 'enable_signup', 'on', 1, NULL, NULL),
(7, 'cookie_text', 'We use cookies to ensure that we give you the best experience on our website. If you continue to use this site we will assume that you are happy with it.', 1, NULL, NULL),
(8, 'cust_theme_bg', 'on', 1, NULL, NULL),
(9, 'SITE_RTL', 'off', 1, NULL, NULL),
(10, 'gdpr_cookie', 'off', 1, NULL, NULL),
(11, 'cust_darklayout', 'off', 1, NULL, NULL),
(13, 'company_logo_light', 'logo-light.png', 1, NULL, NULL),
(14, 'company_favicon', 'favicon.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `set_salaries`
--

CREATE TABLE `set_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Websites', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Facebook', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Naukari.com', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Phone', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'LinkedIn', 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'Sent', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Open', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Revised', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 'Declined', 1, 2, 0, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `stock_reports`
--

CREATE TABLE `stock_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_replies`
--

CREATE TABLE `support_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_checklists`
--

CREATE TABLE `task_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_stages`
--

CREATE TABLE `task_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_stages`
--

INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'To Do', 0, 0, NULL, 0, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 'In Progress', 0, 0, NULL, 1, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 'Review', 0, 0, NULL, 2, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 'Done', 0, 0, NULL, 3, 2, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tag_id` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_billable` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_photos`
--

CREATE TABLE `track_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `expertise` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `performance` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place_of_visit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'light',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `default_pipeline` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `plan`, `plan_expire_date`, `requested_plan`, `type`, `avatar`, `lang`, `mode`, `created_by`, `default_pipeline`, `delete_status`, `is_active`, `remember_token`, `last_login_at`, `created_at`, `updated_at`, `messenger_color`, `dark_mode`, `active_status`) VALUES
(1, 'Super Admin', 'superadmin@example.com', NULL, '$2y$10$9xoIulE02fxvi7BjhAEu8.9W8PlBmZHsoL62RnzbygLwE81EAYxIO', NULL, NULL, 0, 'super admin', '', 'en', 'light', 0, NULL, 1, 1, NULL, '2022-09-07 04:13:43', '2022-09-01 08:46:41', '2022-09-07 09:13:43', '#2180f3', 0, 0),
(2, 'company', 'company@example.com', NULL, '$2y$10$fGvaEQkK9uFHoHazPb44i.qwgbS.ndDF59e4n252ONzlqbAVnCMNW', 1, NULL, 0, 'company', '', 'en', 'light', 1, 1, 1, 1, NULL, NULL, '2022-09-01 08:46:43', '2022-09-01 08:46:43', '#2180f3', 0, 0),
(3, 'accountant', 'accountant@example.com', NULL, '$2y$10$VlRYOxkrdhhJr.0Dr0F9E.4/EjeCxMwLdNwWjDyNFJt3WKwXwfqFG', NULL, NULL, 0, 'accountant', '', 'en', 'light', 2, 1, 1, 1, NULL, NULL, '2022-09-01 08:46:43', '2022-09-01 08:46:43', '#2180f3', 0, 0),
(4, 'client', 'client@example.com', NULL, '$2y$10$5FmLqWUc7QF4BZGR./rvtO01n8kzD4yuNsN/5/xHh04VvG4I5HqV2', NULL, NULL, 0, 'client', '', 'en', 'light', 2, 1, 1, 1, NULL, NULL, '2022-09-01 08:46:44', '2022-09-01 08:46:44', '#2180f3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_deals`
--

CREATE TABLE `user_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_templates`
--

CREATE TABLE `user_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_email_templates`
--

INSERT INTO `user_email_templates` (`id`, `template_id`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(2, 2, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(3, 3, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(4, 4, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(5, 5, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(6, 6, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(7, 7, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(8, 8, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(9, 9, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(10, 10, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(11, 11, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(12, 12, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(13, 13, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(14, 14, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(15, 15, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(16, 16, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(17, 17, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(18, 18, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(19, 19, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(20, 20, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(21, 21, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44'),
(22, 22, 2, 1, '2022-09-01 08:46:44', '2022-09-01 08:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_leads`
--

CREATE TABLE `user_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_dos`
--

CREATE TABLE `user_to_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vender_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8_unicode_ci NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(11) NOT NULL DEFAULT '0',
  `start_url` text COLLATE utf8_unicode_ci,
  `join_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowance_options`
--
ALTER TABLE `allowance_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_products`
--
ALTER TABLE `bill_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_comments`
--
ALTER TABLE `bug_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_files`
--
ALTER TABLE `bug_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_deals_client_id_foreign` (`client_id`),
  ADD KEY `client_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  ADD KEY `custom_field_values_field_id_foreign` (`field_id`);

--
-- Indexes for table `custom_questions`
--
ALTER TABLE `custom_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_calls_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_discussions_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_emails_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_files_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_tasks_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_options`
--
ALTER TABLE `deduction_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimations`
--
ALTER TABLE `estimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_employees`
--
ALTER TABLE `event_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_builders_code_unique` (`code`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_responses`
--
ALTER TABLE `form_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_items`
--
ALTER TABLE `journal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`);

--
-- Indexes for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_calls_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_discussions_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_emails_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_files_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_types`
--
ALTER TABLE `payslip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_types`
--
ALTER TABLE `performance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pipelines`
--
ALTER TABLE `pipelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `plan_requests`
--
ALTER TABLE `plan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_units`
--
ALTER TABLE `product_service_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectstages`
--
ALTER TABLE `projectstages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_invoices`
--
ALTER TABLE `project_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tasks`
--
ALTER TABLE `project_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_products`
--
ALTER TABLE `proposal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `set_salaries`
--
ALTER TABLE `set_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_reports`
--
ALTER TABLE `stock_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_replies`
--
ALTER TABLE `support_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_checklists`
--
ALTER TABLE `task_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_stages`
--
ALTER TABLE `task_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_photos`
--
ALTER TABLE `track_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_deals_user_id_foreign` (`user_id`),
  ADD KEY `user_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leads_user_id_foreign` (`user_id`),
  ADD KEY `user_leads_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `venders_email_unique` (`email`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_options`
--
ALTER TABLE `allowance_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_products`
--
ALTER TABLE `bill_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_comments`
--
ALTER TABLE `bug_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_files`
--
ALTER TABLE `bug_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_deals`
--
ALTER TABLE `client_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_questions`
--
ALTER TABLE `custom_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_calls`
--
ALTER TABLE `deal_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_emails`
--
ALTER TABLE `deal_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_files`
--
ALTER TABLE `deal_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_notes`
--
ALTER TABLE `debit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_options`
--
ALTER TABLE `deduction_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimations`
--
ALTER TABLE `estimations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_employees`
--
ALTER TABLE `event_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_responses`
--
ALTER TABLE `form_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal_items`
--
ALTER TABLE `journal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_calls`
--
ALTER TABLE `lead_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_emails`
--
ALTER TABLE `lead_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_types`
--
ALTER TABLE `payslip_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_types`
--
ALTER TABLE `performance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pipelines`
--
ALTER TABLE `pipelines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan_requests`
--
ALTER TABLE `plan_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_units`
--
ALTER TABLE `product_service_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projectstages`
--
ALTER TABLE `projectstages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_invoices`
--
ALTER TABLE `project_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_tasks`
--
ALTER TABLE `project_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposal_products`
--
ALTER TABLE `proposal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `set_salaries`
--
ALTER TABLE `set_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_reports`
--
ALTER TABLE `stock_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_replies`
--
ALTER TABLE `support_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_checklists`
--
ALTER TABLE `task_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_stages`
--
ALTER TABLE `task_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_photos`
--
ALTER TABLE `track_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_deals`
--
ALTER TABLE `user_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_leads`
--
ALTER TABLE `user_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD CONSTRAINT `client_deals_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD CONSTRAINT `deal_calls_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD CONSTRAINT `deal_discussions_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD CONSTRAINT `deal_emails_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD CONSTRAINT `deal_files_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD CONSTRAINT `deal_tasks_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD CONSTRAINT `lead_calls_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD CONSTRAINT `lead_discussions_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD CONSTRAINT `lead_emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD CONSTRAINT `lead_files_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD CONSTRAINT `user_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_deals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD CONSTRAINT `user_leads_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
