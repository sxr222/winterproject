-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 07, 2020 at 06:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hw2_witAI`
--

-- --------------------------------------------------------


DROP DATABASE IF EXISTS hw2_witAI;
CREATE DATABASE hw2_witAI;
USE hw2_witAI;


--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(100) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `keyword`, `answer`) VALUES
(1, 'exam', 'Ah, Exams. Even though exams seem so important, your entire future doesn\\\'t depend on them. Don\\\'t give a test the power to define you!'),
(2, 'finance', 'You can check some free food around Lehigh:\r\nhttps://www.foodpantries.org/ci/pa-lehigh_valley'),
(3, 'relationship', 'You may want to talk with your counselor about your feeling.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);
