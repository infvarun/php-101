-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 05:52 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `intro` text NOT NULL,
  `article` longtext NOT NULL,
  `imgurl` text DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `intro`, `article`, `imgurl`, `created_on`, `author`, `category`) VALUES
(1, 'PHP Tutorial', 'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\r\n\r\nPHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP.\r\n\r\nPHP 7 is the latest stable release.', '\r\nPHP: Hypertext Preprocessor (or simply PHP) is a general-purpose programming language originally designed for web development. It was originally created by Rasmus Lerdorf in 1994;[6] the PHP reference implementation is now produced by The PHP Group.[7] PHP originally stood for Personal Home Page,[6] but it now stands for the recursive initialism PHP: Hypertext Preprocessor.[8]\r\n\r\nPHP code may be executed with a command line interface (CLI), embedded into HTML code, or used in combination with various web template systems, web content management systems, and web frameworks. PHP code is usually processed by a PHP interpreter implemented as a module in a web server or as a Common Gateway Interface (CGI) executable. The web server outputs the results of the interpreted and executed PHP code, which may be any type of data, such as generated HTML code or binary image data. PHP can be used for many programming tasks outside of the web context, such as standalone graphical applications[9] and robotic drone control.[10]\r\n\r\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on almost every operating system and platform, free of charge.[11]\r\n\r\nThe PHP language evolved without a written formal specification or standard until 2014, with the original implementation acting as the de facto standard which other implementations aimed to follow. Since 2014, work has gone on to create a formal PHP specification.[12]\r\n\r\nAs of September 2019, over 60% of sites on the web using PHP are still on discontinued/\"EOLed\"[13] version 5.6 or older;[14] versions prior to 7.1 are no longer officially supported by The PHP Development Team,[15] but security support is provided by third parties, such as Debian.[16]\r\n\r\nPHP development began in 1994 when Rasmus Lerdorf wrote several Common Gateway Interface (CGI) programs in C,[17][18][19] which he used to maintain his personal homepage. He extended them to work with web forms and to communicate with databases, and called this implementation \"Personal Home Page/Forms Interpreter\" or PHP/FI.\r\n\r\nPHP/FI could be used to build simple, dynamic web applications. To accelerate bug reporting and improve the code, Lerdorf initially announced the release of PHP/FI as \"Personal Home Page Tools (PHP Tools) version 1.0\" on the Usenet discussion group comp.infosystems.www.authoring.cgi on June 8, 1995.[20][21] This release already had the basic functionality that PHP has today. This included Perl-like variables, form handling, and the ability to embed HTML. The syntax resembled that of Perl, but was simpler, more limited and less consistent.[7]\r\n\r\nEarly PHP was not intended to be a new programming language, and grew organically, with Lerdorf noting in retrospect: \"I don\'t know how to stop it, there was never any intent to write a programming language [...] I have absolutely no idea how to write a programming language, I just kept adding the next logical step on the way.\"[22] A development team began to form and, after months of work and beta testing, officially released PHP/FI 2 in November 1997.\r\n\r\nThe fact that PHP was not originally designed, but instead was developed organically has led to inconsistent naming of functions and inconsistent ordering of their parameters.[23] In some cases, the function names were chosen to match the lower-level libraries which PHP was \"wrapping\",[24] while in some very early versions of PHP the length of the function names was used internally as a hash function, so names were chosen to improve the distribution of hash values.[25]\r\n\r\nPHP 3 and 4\r\n\r\nThis is an example of custom PHP code for the WordPress content management system.\r\nZeev Suraski and Andi Gutmans rewrote the parser in 1997 and formed the base of PHP 3, changing the language\'s name to the recursive acronym PHP: Hypertext Preprocessor.[7][26] Afterwards, public testing of PHP 3 began, and the official launch came in June 1998. Suraski and Gutmans then started a new rewrite of PHP\'s core, producing the Zend Engine in 1999.[27] They also founded Zend Technologies in Ramat Gan, Israel.[7]\r\n\r\nOn May 22, 2000, PHP 4, powered by the Zend Engine 1.0, was released.[7] As of August 2008 this branch reached version 4.4.9. PHP 4 is no longer under development nor will any security updates be released.[28][29]\r\n\r\nPHP 5\r\nOn July 14, 2004, PHP 5 was released, powered by the new Zend Engine II.[7] PHP 5 included new features such as improved support for object-oriented programming, the PHP Data Objects (PDO) extension (which defines a lightweight and consistent interface for accessing databases), and numerous performance enhancements.[30] In 2008, PHP 5 became the only stable version under development. Late static binding had been missing from PHP and was added in version 5.3.[31][32]\r\n\r\nMany high-profile open-source projects ceased to support PHP 4 in new code as of February 5, 2008, because of the GoPHP5 initiative,[33] provided by a consortium of PHP developers promoting the transition from PHP 4 to PHP 5.[34][35]\r\n\r\nOver time, PHP interpreters became available on most existing 32-bit and 64-bit operating systems, either by building them from the PHP source code, or by using pre-built binaries.[36] For PHP versions 5.3 and 5.4, the only available Microsoft Windows binary distributions were 32-bit IA-32 builds,[37][38] requiring Windows 32-bit compatibility mode while using Internet Information Services (IIS) on a 64-bit Windows platform. PHP version 5.5 made the 64-bit x86-64 builds available for Microsoft Windows.[39]\r\n\r\nOfficial security support for PHP 5.6 ended on 31 December 2018,[40] but Debian 8.0 Jessie will extend support until June 2020.[16]\r\n\r\nPHP 6 and Unicode\r\nPHP received mixed reviews due to lacking native Unicode support at the core language level.[41][42] In 2005, a project headed by Andrei Zmievski was initiated to bring native Unicode support throughout PHP, by embedding the International Components for Unicode (ICU) library, and representing text strings as UTF-16 internally.[43] Since this would cause major changes both to the internals of the language and to user code, it was planned to release this as version 6.0 of the language, along with other major features then in development.[44]\r\n\r\nHowever, a shortage of developers who understood the necessary changes, and performance problems arising from conversion to and from UTF-16, which is rarely used in a web context, led to delays in the project.[45] As a result, a PHP 5.3 release was created in 2009, with many non-Unicode features back-ported from PHP 6, notably namespaces. In March 2010, the project in its current form was officially abandoned, and a PHP 5.4 release was prepared containing most remaining non-Unicode features from PHP 6, such as traits and closure re-binding.[46] Initial hopes were that a new plan would be formed for Unicode integration, but as of 2014 none had been adopted.\r\n\r\nPHP 7\r\nDuring 2014 and 2015, a new major PHP version was developed, which was numbered PHP 7. The numbering of this version involved some debate.[47] While the PHP 6 Unicode experiment had never been released, several articles and book titles referenced the PHP 6 name, which might have caused confusion if a new release were to reuse the name.[48] After a vote, the name PHP 7 was chosen.[49]\r\n\r\nThe foundation of PHP 7 is a PHP branch that was originally dubbed PHP next generation (phpng). It was authored by Dmitry Stogov, Xinchen Hui and Nikita Popov,[50] and aimed to optimize PHP performance by refactoring the Zend Engine while retaining near-complete language compatibility.[51] As of 14 July 2014, WordPress-based benchmarks, which served as the main benchmark suite for the phpng project, showed an almost 100% increase in performance. Changes from phpng are also expected to make it easier to improve performance in the future, as more compact data structures and other changes are seen as better suited for a successful migration to a just-in-time (JIT) compiler.[52] Because of the significant changes, the reworked Zend Engine is called Zend Engine 3, succeeding Zend Engine 2 used in PHP 5.[53]\r\n\r\nBecause of major internal changes in phpng it must receive a new major version number of PHP, rather than a minor PHP 5 release, according to PHP\'s release process.[54] Major versions of PHP are allowed to break backward-compatibility of code and therefore PHP 7 presented an opportunity for other improvements beyond phpng that require backward-compatibility breaks. In particular, it involved the following changes:\r\n\r\nMany fatal- or recoverable-level legacy PHP error mechanisms were replaced with modern object-oriented exceptions[55]\r\nThe syntax for variable dereferencing was reworked to be internally more consistent and complete, allowing the use of the operators ->, [], (),{}, and ::, with arbitrary meaningful left-side expressions[56]\r\nSupport for legacy PHP 4-style constructor methods was deprecated[57]\r\nThe behavior of the foreach statement was changed to be more predictable[58]\r\nConstructors for the few classes built-in to PHP which returned null upon failure were changed to throw an exception instead, for consistency[59]\r\nSeveral unmaintained or deprecated server application programming interfaces (SAPIs) and extensions were removed from the PHP core, most notably the legacy mysql extension[60]\r\nThe behavior of the list() operator was changed to remove support for strings[61]\r\nSupport was removed for legacy ASP-style delimiters <% and %> and <script language=\"php\"> ... </script>[62]\r\nAn oversight allowing a switch statement to have multiple default clauses was fixed[63]\r\nSupport for hexadecimal number support in some implicit conversions from strings to number types was removed[64]\r\nThe left-shift and right-shift operators were changed to behave more consistently across platforms[65]\r\nConversions between integers and floating point numbers were tightened and implemented more consistently across platforms[65][66]\r\nPHP 7 also included new language features. Most notably, it introduces return type declarations for functions[67] which complement the existing parameter type declarations, and support for the scalar types (integer, float, string, and boolean) in parameter and return type declarations.[68]\r\n', 'card1php.png', '2019-11-17 14:35:47', 'John', 'Tutorial'),
(2, 'JS Tutorial', 'Here we learn JavaScript, starting from scratch and go on to advanced concepts like OOP.\r\n\r\nWe concentrate on the language itself here, with the minimum of environment-specific notes.', 'JavaScript was initially created to “make web pages alive”.\r\n\r\nThe programs in this language are called scripts. They can be written right in a web page’s HTML and run automatically as the page loads.\r\n\r\nScripts are provided and executed as plain text. They don’t need special preparation or compilation to run.\r\n\r\nIn this aspect, JavaScript is very different from another language called Java.\r\n\r\nWhy is it called JavaScript?\r\nWhen JavaScript was created, it initially had another name: “LiveScript”. But Java was very popular at that time, so it was decided that positioning a new language as a “younger brother” of Java would help.\r\n\r\nBut as it evolved, JavaScript became a fully independent language with its own specification called ECMAScript, and now it has no relation to Java at all.\r\n\r\nToday, JavaScript can execute not only in the browser, but also on the server, or actually on any device that has a special program called the JavaScript engine.\r\n\r\nThe browser has an embedded engine sometimes called a “JavaScript virtual machine”.\r\n\r\nDifferent engines have different “codenames”. For example:\r\n\r\nV8 – in Chrome and Opera.\r\nSpiderMonkey – in Firefox.\r\n…There are other codenames like “Trident” and “Chakra” for different versions of IE, “ChakraCore” for Microsoft Edge, “Nitro” and “SquirrelFish” for Safari, etc.\r\nThe terms above are good to remember because they are used in developer articles on the internet. We’ll use them too. For instance, if “a feature X is supported by V8”, then it probably works in Chrome and Opera.\r\n\r\nHow do engines work?\r\nEngines are complicated. But the basics are easy.\r\n\r\nThe engine (embedded if it’s a browser) reads (“parses”) the script.\r\nThen it converts (“compiles”) the script to the machine language.\r\nAnd then the machine code runs, pretty fast.\r\nThe engine applies optimizations at each step of the process. It even watches the compiled script as it runs, analyzes the data that flows through it, and further optimizes the machine code based on that knowledge.', 'card2js.png', '2019-11-19 04:42:04', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`) VALUES
(1, 'john', '1234', 'John'),
(2, 'Ted', '1234', 'Ted Moss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
