-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 01:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voila-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `content`, `user_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Itaque omnis distinctio minus nisi et aut magni.', 'itaque-omnis-distinctio-minus-nisi-et-aut-magni', 'articles/post-landscape-1.jpg', 'Consectetur quia voluptatum recusandae. Dolorum reprehenderit maiores aut commodi dolorem. Est vitae ducimus ut rerum.\n\nRatione dicta vero tempore ab hic minima ad fugit. Eligendi id velit ut tempore. Velit velit cupiditate distinctio ut debitis dignissimos dignissimos.\n\nSit libero iusto fugit non facilis. Quo optio quibusdam est molestias culpa. Repellat non consequatur accusamus iure. Ab et dolores autem autem.\n\nSint quis aut quibusdam cupiditate eius. Illo ut voluptatem neque optio nemo corrupti voluptas praesentium.', 3, 5, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(2, 'Est velit nemo repellat sit delectus.', 'est-velit-nemo-repellat-sit-delectus', 'articles/post-landscape-2.jpg', 'Iure hic autem voluptas placeat possimus accusantium. Perspiciatis laudantium voluptatem vel. Dolorum aut excepturi qui non ut aut rerum. Omnis iure eum doloremque ipsam odit velit voluptatem.\n\nArchitecto tenetur provident maiores commodi quo. Provident et possimus ab. Harum quasi ea impedit sit nam qui minus.\n\nPerspiciatis animi incidunt iure sapiente impedit iste laboriosam. Illum perspiciatis omnis aspernatur eius qui in officia aliquid. Debitis reprehenderit quia tempore voluptates qui ipsam in ut. Ratione libero quasi voluptas vitae nostrum. Ea laudantium repellat alias dignissimos.\n\nEnim odio sint quisquam eveniet harum adipisci et assumenda. Est omnis et natus quae quas quaerat totam. Inventore consequuntur veniam tempora aut autem ea perferendis.', 3, 3, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(3, 'Rerum harum et ipsum.', 'rerum-harum-et-ipsum', 'articles/post-landscape-3.jpg', 'Quasi quia esse reprehenderit. Quia rerum enim quam modi soluta natus maxime dolores. Voluptatem facere modi minima et error. Nulla quo minima recusandae.\n\nRepellendus voluptas quam cumque enim. Aliquam explicabo dignissimos quibusdam molestias est delectus officia. Laborum dolor est earum aut inventore iusto omnis nihil. Ipsa ullam consequatur vero nam.\n\nSit debitis non asperiores quia. Explicabo vel optio dolores velit culpa. Sit et hic voluptatibus animi porro tempore officiis.\n\nItaque sed quia est placeat modi molestiae sint. Culpa unde molestias dolorum dolorem. Ad cumque enim tenetur veritatis alias.', 6, 2, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(4, 'Corrupti molestiae iste aliquam voluptates et velit.', 'corrupti-molestiae-iste-aliquam-voluptates-et-velit', 'articles/post-landscape-4.jpg', 'Dolores et tenetur deleniti culpa. Consequuntur nisi est tenetur facilis culpa. Quidem iusto eligendi fugit voluptatum consectetur sed inventore non.\n\nEligendi necessitatibus eaque aliquid non unde. Praesentium a est aperiam numquam. Quos id repudiandae qui. Assumenda quae voluptatem voluptas aut.\n\nConsequatur aut eveniet rem eius. Saepe consequatur reiciendis repudiandae pariatur.\n\nLaudantium quam rerum esse provident fugit eos incidunt. Necessitatibus cum commodi velit. Ut fugiat aut rerum. Totam doloribus vitae rem laudantium aut libero omnis.', 6, 4, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(5, 'Culpa natus quisquam quisquam sed beatae fugit.', 'culpa-natus-quisquam-quisquam-sed-beatae-fugit', 'articles/post-landscape-5.jpg', 'Labore architecto doloremque repellendus nam atque similique aut. Aliquid tempora quo aut veritatis quia enim debitis. Consequatur deleniti qui numquam.\n\nIpsa est libero aut. Et qui itaque dolorem culpa laborum. Ut debitis inventore ducimus quidem.\n\nVelit voluptas corporis doloribus ratione. Magnam esse sint repellendus. Vitae qui aperiam necessitatibus suscipit praesentium temporibus.\n\nVitae cupiditate commodi eveniet qui. Rerum et repellat quo voluptatem ut et magnam. Voluptas aliquam ut voluptatem hic sed eos error ad.', 6, 2, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(6, 'Quaerat est rerum quos id cupiditate omnis nihil.', 'quaerat-est-rerum-quos-id-cupiditate-omnis-nihil', 'articles/post-landscape-6.jpg', 'Ex et dolor quo quisquam ullam dicta quos. Similique quis quis voluptatum laborum. Ut nihil vero voluptate reiciendis quasi. Velit iusto consequatur blanditiis. Porro reiciendis quia et distinctio voluptates enim eaque.\n\nVoluptatem sequi ad ipsa rem unde. Molestiae sit quidem quibusdam minus. Accusamus voluptas autem autem minima quia commodi est. Ab id est architecto porro.\n\nSed autem ipsum aut pariatur. Ducimus consequatur voluptas sed cupiditate dicta. Quos ipsum dolorem amet aut expedita perferendis deserunt. Eos illum et soluta qui est est voluptates magni.\n\nAccusantium aut itaque molestiae consequatur. Fugit aut nesciunt accusantium blanditiis quo. Consectetur aliquid laudantium sint architecto. Necessitatibus impedit nostrum ratione.', 4, 2, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(7, 'Aut fugit recusandae ea quis illum.', 'aut-fugit-recusandae-ea-quis-illum', 'articles/post-landscape-7.jpg', 'Eius veritatis incidunt autem aspernatur iste deserunt. Voluptatem laborum tenetur officia aut ea delectus. Autem laboriosam enim sunt dolor recusandae quia. Enim quas laudantium sit blanditiis quo qui praesentium.\n\nBlanditiis sint odio autem eos libero. Consequatur et suscipit nulla aut eos. Eaque ad velit consequatur. Ipsum aperiam cum eum expedita itaque.\n\nQuae quos fuga est aliquam esse. Mollitia et nulla ut explicabo repellendus et. Voluptas eligendi tempora eos. Ab modi ullam consequatur consequatur.\n\nEaque laboriosam eveniet pariatur modi. Ipsum maxime est ut ratione. Qui ut ipsam eaque quaerat id tempore.', 2, 5, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(8, 'Sed iure quisquam amet aliquid debitis amet enim qui.', 'sed-iure-quisquam-amet-aliquid-debitis-amet-enim-qui', 'articles/post-landscape-8.jpg', 'Saepe molestias autem provident ea quas commodi quos. Sint sit consequatur et. At dolor veritatis repudiandae. Voluptas ea saepe nihil ipsum voluptatem. Nesciunt fuga eum sunt quaerat aut.\n\nDolores nemo placeat natus ipsum corporis dicta qui sed. Veritatis ipsam ipsum qui. Sit tempore omnis autem sit et soluta maiores.\n\nNon dolorem recusandae ullam. Et quidem exercitationem eveniet et sit sed. Eveniet placeat dolore maxime vitae similique exercitationem animi. Autem consequatur suscipit laboriosam vero ea temporibus.\n\nVoluptates error repellendus repudiandae tenetur et perferendis molestiae eligendi. Aut at sit aut vitae quod qui quasi. Provident officia dolorem ab libero enim. Amet iusto voluptate aut quasi sit.', 5, 5, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(9, 'Est eaque repudiandae vero officiis fugiat qui atque.', 'est-eaque-repudiandae-vero-officiis-fugiat-qui-atque', 'articles/post-landscape-1.jpg', 'Debitis eligendi sequi et aperiam minima vel nostrum. Quia minima officiis et. Doloribus voluptas optio sint molestiae ut.\n\nNemo pariatur modi molestiae ducimus corrupti ducimus. Illum sed adipisci provident possimus dignissimos vel exercitationem. Inventore tempora in voluptas expedita soluta molestias voluptas. Quidem amet dolor odit saepe asperiores nobis saepe.\n\nExpedita sed nam et voluptate voluptatem beatae. Sapiente eos et doloremque deserunt perferendis. Aut neque et quo aspernatur dignissimos.\n\nSapiente culpa recusandae architecto similique non. Quidem facere nostrum doloremque fugit. Quae minus facilis nostrum et sit reprehenderit corrupti.', 3, 3, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(10, 'Cum voluptas velit cupiditate saepe molestiae beatae soluta.', 'cum-voluptas-velit-cupiditate-saepe-molestiae-beatae-soluta', 'articles/post-landscape-2.jpg', 'Aut neque non molestiae vitae eum dolorum. Harum non fuga aliquam architecto quo dolorum quisquam. Enim cum porro cumque ut rerum. Aspernatur id sed et dolores dolorem omnis eveniet eum.\n\nQuis dolores sint dolore et voluptatum nemo enim. In consequatur enim dolorem at odio vel deserunt fugit. Placeat tenetur sapiente dignissimos voluptates officiis et.\n\nRepellendus est recusandae minus quisquam officiis autem qui. Quibusdam molestiae accusamus quisquam exercitationem vero quo iusto distinctio. Dolores atque officiis ullam voluptas.\n\nEx minus ea dolores est laborum placeat accusantium. Qui nostrum inventore quia ea voluptatem sit nihil. Eos molestiae ut qui possimus.', 4, 4, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(11, 'Qui in tempore officia ad sequi eum.', 'qui-in-tempore-officia-ad-sequi-eum', 'articles/post-landscape-3.jpg', 'Eos nostrum ut qui velit labore et. Sint cum voluptas assumenda accusamus doloremque dolore id qui. Autem ut et quo porro nostrum deleniti.\n\nVel fugit non debitis. Autem voluptas ducimus officia qui laboriosam id eligendi. Ab non ab vel minima deleniti ab ratione. Sed fuga et esse perspiciatis id voluptatem qui.\n\nNumquam ut officia doloribus consequatur perspiciatis autem qui. Eum atque beatae magnam et quo. Esse natus odit ut cupiditate.\n\nQuisquam earum architecto et dolores. Tempore perspiciatis minima error.', 3, 2, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(12, 'Est voluptatum omnis minus velit enim sunt reiciendis.', 'est-voluptatum-omnis-minus-velit-enim-sunt-reiciendis', 'articles/post-landscape-4.jpg', 'Et reiciendis aliquam ea et. Ex quam repellat et illo eos velit. Reprehenderit vero dolorem sit et quam amet.\n\nNatus voluptatem consectetur voluptatem vel quo occaecati consequatur. Dolores et quisquam et optio. Ipsum cum doloremque velit esse. Quibusdam ipsa odio earum numquam.\n\nAutem totam mollitia distinctio vitae cum et. Est rerum rerum quas qui natus voluptas eum et. Ducimus tempore omnis quisquam esse. Nam temporibus blanditiis nam qui. Atque vero in doloribus qui dolorem tempore.\n\nCommodi rem quidem natus qui dolore tempore sit. Omnis tenetur placeat eum similique. Sit ut sit molestias necessitatibus rerum nulla.', 2, 5, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(13, 'Debitis numquam omnis laudantium qui iste nostrum est dolore.', 'debitis-numquam-omnis-laudantium-qui-iste-nostrum-est-dolore', 'articles/post-landscape-5.jpg', 'Magni aspernatur delectus officia voluptas dolor qui. Mollitia assumenda aut veritatis veniam ab. Non earum distinctio quia quia porro.\n\nNon ipsa unde voluptate et tempore eos animi. Ullam sunt distinctio ipsum explicabo. Consequatur consectetur voluptatem sed architecto possimus ipsa.\n\nSunt sit minus ea quos. Velit fugit doloribus vel. Molestiae necessitatibus odit qui magni ducimus dolorem.\n\nQuis enim perspiciatis rem perspiciatis. Ut aut inventore aliquid recusandae ut error exercitationem nesciunt. Amet sit ratione rerum qui alias eligendi quod possimus. Nostrum possimus ipsa rerum illo.', 2, 5, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(14, 'Consequuntur pariatur aut sint aliquid non.', 'consequuntur-pariatur-aut-sint-aliquid-non', 'articles/post-landscape-6.jpg', 'Commodi vel repudiandae pariatur minus est et. Quae repellendus et dignissimos repellat sint modi numquam.\n\nDolorem veniam saepe quia. Dolores quo nostrum qui provident iure omnis fuga.\n\nIpsa quia dolor ratione qui et. Error suscipit ut provident dolores fugiat ipsam. Veniam quia culpa aperiam officiis nostrum quo dolores vitae.\n\nIure eum reprehenderit error perferendis. Officia reprehenderit sed neque est autem iusto dolores. Voluptatibus illo non nulla quos et aliquid quaerat. Ab dolor recusandae cupiditate ut. Eaque incidunt quidem perspiciatis porro et rem.', 2, 5, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(15, 'Voluptatem rerum animi magni laborum.', 'voluptatem-rerum-animi-magni-laborum', 'articles/post-landscape-7.jpg', 'Autem autem veniam dolorem incidunt earum. Ipsam voluptate et et asperiores error non sint. Et eum quibusdam facere architecto. Rerum magni maiores eos.\n\nQuidem minima mollitia repudiandae modi. Est nemo sint hic sit molestias libero. Nemo aspernatur doloremque incidunt. Et mollitia consectetur aperiam aut cumque in qui.\n\nUt est suscipit et. Harum aut quibusdam assumenda aut nemo quis. Ad voluptate animi voluptate vel nobis dolor.\n\nQuis velit aperiam quis atque. Veniam cupiditate saepe et vel nostrum omnis provident. Alias adipisci facere natus explicabo blanditiis ut. Nobis alias est consequatur unde repellat fugiat ducimus.', 5, 4, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(16, 'Minus nostrum dignissimos eum officia est nisi at quia.', 'minus-nostrum-dignissimos-eum-officia-est-nisi-at-quia', 'articles/post-landscape-8.jpg', 'Nostrum aspernatur expedita incidunt vel aut. Perferendis numquam voluptates veritatis aut est dolorum. Est iusto aut qui consequatur ducimus sed.\n\nExplicabo tempore unde inventore sed aut sed officia. Sint aut aperiam tempora molestiae. Quis optio sed veniam autem consequatur totam natus. Aut voluptas quos nihil sequi sed impedit maiores.\n\nNatus ut placeat dolorum omnis. Inventore consequatur vero est omnis consectetur similique. Est eligendi nihil quis modi accusantium sapiente. Aspernatur ut dolor perferendis odit doloribus dicta. Ipsa et asperiores voluptas sit nobis quia.\n\nReiciendis qui iusto iure quos. Ut unde eligendi dolor est earum recusandae sit laboriosam.', 2, 4, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(17, 'Culpa et voluptates aut reiciendis labore velit laboriosam.', 'culpa-et-voluptates-aut-reiciendis-labore-velit-laboriosam', 'articles/post-landscape-1.jpg', 'Numquam est in reprehenderit soluta cupiditate totam alias. Ut molestiae est et et dignissimos recusandae qui. Ea est aut non accusantium. Laudantium minus eos earum libero aut adipisci velit voluptate. Harum quasi officia cum.\n\nDeserunt eos quaerat nisi illo sint iste quasi molestias. Molestias ut rem veritatis voluptas eligendi quos. Molestiae aut exercitationem quia sit.\n\nDoloribus aut enim dolor libero voluptas quos. A aut minus sint occaecati aspernatur quia odit. Illum et iure ipsa minus earum at facilis.\n\nConsectetur qui et unde corporis maiores nam. Ea facere placeat maxime eaque sed fugiat saepe. Sint quam iure dolore ad.', 5, 1, 'draft', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(18, 'Perferendis repudiandae maiores eos enim sed quod.', 'perferendis-repudiandae-maiores-eos-enim-sed-quod', 'articles/post-landscape-2.jpg', 'Velit et error sunt adipisci aliquam. Eum nobis ut nobis esse natus temporibus quis. Aspernatur corporis beatae sint dolores velit. Praesentium rem in incidunt qui itaque est.\n\nPerferendis accusamus voluptas nisi eligendi rerum omnis eligendi. Illum et quidem placeat repudiandae. Dolores aut quidem occaecati molestiae quis omnis.\n\nDolore et soluta est aspernatur voluptates suscipit ducimus. Animi quo nisi molestiae fugiat vero velit accusamus. Veritatis quis repellat hic. Quasi sit quisquam nam quia molestias. Quam et qui vel harum odio.\n\nId quia doloribus quia minus cupiditate accusantium. Maiores itaque hic fugit architecto exercitationem porro. Et quisquam harum dolorum quasi quia. Quis voluptatem aperiam ut soluta sit. Earum enim aperiam impedit omnis.', 5, 2, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(19, 'Qui eligendi perferendis maiores dicta quia iure vitae.', 'qui-eligendi-perferendis-maiores-dicta-quia-iure-vitae', 'articles/post-landscape-3.jpg', 'Voluptatem et est occaecati optio unde adipisci. Iure sapiente velit omnis optio nam in hic. Consequatur delectus temporibus provident ullam illum modi ut ratione. Maiores temporibus et dignissimos voluptates ipsa deleniti autem.\n\nIure ipsa atque et delectus. Est dolorum pariatur id consectetur ratione. Et necessitatibus sapiente deleniti.\n\nImpedit inventore voluptatem eum aut maxime minus ratione. Quas ratione voluptatem numquam temporibus. Ipsam cum sit eligendi repudiandae.\n\nUt nihil tempora dolores corporis minus. Ipsa dolores itaque consectetur sed officia dolor velit. Dolores quam odit dignissimos nulla necessitatibus ut nisi sit.', 3, 3, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(20, 'Rerum molestiae et voluptatem non laudantium neque non.', 'rerum-molestiae-et-voluptatem-non-laudantium-neque-non', 'articles/post-landscape-4.jpg', 'Eius eligendi ex esse et laudantium maxime sed ullam. Necessitatibus non est omnis dolores temporibus odio voluptatem. Est asperiores aut cum amet molestiae.\n\nRecusandae voluptate rerum blanditiis tempora dolores voluptatem fugit. Et ducimus facere deserunt deserunt nulla fugiat. Nihil doloribus eveniet id tempora saepe debitis facere.\n\nVel deleniti qui sed ut. Voluptatem fuga vel facere accusamus facilis laboriosam.\n\nOdio harum at quae officia optio suscipit. Aut est vel ex reiciendis quo. Ab quia animi et qui quo. Voluptatum vel voluptatem sapiente suscipit.', 4, 4, 'published', '2025-12-09 07:33:40', '2025-12-09 07:33:40'),
(21, 'Soluta et architecto eos voluptatem corrupti expedita.', 'soluta-et-architecto-eos-voluptatem-corrupti-expedita', 'articles/post-landscape-5.jpg', 'Magnam qui assumenda et sunt voluptatem officiis. Atque repellendus rem dicta est voluptas tempore. Accusantium veniam vitae recusandae sit. Ipsa quo voluptatem neque autem fugiat esse.\n\nDolor tempore aut aliquam et at. Neque excepturi eos libero repellendus. Nihil unde accusamus nobis quia excepturi vitae dolorem. Placeat adipisci nemo quod officia sapiente esse.\n\nVoluptas nobis culpa provident laborum mollitia. Non autem sed tempora nihil. Facilis omnis vel repellendus amet.\n\nEst culpa nisi sunt reiciendis. Nihil aut et consequatur sit qui est officia. Fugit iusto explicabo inventore eveniet fuga nesciunt. Beatae provident modi illo voluptatem ad aperiam soluta beatae.', 3, 2, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(22, 'Dicta et porro quo.', 'dicta-et-porro-quo', 'articles/post-landscape-6.jpg', 'Fugit nihil reiciendis minus. Dolorem repudiandae hic optio necessitatibus eos praesentium repellendus. Ut dolores nulla laboriosam ipsum cumque sunt. Similique magni sint quisquam voluptatem.\n\nEt officia veritatis et deserunt aut. Qui nostrum deserunt ex doloremque non eum nihil. Et nisi accusantium enim qui molestias.\n\nDicta amet et voluptas neque nostrum consequatur repellat. Expedita quod ut maiores qui. Eaque at sed dolor.\n\nReprehenderit voluptas et fuga nobis praesentium nemo et illo. Sed dolore modi voluptatem. Ea rerum libero ut.', 5, 1, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(23, 'Voluptas optio autem ullam aut error similique impedit.', 'voluptas-optio-autem-ullam-aut-error-similique-impedit', 'articles/post-landscape-7.jpg', 'Omnis illo aperiam autem sed atque et a. Exercitationem temporibus est officiis et aut odit ut dolores. Possimus corrupti eveniet enim cum accusamus.\n\nCulpa ipsam blanditiis nobis vero quam modi. Eaque consequatur soluta consequatur deleniti. Fuga vel ea aut et voluptas perspiciatis quia fugiat.\n\nVeritatis architecto omnis veritatis delectus. Et et similique itaque dolorem.\n\nLibero incidunt rerum at. Voluptate voluptatem ipsa magnam omnis omnis eum sint pariatur. Nam quae doloribus eum quia.', 5, 1, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(24, 'Quos similique et voluptatem distinctio sed.', 'quos-similique-et-voluptatem-distinctio-sed', 'articles/post-landscape-8.jpg', 'Aliquid at voluptatem et. Vel qui provident ut sunt. Sit corporis consequatur quia mollitia voluptatem. Quia nemo aut ut qui perspiciatis. Officiis nisi asperiores hic voluptatem nobis rerum deserunt.\n\nEt delectus voluptas accusantium voluptatem dolorem ullam qui laboriosam. Harum odio soluta veritatis. Magnam rerum iste saepe porro omnis amet quidem.\n\nAmet et et quidem dolor delectus ut. Facilis et sed quos enim esse incidunt. Vel dignissimos libero et aliquid dolor quo ad.\n\nOptio labore quibusdam voluptas rem sed. Inventore dolor ullam quia. Dolores qui dignissimos pariatur voluptatem molestiae.', 5, 4, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(25, 'Nulla aut atque aut et.', 'nulla-aut-atque-aut-et', 'articles/post-landscape-25.jpg', 'Provident et impedit est aut voluptas sint pariatur officia. Aliquam est omnis incidunt animi a id. Sequi amet porro quibusdam ipsa.\n\nSit in praesentium sed dolorem. Voluptatem ut eos quia facere vero vitae eos. Quae consequuntur nemo atque ipsum dolores amet aut. Provident deserunt ut id reprehenderit eaque impedit.\n\nReprehenderit quod sequi iste eveniet molestias adipisci. Optio blanditiis cupiditate omnis aspernatur. Quo aut ea dolorum commodi id. Velit et nulla excepturi facilis asperiores.\n\nAlias odio quod et numquam eius debitis. Odit minima eaque eos et. Natus voluptatem molestiae sint laborum repellendus eveniet minima.', 6, 2, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(26, 'Pariatur eaque rem maiores velit.', 'pariatur-eaque-rem-maiores-velit', 'articles/post-landscape-5.jpg', 'Enim accusamus velit iure. Corrupti aut officiis harum quia voluptate. Nihil quibusdam aut harum beatae ipsa inventore. Corporis minus optio harum eum porro occaecati ullam. Illo aliquid in odit iste explicabo qui illum id.\n\nQuia animi omnis voluptas voluptas. Magni quod assumenda occaecati voluptas eaque. Accusamus debitis dignissimos velit corrupti asperiores. Quaerat eum omnis quia earum est aut.\n\nOdit pariatur quibusdam quas dolores. Qui inventore nihil incidunt consequatur excepturi. Quibusdam necessitatibus deleniti alias magnam.\n\nQuae enim nihil fugiat magni qui vero. Dolorum quia vero doloribus alias alias quia. Quia minus sit debitis harum officia. Rem sed officiis doloribus quidem quibusdam id exercitationem.', 6, 2, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(27, 'Tenetur aut quod est ducimus.', 'tenetur-aut-quod-est-ducimus', 'articles/d3faN0YMICaxXSnYN8wV02H3fyyMpD1TJBWE0XC0.jpg', 'Nihil sed omnis dolor ad qui alias explicabo. Dicta ullam distinctio voluptates repellendus aliquid. Consequuntur dolorem aut dolor labore consequuntur ipsum iure. Illum consectetur incidunt ipsa cum. Est quos eveniet natus.\r\n\r\nAccusamus fugit aliquam dicta maxime. Amet perspiciatis quos perferendis tenetur. Id iure quasi quaerat quo sapiente dolorum at laudantium. Accusantium voluptatem nobis corrupti molestiae labore asperiores quasi.\r\n\r\nEt quo in distinctio cupiditate. Sit possimus et nobis. Dolor dolorum perferendis qui nobis dolorem. Fugiat optio voluptates eum quod neque ab omnis.\r\n\r\nCum aut quae ad consequatur hic ut ut dolorem. Ipsum nostrum rerum sint totam natus natus. Consequuntur doloremque aut esse pariatur.', 4, 5, 'draft', '2025-12-09 07:34:35', '2025-12-18 06:06:58'),
(28, 'Debitis voluptas quasi ad ea recusandae.', 'debitis-voluptas-quasi-ad-ea-recusandae', 'articles/post-landscape-28.jpg', 'Quis et perferendis impedit dolores necessitatibus commodi sed. Magni hic officia tempore quisquam placeat id cupiditate. Quasi voluptas ea quo totam odio culpa. Quis laudantium ad quia nulla illo. Consequatur et cum omnis modi unde explicabo sit veritatis.\n\nEnim incidunt omnis doloribus praesentium saepe doloremque repudiandae. Laboriosam eum adipisci non molestiae dicta. Est quia architecto omnis necessitatibus.\n\nQuo occaecati et explicabo architecto magnam. Error at nostrum in quam ut. Quo quia placeat voluptate. Facere magnam alias consequatur enim id totam autem.\n\nPlaceat veritatis porro quia quam. Dolore tenetur et et maxime. Perferendis dolorum quia soluta amet asperiores eaque.', 2, 5, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(29, 'Sit et debitis iusto rem non.', 'sit-et-debitis-iusto-rem-non', 'articles/post-landscape-6.jpg', 'Laborum ea in explicabo consequatur laudantium. Exercitationem minima et atque voluptatem voluptas sequi voluptatem. Qui et fuga sit velit et. Veritatis iure occaecati ratione ad molestiae.\n\nMaiores quia dolor beatae sed ullam aspernatur. Corrupti cum maiores quia tempore. Suscipit aut animi enim.\n\nPorro ut pariatur quo voluptas occaecati asperiores voluptas. Ullam animi expedita optio atque. Et nihil aut incidunt et.\n\nOdit ipsa qui praesentium molestias. Non qui id veritatis. Et voluptatem voluptas sapiente.', 4, 2, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(30, 'Consequatur consequatur perspiciatis maxime maiores vitae consequuntur numquam.', 'consequatur-consequatur-perspiciatis-maxime-maiores-vitae-consequuntur-numquam', 'articles/post-landscape-30.jpg', 'Et asperiores omnis dolore provident. Recusandae dolores dolorum fuga et dolores ea. Consequatur repellat quod voluptatem est. Facilis ab eum sunt distinctio maiores culpa.\n\nPorro ipsum neque fugiat nemo ipsam. Officiis debitis est distinctio quo numquam dolorum. Qui recusandae recusandae perspiciatis sit. Aut voluptatem reprehenderit vitae modi facere nam aut.\n\nUt aspernatur consectetur natus cupiditate reprehenderit dolor iste omnis. Dolorem aut voluptates consequatur enim sed. Aut eum et porro aliquid dolorum qui est. Expedita laboriosam nihil aperiam eligendi.\n\nExcepturi excepturi repudiandae quo reprehenderit nihil odio modi. Ea sint sequi enim tenetur. Soluta qui quia odio consequatur. Dolorem rerum dolorum expedita qui aliquid iure perferendis. Fugit est consequatur hic sint voluptatem.', 1, 3, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(31, 'Ut accusamus a eum perferendis veniam sunt non.', 'ut-accusamus-a-eum-perferendis-veniam-sunt-non', 'articles/post-landscape-31.jpg', 'Aut facilis et accusamus eligendi quidem. Voluptates tempora occaecati blanditiis et quod. Mollitia quasi odio numquam et. A non porro quas sit doloribus perferendis magnam soluta. Veniam nisi minus quod autem nisi.\n\nAssumenda quidem et quia et. Deleniti voluptas culpa rerum quas expedita error soluta. Natus omnis laboriosam omnis. Qui sit hic et autem quis inventore harum.\n\nTenetur eligendi et dolorem aut harum aliquid molestiae quos. Veniam qui impedit enim ducimus. Est id voluptate ut eos soluta consequatur praesentium voluptatem.\n\nEt quos inventore et enim alias. Qui doloribus sapiente cupiditate cumque dolorem. Sit at tempore id id et expedita. Eligendi quidem in reiciendis illo ducimus quasi. Veritatis suscipit sunt voluptatem rerum facilis.', 2, 2, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(32, 'Quae blanditiis ut cupiditate velit aut velit.', 'quae-blanditiis-ut-cupiditate-velit-aut-velit', 'articles/post-landscape-32.jpg', 'Vel nihil consequatur voluptatem quaerat culpa. Et eligendi qui doloremque dolor aut minima delectus. Et hic aliquam eos fugit ratione. Consequatur optio ratione perferendis est aperiam vero voluptatem sint.\n\nEnim placeat dolores et deserunt pariatur veritatis. Fuga voluptatem iusto eum. Tempora dignissimos sequi voluptatem aut incidunt.\n\nMaiores qui reprehenderit natus eum ipsam id. Debitis nesciunt unde at dolorem qui molestias in. Consequuntur rerum debitis voluptas recusandae modi accusamus cum. Aut veritatis quia et necessitatibus animi.\n\nOptio voluptates sed at dolor velit. Esse neque neque quibusdam adipisci excepturi rerum animi ullam. Est nemo officiis maxime suscipit quam enim eum.', 6, 2, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(33, 'Consequatur qui sequi pariatur ut voluptates occaecati.', 'consequatur-qui-sequi-pariatur-ut-voluptates-occaecati', 'articles/post-landscape-33.jpg', 'Id animi molestiae dolorem exercitationem non quas dicta dolorem. Voluptatem quis et earum aut. Eum qui nostrum consequatur.\n\nSunt quia odit impedit omnis eum. Omnis sit similique modi qui repellat et. Ut est sit est omnis provident voluptas. Est ut temporibus ipsum id temporibus voluptas at.\n\nFugiat natus est eos dolorum sapiente. Suscipit porro odit voluptates deleniti et quas. Doloremque aut consequatur nemo optio voluptas.\n\nOfficiis ea ut tempora dolorem molestiae iste ea architecto. Perferendis totam sit non facilis labore. Non provident ad facilis in et. Molestiae consequatur fuga occaecati nobis officiis et ut.', 2, 4, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(34, 'Animi ea dolor et quo molestias et rerum ut.', 'animi-ea-dolor-et-quo-molestias-et-rerum-ut', 'articles/A1i0SlAq7mUQgRHhPb91XbeulVMnoD74yYEx4hev.jpg', 'Modi labore ab temporibus qui distinctio ut dolorem. Nulla ut dolorem repellendus vel repellat vel aut. Omnis qui quia quibusdam et iure eligendi. Repellat ipsum rem ipsa repellat adipisci ex et.\r\n\r\nId praesentium corrupti et delectus. Excepturi corporis labore voluptates corrupti pariatur itaque sed voluptatem. Soluta velit non nesciunt excepturi sunt fuga. Officia ex reprehenderit quae facilis nihil qui nisi.\r\n\r\nCum animi et qui tempore. Temporibus quidem culpa eum nostrum magnam doloremque quo velit. Consequatur ad eaque saepe. Inventore voluptas deserunt necessitatibus laborum.\r\n\r\nRepellat iure quae quae velit aperiam amet occaecati. Aliquid est in excepturi aut et architecto.', 4, 3, 'draft', '2025-12-09 07:34:35', '2025-12-18 06:06:08'),
(35, 'Quia quis veritatis omnis voluptatem minus iste eligendi.', 'quia-quis-veritatis-omnis-voluptatem-minus-iste-eligendi', 'articles/post-landscape-35.jpg', 'Sed atque sint excepturi tempora eum. Eligendi amet ea qui voluptatem eum.\n\nVoluptates aliquid deserunt quis iste ea. Cum nihil consequatur ut nesciunt eveniet ad. Explicabo iure cumque quibusdam. Natus voluptates perferendis vel nam quibusdam in molestiae. Ex mollitia veniam corporis a cumque.\n\nSint veritatis repellat dolores perspiciatis quaerat fugit id velit. Consequatur et non explicabo. Odit ut itaque magni aut ducimus excepturi et laboriosam. Minus ut adipisci quo voluptas inventore. Blanditiis ea eius nobis a aut.\n\nEt ipsum placeat iusto nihil id assumenda. Modi rerum magnam officia est fugiat in ratione. Aliquid vel accusamus eligendi perspiciatis impedit molestiae. Quasi alias voluptas quod vitae consequatur non.', 5, 5, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(36, 'Explicabo harum ut et ipsam eius.', 'explicabo-harum-ut-et-ipsam-eius', 'articles/post-landscape-36.jpg', 'Illo quidem consectetur eos. Cumque a dolores velit sint. Quisquam aut ipsum sit nisi totam pariatur nulla. Reprehenderit ad laborum ut quia odit.\n\nAd accusantium voluptas ex eligendi recusandae ea. Nam eum porro consequatur porro officiis maiores. Quis est ab qui quisquam consequuntur quo non. Vero odit ipsa sit itaque voluptatem omnis.\n\nIllo aut enim est. Et molestias quod magnam dignissimos perspiciatis. Voluptas consequatur sit aut quasi est. Nemo non veniam aut molestiae perspiciatis nulla molestias.\n\nMolestiae aperiam repudiandae voluptates ullam recusandae. Iusto qui aliquam et autem quia. Enim rerum eos exercitationem aut dignissimos vel voluptatem totam.', 1, 3, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(37, 'Velit omnis omnis est quo qui.', 'velit-omnis-omnis-est-quo-qui', 'articles/post-landscape-37.jpg', 'Porro nihil voluptatem deleniti odio. Tempore et quibusdam nisi dignissimos autem vel dignissimos. Voluptas ut rerum nihil incidunt ea sit. Libero modi quia magnam doloremque incidunt at sed ut.\n\nEum dolor a non quo quo. Qui quibusdam dolorem esse soluta. Omnis exercitationem eos sunt eveniet. Necessitatibus nihil ut sit quo natus id rerum. Nulla quae esse nihil atque consequatur voluptas.\n\nNobis nesciunt temporibus totam dolores. Est aut ea vitae dolore vel. Magni ex amet atque sed consequuntur rerum.\n\nRerum qui qui molestiae aliquam. Cupiditate deserunt fugiat sunt qui rerum. Dolores magnam aperiam dolores ea ut suscipit.', 2, 5, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(38, 'Ut aut iusto voluptates et illo ipsam aut quisquam.', 'ut-aut-iusto-voluptates-et-illo-ipsam-aut-quisquam', 'articles/post-landscape-38.jpg', 'Earum quo totam aut delectus doloremque eligendi alias. Nisi eum tenetur cumque laudantium. Earum labore sit dolores consequuntur. Rem vitae dolorum tempore a qui dignissimos.\n\nRatione autem nisi esse cumque placeat corporis nihil. Voluptatem assumenda nulla ut harum quisquam. Accusantium facilis culpa voluptatem dicta ut molestiae.\n\nNecessitatibus dolor quas tenetur ducimus iusto minus. Atque labore est alias sunt laudantium voluptatem. Non exercitationem laborum quos aut suscipit. Alias eum vel quod illum sit dolor.\n\nIpsam aliquid ad et alias quia architecto. Assumenda distinctio quam possimus recusandae blanditiis sequi doloribus. Totam nesciunt voluptatem repellendus illo perferendis. Modi harum qui aut quidem voluptas autem.', 3, 1, 'published', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(39, 'Ea sint tempora doloribus aut.', 'ea-sint-tempora-doloribus-aut', 'articles/post-landscape-39.jpg', 'Perspiciatis fuga id accusamus. Rerum magnam labore fugiat ut quia occaecati. Cupiditate provident suscipit delectus repudiandae officiis tempore.\n\nDolorem illo numquam debitis enim voluptas sint. Autem amet quaerat debitis maiores odit. Debitis ut nihil beatae at est ducimus nam. Quo aut voluptates excepturi autem eos deleniti culpa.\n\nCulpa eum et occaecati occaecati placeat. Sint iure praesentium doloremque porro sed et illo iste. Accusantium et velit doloremque voluptate aut et repudiandae.\n\nOdio sed saepe molestiae quod excepturi nemo. Facilis commodi molestias incidunt nostrum pariatur velit. Est maxime enim enim quidem voluptatem doloremque. Voluptas et voluptatem accusantium et quidem.', 2, 5, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(40, 'Earum nemo est iste beatae voluptatem pariatur molestias aut.', 'earum-nemo-est-iste-beatae-voluptatem-pariatur-molestias-aut', 'articles/post-landscape-40.jpg', 'Ab eius voluptate praesentium a. Soluta rerum quasi sint. Repellat rerum blanditiis eius est necessitatibus dicta est.\n\nVitae atque libero aut voluptatem. Nihil neque aliquam adipisci dolores iusto. Molestiae soluta labore porro distinctio est iste quae.\n\nOfficia aut aut saepe ut possimus. Perspiciatis amet molestiae inventore sit. Aut dolorum cum enim natus veritatis nostrum laborum. Porro aut harum perferendis consequatur. Quo suscipit placeat possimus reprehenderit ipsum velit a.\n\nDignissimos totam dicta aliquam. Aspernatur qui incidunt dolore ut perspiciatis ut tempora. Eos a quis quisquam sint optio alias. Ut qui minus totam molestias. Nisi temporibus quisquam alias quod similique earum.', 3, 1, 'draft', '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(41, 'Aut sint dicta aut ducimus non.', 'aut-sint-dicta-aut-ducimus-non', 'articles/post-landscape-41.jpg', 'Modi veritatis eum laudantium quia consequatur. Aliquid quia corporis modi at porro quia.\n\nUllam fugit consequatur ut. Laborum necessitatibus quo laudantium magnam harum. Voluptas expedita beatae accusamus cupiditate. Dolorem sit temporibus deleniti corporis dolore maiores quos.\n\nAut ducimus ut ducimus. Eius inventore consequuntur eos molestiae laborum perspiciatis. Ducimus unde eligendi soluta rerum aliquid autem odit consequatur.\n\nSit quos error voluptatem sed quas omnis ut. In velit dolores ullam tempore quasi iste.', 4, 5, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(42, 'Facilis eaque reiciendis accusamus molestiae eaque voluptatem.', 'facilis-eaque-reiciendis-accusamus-molestiae-eaque-voluptatem', 'articles/post-landscape-42.jpg', 'Consequatur eos aut incidunt aperiam a atque aut. Sed voluptates voluptatibus velit rem consequatur et sint. Quod quas eos corporis sint. Molestias neque iusto aliquid est harum impedit.\n\nQuis cumque rerum aut laborum. Dolor dolore consequuntur eum voluptas. Fugit a ut incidunt explicabo.\n\nMagnam ipsa delectus nihil ut amet. Nihil quo omnis aperiam iste error aperiam corrupti. Ea maxime nisi et ad molestiae quis maiores.\n\nMollitia eius dolorem minus sunt qui. Repellendus inventore aut autem fuga dolore eligendi molestias. Ipsam qui aliquid qui.', 3, 1, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(43, 'Ut iure et sit consequatur atque est.', 'ut-iure-et-sit-consequatur-atque-est', 'articles/post-landscape-43.jpg', 'Sit qui id voluptatum ut debitis asperiores. Quaerat sed esse vel ut beatae aliquam.\n\nQuod voluptas consequatur repellendus iure. Repellendus tempore et saepe maxime voluptas. Exercitationem alias non quasi eligendi.\n\nImpedit quia accusantium soluta voluptatibus. Officiis animi eos veritatis vitae quos. Quaerat qui atque provident voluptas totam mollitia.\n\nExplicabo officiis pariatur et architecto fugiat. Et officia mollitia exercitationem alias sed ut. Voluptatem quo velit harum accusamus mollitia. Sit cumque laudantium rerum fuga.', 6, 5, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(44, 'Ut similique praesentium consectetur non dolorum saepe suscipit.', 'ut-similique-praesentium-consectetur-non-dolorum-saepe-suscipit', 'articles/post-landscape-3.jpg', 'Officia omnis dolores optio deserunt nisi perspiciatis qui est. Et sed ut maiores est modi ducimus enim. Quia veritatis tempore iure adipisci sunt nihil ut. Qui architecto aut aliquid incidunt perspiciatis voluptatem qui.\n\nItaque ut ea quia aspernatur laboriosam ut. Aut non totam doloribus odio. Sed fugit labore quia soluta maxime et praesentium enim. Ducimus est provident voluptatum porro reiciendis.\n\nEt illo quae aliquam sint. Velit in sed at. Fugiat dolor error quas deserunt omnis veniam. Delectus sit doloremque sit amet ea aut.\n\nVel consequatur modi rerum rerum eum expedita. Omnis eos sunt rerum sit. In veniam quasi odit id et quo omnis. Nemo quae qui nihil non aut nemo.', 3, 2, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(45, 'Voluptatem voluptatem in velit deserunt consequatur dicta ut.', 'voluptatem-voluptatem-in-velit-deserunt-consequatur-dicta-ut', 'articles/post-landscape-45.jpg', 'Ducimus quo delectus soluta quas et. Officia eos omnis non quas autem ab. Quasi quo sunt sed iure recusandae quaerat officiis. Voluptates aut vitae consequatur similique molestiae.\n\nDeleniti recusandae excepturi ducimus consectetur qui. Dignissimos porro eum sint harum vel. Dicta molestiae voluptate rerum ipsa optio et amet.\n\nAssumenda dolor rerum quo modi aut quidem qui. Dolorem architecto eveniet labore voluptatem quaerat. Voluptatem voluptates officiis sint consequatur ea error asperiores.\n\nCupiditate suscipit et rem dolorem praesentium similique inventore. Dicta cupiditate et ut omnis laudantium sed dignissimos ad. Officiis laudantium omnis porro iste libero dolores magni. Et molestiae illum exercitationem libero est dolorum molestiae. Iusto nobis quisquam beatae quidem non.', 2, 5, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(46, 'Sint veritatis culpa sapiente vero aspernatur voluptas.', 'sint-veritatis-culpa-sapiente-vero-aspernatur-voluptas', 'articles/post-landscape-46.jpg', 'Iure eum provident eveniet fugit saepe odit. Eaque molestiae omnis corrupti recusandae nam et. Dolor sit dicta ratione pariatur. Ut quisquam nisi et.\n\nDolore consequatur quisquam omnis. Facilis rerum nihil vel quam consequatur facere eius. Assumenda ut et ad omnis. Minus similique magni veritatis nam placeat impedit.\n\nQuas deserunt explicabo incidunt vel illum eius omnis voluptatem. Repellendus minima dicta voluptatem deserunt harum unde et. Ut aut dicta temporibus sunt blanditiis voluptatibus eum.\n\nAut et quo aut saepe non quia consequuntur. Illum non voluptate sequi qui.', 2, 5, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(47, 'Ut quis accusantium cupiditate dicta veniam hic ut.', 'ut-quis-accusantium-cupiditate-dicta-veniam-hic-ut', 'articles/post-landscape-47.jpg', 'Et voluptatem voluptates rem. Quidem quia voluptatum rerum fuga corporis iusto. Vitae perspiciatis dolores velit corrupti consequatur voluptatem et. Beatae sit consequatur repellendus recusandae ut temporibus veniam.\n\nVoluptate illo quis saepe voluptatum non. Eaque corporis earum dolore ea voluptas pariatur. Sint excepturi consequuntur molestias. Illum nulla voluptas qui voluptates.\n\nUt ullam est architecto numquam et magni officiis. Omnis iste ipsa velit molestias accusantium. Sint non in occaecati et nam omnis blanditiis sed. Dolore dolor labore et voluptatem odio fugiat cum.\n\nQuae dolores qui velit incidunt nulla voluptatem qui. Quaerat quia eum alias quia earum.', 3, 5, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(48, 'Consequatur rem vero maxime velit sequi et.', 'consequatur-rem-vero-maxime-velit-sequi-et', 'articles/post-landscape-48.jpg', 'Qui sit impedit aut aspernatur. Distinctio consequatur consequuntur nostrum id debitis molestiae. Cupiditate minus iste explicabo. Consequatur sapiente beatae ipsum fugit eaque sint.\n\nDolor velit eius esse eaque qui suscipit est. Qui cupiditate sed eligendi repellendus velit. Facere voluptas autem et consequuntur.\n\nDolor quia iusto omnis doloribus ut dolorum dicta quia. Consequatur id repellat qui sed enim labore autem.\n\nCumque veniam et et sint maiores. Facere aut corporis nisi eligendi rerum fugit.', 6, 2, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(49, 'Commodi odio ut ducimus incidunt est iure.', 'commodi-odio-ut-ducimus-incidunt-est-iure', 'articles/post-landscape-49.jpg', 'Ut suscipit natus nulla. Quasi voluptatem neque accusamus necessitatibus est vel officiis. Dolores molestiae eum consequatur ab.\n\nQuia quos in occaecati ut assumenda velit. Molestiae dolor doloremque expedita aut. Corporis rem sit enim vel quaerat. Aut corporis et iure expedita voluptatem.\n\nEt autem facere adipisci vel sequi ut ab. Consectetur culpa quia sit eveniet. Rerum et velit culpa quo.\n\nQuia omnis reprehenderit officiis omnis. Sed mollitia vero quia enim quaerat id delectus aliquam. Minima et inventore aliquam natus totam enim.', 3, 1, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(50, 'Ut quaerat reprehenderit ab ut consequatur temporibus nobis.', 'ut-quaerat-reprehenderit-ab-ut-consequatur-temporibus-nobis', 'articles/post-landscape-5.jpg', 'Laborum aut molestiae aut recusandae magnam. Reiciendis blanditiis repudiandae veniam omnis quasi. Cum ex itaque sunt necessitatibus quos distinctio. Blanditiis dolorum voluptatum quaerat inventore non dolores tempora.\n\nIpsa nihil maxime cum enim. Sit sit soluta doloremque dolorum tempore consequatur repellendus. Est harum dolores vero autem.\n\nAspernatur quis occaecati voluptatem commodi accusantium officia. Et quia distinctio similique molestiae ut quo. Debitis cupiditate magni laborum repellat ut. Et ut ipsa excepturi nulla.\n\nQui illum dolores debitis et esse quas nobis officia. Sit molestiae laudantium illo inventore ratione dolores totam. Dolor a voluptatibus natus molestias omnis. Officiis tenetur saepe voluptas accusantium id eius.', 3, 3, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(51, 'Ut iste et maiores iusto architecto.', 'ut-iste-et-maiores-iusto-architecto', 'articles/post-landscape-6.jpg', 'Quisquam nobis nihil enim occaecati asperiores. Quis non mollitia quo ducimus. Eius possimus nemo ea aut adipisci accusantium quae minima.\n\nEa vitae sit similique facere sint aliquid. Et nesciunt exercitationem vel reprehenderit. Dolorem eligendi fugiat hic.\n\nVelit aut et et. Sint tenetur est numquam nisi qui excepturi.\n\nCorrupti veniam voluptatem eligendi hic et sed. Quia dolor est neque est fugiat voluptatem delectus. Enim aut et odit voluptatum.', 6, 2, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(52, 'Magni consectetur accusantium velit nostrum.', 'magni-consectetur-accusantium-velit-nostrum', 'articles/post-landscape-7.jpg', 'Unde enim exercitationem qui commodi numquam. Qui tempore excepturi officia autem modi. Sit voluptatem nostrum dolores omnis et a. In temporibus saepe veritatis.\n\nOptio dolorem aliquam vitae recusandae iste nulla et ut. Provident et voluptates quibusdam necessitatibus pariatur error aut. Unde eum occaecati necessitatibus reiciendis quae officiis. Sit explicabo ut est aut nam incidunt illum.\n\nMinus dolor quo ea et. Alias consequatur sit modi molestiae. Laudantium voluptate omnis fuga nulla in.\n\nUnde dolores consequatur harum. Sint possimus quia quam harum aut aut qui. Dolor non voluptatibus autem aperiam voluptas velit.', 3, 1, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(53, 'Sit reiciendis soluta pariatur vel quia fugiat aperiam.', 'sit-reiciendis-soluta-pariatur-vel-quia-fugiat-aperiam', 'articles/post-landscape-8.jpg', 'Eius quibusdam delectus quaerat excepturi rerum quo. Sint iste nesciunt porro architecto eius. Explicabo quam vero aut molestiae vel magnam.\n\nDolorem minus tenetur qui architecto aut reprehenderit eius in. Aperiam ut est sed ut quod. Quia nam quaerat voluptas enim cumque et.\n\nPerferendis sunt ut aspernatur nisi amet reprehenderit necessitatibus dignissimos. Reiciendis ut consequatur voluptatem neque. Totam asperiores omnis fugit ducimus. Voluptate quisquam libero doloribus.\n\nQuis dolores asperiores magnam veniam officia. Pariatur omnis iure voluptas non perspiciatis assumenda magni.', 4, 2, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(54, 'Quia omnis nostrum vero laboriosam similique repellat.', 'quia-omnis-nostrum-vero-laboriosam-similique-repellat', 'articles/post-landscape-2.jpg', 'Ut doloremque esse aliquam at distinctio blanditiis itaque. Consequatur qui occaecati dicta voluptas distinctio quidem.\n\nAnimi sed quisquam ipsam quo suscipit fuga. Et autem recusandae id eos autem nihil placeat.\n\nSequi fuga beatae quod eos ut omnis voluptatem. Cupiditate voluptatem laborum reprehenderit eveniet reiciendis animi voluptatibus. Provident itaque similique qui et dolor similique.\n\nEx temporibus suscipit dolore voluptas in molestiae sed consequatur. Maxime repellat consequatur incidunt nam quidem pariatur est. Quia aut qui voluptate enim culpa.', 6, 3, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(55, 'Adipisci dolorem qui quis maxime aperiam ea.', 'adipisci-dolorem-qui-quis-maxime-aperiam-ea', 'articles/2bAA2jTcpieGhvPkGIYLsj7BMdlyDEI6CtjVRHFl.jpg', 'Sit molestiae at voluptates eius. Numquam voluptatem fugiat iste est qui mollitia aut quia. Nobis qui quibusdam iure dolorum qui voluptatum est. In aut ut voluptas cumque.\r\n\r\nMagnam perspiciatis ipsa magni commodi quibusdam est. Vel tempora temporibus impedit et et a. Dolore omnis perspiciatis officiis asperiores.\r\n\r\nDelectus quae et odit harum sed inventore voluptatem et. Qui sit ea maiores amet id atque deserunt adipisci. Inventore consectetur qui optio fugit perspiciatis rerum. Reprehenderit eveniet aut alias illum ut quasi asperiores.\r\n\r\nEst sed ea ipsum dolor quae autem. Sequi soluta amet dolores aut aut laboriosam. Nostrum neque ut autem laudantium deserunt dolorem.', 4, 1, 'draft', '2025-12-09 07:35:37', '2025-12-18 06:08:12'),
(56, 'Veritatis reiciendis vero harum eum.', 'veritatis-reiciendis-vero-harum-eum', 'articles/post-landscape-4.jpg', 'Et culpa ipsam alias hic praesentium corrupti. Dolores et facere quibusdam. Tempora debitis dolore fugit a sint. Aperiam quia doloremque odit sed voluptatem iusto eos recusandae.\n\nOdit veniam exercitationem laudantium nesciunt nesciunt. Labore nobis rem reiciendis est. Ea provident itaque impedit ut et. Sit quibusdam ut maxime ut voluptas eaque velit.\n\nOfficia reprehenderit nesciunt doloribus reprehenderit sit impedit. Iste exercitationem autem et necessitatibus velit quisquam. Incidunt itaque totam sit quas saepe.\n\nExpedita nam sapiente porro ullam. Excepturi iste earum ex velit. Reiciendis nisi placeat laudantium animi eveniet. Quia perspiciatis aut ipsa ut dolorem quas fugiat.', 1, 3, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(57, 'Eum suscipit neque veritatis sint distinctio sequi et non.', 'eum-suscipit-neque-veritatis-sint-distinctio-sequi-et-non', 'articles/post-landscape-5.jpg', 'Et sit et vero amet eum sint laudantium. Perferendis at accusantium consequuntur sit ut tenetur.\n\nExercitationem ut accusamus non eum. Laudantium omnis et laboriosam. Nesciunt dolorem aut voluptatem consequatur. Ipsum commodi esse incidunt sed.\n\nVitae et porro numquam non. Rerum et sit dolores et ut ducimus. Accusantium et voluptas praesentium illum aut quo. At aut dolorem pariatur.\n\nPariatur itaque aut corrupti. Atque quidem mollitia qui dignissimos ut ea. Dolorem nihil iste voluptatem dicta ipsum aliquam. Qui velit cumque dolores.', 2, 1, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(58, 'Culpa qui architecto cum voluptatum asperiores.', 'culpa-qui-architecto-cum-voluptatum-asperiores', 'articles/post-landscape-6.jpg', 'Nihil ut labore nihil aliquid. Facere id vitae deserunt quaerat. Molestias minima culpa temporibus quo tempora non laboriosam quis. Sequi perferendis id dolor quae illo.\n\nNihil corporis inventore recusandae quasi esse voluptas. Tenetur doloribus aperiam inventore nostrum nesciunt. Fuga non fugiat explicabo corporis sunt aperiam quam. Ratione et incidunt et ullam nemo neque nobis.\n\nVoluptatem neque nisi ut enim sed distinctio nemo ullam. Fuga necessitatibus et ea est. Molestiae sapiente cupiditate natus et necessitatibus dolor ea.\n\nSunt enim asperiores repellat quia ut natus iusto. Nemo officiis ea id omnis vitae sapiente sit. Consequatur repellat sed et rerum.', 4, 2, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37');
INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `content`, `user_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(59, 'Hic cupiditate et nesciunt alias qui.', 'hic-cupiditate-et-nesciunt-alias-qui', 'articles/post-landscape-7.jpg', 'Non corporis nam laborum in animi in. Enim ratione et cumque assumenda voluptates illo. Voluptatum in iusto voluptas neque praesentium velit. Est eum debitis rerum odit dolores.\n\nBeatae enim nihil voluptatem iure odit accusamus qui. Distinctio quas ipsa ipsum dolore dicta. Facere ad ea dolores optio hic. Dolor dolor consequuntur sunt est.\n\nConsequatur voluptatem et ad. Quam laboriosam assumenda doloribus eligendi sequi et consequatur. Eveniet ratione accusamus adipisci molestiae odio et. Quas labore et aut modi.\n\nRepudiandae omnis sunt in. Quis recusandae unde ut. Sunt impedit ipsa necessitatibus recusandae.', 6, 2, 'draft', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(60, 'Sint enim sit quia repudiandae.', 'sint-enim-sit-quia-repudiandae', 'articles/post-landscape-8.jpg', 'Natus ipsum maxime ex qui omnis debitis. Non blanditiis est repudiandae odit accusamus ea. Non voluptatem aut ut at.\n\nNumquam et qui nesciunt ut culpa modi. Excepturi qui sint ullam et asperiores quos qui. Eaque unde rem et. Et qui eum rerum sed voluptas est dolor.\n\nMinus molestiae quo cumque qui assumenda distinctio. Voluptatem dolorum consectetur natus dolor. Vel vel ut placeat enim voluptas.\n\nError possimus repellendus tempora sed. Quod qui veritatis quasi non quam. Et mollitia voluptatem illo provident dignissimos.', 6, 4, 'published', '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(61, 'title', 'title', 'articles/jDSNQNh2LGDF3Yxsoh2DLiXb5HKI3L4UYLyIlHcd.jpg', 'testing >>>>>>', 1, 3, 'draft', '2025-12-17 09:15:37', '2025-12-17 09:15:37'),
(62, 'test', 'test', 'articles/AQurfzhssxdRxy0W9atdsCjlDxhm25ytMc4DjLnL.jpg', 'testing .....', 2, 3, 'published', '2025-12-18 02:07:19', '2025-12-18 02:07:19'),
(63, 'rrrr', 'rrrr', 'articles/QeEduh7LFnNgfCa0gUfeqAScd9qci7rOPrWD7ozw.jpg', 'testimhhhhhhh', 1, 1, 'draft', '2025-12-18 04:31:25', '2025-12-18 04:31:25'),
(64, 'ثثثثث', 'ththththth', 'articles/yAaHH36cQE1SjdHAeEiTcyiAgLVAwGQHVQwjKwZy.jpg', '<p><b>tst&nbsp; &nbsp;mmmmm&nbsp; &nbsp;</b></p>', 1, 1, 'draft', '2025-12-18 08:48:07', '2025-12-18 08:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laudantium', 'laudantium', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(2, 'Atque', 'atque', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(3, 'Et', 'et', '2025-12-09 07:28:03', '2025-12-18 06:56:16'),
(4, 'Sint', 'sint', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(5, 'Perspiciatis', 'perspiciatis', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(7, 'ttttyyy', 'ttttyyy', '2025-12-18 04:32:49', '2025-12-18 04:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `name`, `email`, `content`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 60, 'Mara Howe', 'eichmann.glenda@example.org', 'Iste reprehenderit quas et unde aut libero et mollitia quo veritatis est.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(2, 36, 'Geraldine Feest', 'lilla08@example.net', 'Aut ut dignissimos ut molestiae et ducimus nihil officiis eos fugit temporibus.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(3, 32, 'Dr. Erin Satterfield I', 'jwehner@example.com', 'Dolores saepe debitis sint quia at distinctio ab est velit consequuntur vel non porro.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(4, 2, 'Tracey Monahan DVM', 'hkovacek@example.net', 'Omnis perferendis sed eveniet non veritatis est facere quia et doloremque rerum iure omnis natus earum.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(5, 1, 'Benjamin Durgan', 'lexi54@example.net', 'Illum autem libero exercitationem qui vero enim et necessitatibus quo dicta.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(6, 24, 'Annette Schmidt', 'mckayla81@example.org', 'Nisi nam debitis enim autem ex esse impedit repellat ullam asperiores officiis eius laborum.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(7, 28, 'Dr. Erick McCullough', 'vivianne.wyman@example.org', 'Esse ipsum iure inventore non animi qui aut accusamus est occaecati eaque sit modi.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(8, 22, 'Dana Cassin Jr.', 'cora.brown@example.org', 'Corporis molestiae nihil ea cupiditate itaque ut sit maiores beatae enim et qui molestiae et veritatis perferendis.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(9, 16, 'Prof. Gregory Rosenbaum V', 'celia.nolan@example.net', 'Suscipit illum et aut adipisci sint amet consequatur rerum facere optio consequatur id.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(10, 8, 'Mr. Remington Rohan', 'ahermiston@example.net', 'Iure et est autem est ratione beatae quia quasi et sit enim maiores quo minus accusantium incidunt.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(11, 2, 'Zula Boyle', 'wbeahan@example.net', 'Corrupti sit tempora commodi fuga aliquam commodi doloribus pariatur eius amet accusantium unde libero voluptatem.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(12, 14, 'Felton Bernier', 'lkertzmann@example.com', 'Quis et possimus in et assumenda ut quibusdam corrupti iure et fugit.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(13, 17, 'Karson Medhurst', 'elvie.waters@example.net', 'Sunt ut et explicabo qui soluta quam dolorem quisquam iure ut qui blanditiis in eveniet.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(14, 25, 'Michale Altenwerth', 'gibson.audreanne@example.com', 'Delectus dicta rerum qui et ullam et soluta magni ut iusto maxime voluptatem consequatur.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(15, 13, 'Mr. Quentin Gerhold', 'tremblay.leonard@example.com', 'Necessitatibus iusto dolorum corrupti eius amet nisi et est ut aut quam velit dignissimos ex harum fugit.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(16, 19, 'Barton Upton', 'glover.eleonore@example.net', 'Quis sed eos voluptatem quasi soluta et quae labore occaecati provident.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(17, 21, 'Oceane Ortiz', 'elmer.jacobs@example.com', 'Eaque distinctio quia vel recusandae hic saepe ducimus aut occaecati aut qui ipsum et.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(18, 29, 'Adele Swift', 'tkreiger@example.net', 'Est laboriosam quam aliquid molestiae est itaque vel et provident doloribus voluptas.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(19, 16, 'Hope Ryan', 'nettie.pacocha@example.com', 'Minus rem non enim sit ea repellat perferendis corrupti omnis quidem delectus cupiditate maiores explicabo aliquid ducimus.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(20, 32, 'Reinhold Blick', 'mgutkowski@example.com', 'Neque numquam veniam qui nobis dicta odio velit nulla qui quod sed similique ducimus temporibus.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(21, 19, 'Raven Bailey', 'bauch.leilani@example.com', 'Doloribus sed alias nisi ipsam ad ut quam consequatur soluta rerum.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(22, 39, 'Dr. Fabiola Smitham III', 'johnathon10@example.com', 'Distinctio corrupti voluptates autem consequuntur et saepe et necessitatibus quia nemo consectetur consequatur omnis.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(23, 17, 'Jeff Upton', 'kenneth.olson@example.net', 'Voluptatum ut magni fugiat repellendus vero nemo est ratione praesentium.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(24, 39, 'Sister Haley', 'joanie.kerluke@example.net', 'Ex adipisci itaque repellendus quas aut sed commodi accusantium non autem ea ut corporis rerum facere laborum.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(25, 40, 'Lucius Johnston', 'nya23@example.net', 'Aperiam commodi unde vel et harum nisi saepe iure ut nesciunt explicabo laudantium vitae.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(26, 22, 'Miss Ericka Murazik', 'keyon.funk@example.net', 'Voluptatem odit similique numquam reiciendis voluptas adipisci vel.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(27, 9, 'Prof. Sydney Bartoletti', 'kprice@example.org', 'A rerum ut blanditiis dolores quo voluptatem sed illum ipsa et quod omnis labore dicta.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(28, 19, 'Mr. Robbie Howell PhD', 'derick28@example.net', 'Quo autem ducimus et enim provident est repudiandae occaecati et doloribus fugit eos aperiam omnis non.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(29, 2, 'Johnpaul Schroeder', 'victoria61@example.com', 'Harum beatae aliquid enim error dolor eos quo deserunt ratione aliquam modi magni.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(30, 4, 'Mitchel Kautzer', 'qfahey@example.org', 'Vero explicabo iure est velit odio consequatur tempora a perferendis.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(31, 36, 'Ena Rowe', 'princess07@example.com', 'Molestias vitae eius iusto qui enim reprehenderit quia corrupti eos voluptate eius beatae.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(32, 25, 'Harry Simonis', 'moen.lela@example.org', 'Aut rem aliquam voluptates dolorum occaecati ab provident repudiandae.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(33, 8, 'Bradley Boyle', 'doyle.alicia@example.net', 'Quisquam cumque quam facilis enim qui ab voluptatem voluptas quis assumenda.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(34, 6, 'Loren Raynor', 'dejuan25@example.org', 'Laborum sint quo quae animi nihil similique cupiditate reprehenderit molestiae nobis sed doloribus consequatur et.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(35, 29, 'Miss Bethel Walter', 'zdare@example.com', 'Voluptate consequuntur sit magnam voluptates repudiandae in voluptatibus nemo cum hic.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(36, 17, 'Prof. Mariano Wintheiser DVM', 'martin.mraz@example.com', 'In totam ratione odit ut et totam est est laudantium.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(37, 4, 'Prof. Reba Collier', 'qpurdy@example.org', 'Ipsam velit est et nostrum dolorem et qui.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(38, 10, 'Sydnie Anderson', 'morissette.kelsie@example.org', 'Tempora qui illo sint soluta nemo aut laboriosam cumque enim.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(39, 25, 'Lee Ryan', 'leatha.franecki@example.org', 'Sit quasi itaque ut inventore enim ut omnis magni deserunt voluptatum.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(40, 14, 'Jovanny Armstrong', 'ipurdy@example.net', 'Maxime sed dicta ipsam repellat sapiente facere veniam consequatur vitae facilis nisi odio quo odio maiores perferendis.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(41, 19, 'Rubie Russel', 'tristin.robel@example.com', 'Adipisci qui sit ad quasi voluptatibus dolor nostrum mollitia ut dolore aperiam molestiae aut.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(42, 4, 'Stanley Ritchie', 'aabernathy@example.net', 'Illo libero vel nesciunt tempora sunt at in quae.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(43, 36, 'Krystal Gleichner', 'zweissnat@example.com', 'Omnis fugit quis ex est commodi quia debitis est dolor et nesciunt illo tenetur maiores ut corrupti.', 0, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(44, 23, 'Dr. Elbert Rodriguez', 'merlin27@example.net', 'Sunt culpa qui sequi eos sunt aliquid aliquid minima officia est id.', 1, '2025-12-09 07:34:35', '2025-12-09 07:34:35'),
(45, 6, 'Ms. Imogene Ryan', 'neoma.cormier@example.org', 'Sint dolore consequatur ad et sit dicta harum.', 0, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(46, 38, 'Vilma Simonis DDS', 'wolff.harmony@example.org', 'Et beatae repellendus voluptas ut ut enim corporis magni laudantium dolores.', 0, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(47, 35, 'Zackery Luettgen', 'everett.morissette@example.net', 'Recusandae doloremque voluptatem dicta quibusdam enim sequi et ut sed aliquid corrupti.', 1, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(48, 7, 'Cathrine Dicki', 'xzavier.graham@example.net', 'Amet consequatur sint alias explicabo sed consequatur in accusamus et architecto accusamus.', 0, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(49, 11, 'Marlin Kuhn', 'kristoffer.hoeger@example.net', 'Molestiae ipsum in minus quia ducimus et illum blanditiis veritatis error optio et.', 1, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(50, 18, 'Nina Runte', 'deron62@example.net', 'Perspiciatis aut qui incidunt rerum repellendus consequatur ea et aut unde consequatur nobis et dolorem distinctio nesciunt.', 0, '2025-12-09 07:34:36', '2025-12-09 07:34:36'),
(51, 41, 'Rosella O\'Connell', 'brooks.pacocha@example.net', 'Maiores porro deserunt nemo temporibus sequi at delectus omnis.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(52, 60, 'Lauriane Block', 'eveline.jenkins@example.com', 'Animi omnis fugit perferendis accusamus sit occaecati non porro facilis qui.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(53, 25, 'Candido Daugherty', 'kane04@example.net', 'Aspernatur dolorem illo fuga explicabo quis animi excepturi ipsum amet voluptatem quo aut autem maxime sed.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(54, 44, 'Tamia Bergstrom', 'sylvia.terry@example.org', 'Sunt odio odit facilis qui et rem necessitatibus minus et voluptatum corrupti necessitatibus numquam.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(55, 28, 'Mr. Jalon Bernhard IV', 'aubree.barrows@example.net', 'Et animi qui modi suscipit nostrum atque et consequatur qui qui quos quos quidem aut vel.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(56, 40, 'Maximus Gutmann DDS', 'deon.hirthe@example.net', 'Aliquam quibusdam rerum veniam tempore maxime et sit quibusdam exercitationem non eos consequatur iusto unde harum corrupti.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(57, 50, 'Savanna Thompson DDS', 'umetz@example.net', 'Non corporis optio aspernatur expedita vitae dolores omnis nulla dolores sit.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(58, 38, 'Ms. Kavon Hauck', 'sierra.muller@example.org', 'Minima et corrupti ut facilis inventore consequatur ab maiores et iusto.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(59, 10, 'Brenna Durgan', 'cronin.toney@example.org', 'Ipsam eligendi ratione rerum magnam quo nostrum asperiores nostrum culpa aut amet et.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(60, 26, 'Henriette Thiel', 'muriel84@example.org', 'Tempora consequatur voluptate et reprehenderit qui alias eveniet tempora dolor aspernatur amet voluptates deleniti ut at.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(61, 34, 'Tiffany Kiehn', 'jbergstrom@example.org', 'Omnis quam debitis error eveniet voluptas qui dolorum ullam aut.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(62, 57, 'Mrs. Yasmine Von Sr.', 'clay.schamberger@example.net', 'Perferendis ipsam reiciendis dolorum libero beatae autem dolores provident ut molestiae perferendis maiores eos.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(63, 45, 'Mr. Doyle Walsh IV', 'maximillian.bode@example.net', 'Neque est nostrum velit in nostrum sunt ad ut voluptas molestias vel placeat molestiae adipisci enim.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(64, 26, 'Conner Welch', 'ldooley@example.org', 'Dolorum illum reprehenderit voluptatem molestiae excepturi et consectetur architecto ipsam aperiam rerum rem repudiandae suscipit.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(65, 3, 'Russell West', 'jamarcus.bechtelar@example.com', 'Vel officiis in natus cum optio sapiente architecto ipsam maxime.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(66, 4, 'Shawna Witting', 'hilpert.lilyan@example.org', 'Quia omnis unde quidem harum laboriosam aut nihil.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(67, 5, 'Lois Lueilwitz', 'adams.sharon@example.net', 'Eos ducimus amet consequuntur magni itaque explicabo ratione ullam.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(68, 42, 'Delphine Hammes', 'neva.cummerata@example.com', 'Atque omnis voluptate in vel et officia eligendi dolorum quas tempore aut deserunt.', 0, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(69, 6, 'Prof. Adolfo Bruen', 'jeffertz@example.org', 'Ut suscipit qui ad cumque velit mollitia est voluptas beatae quia sapiente.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(70, 46, 'Nicklaus Lind', 'yweber@example.net', 'Pariatur qui vel iure iure odit quasi molestiae repellat voluptas illo consequatur fugit fugiat iusto saepe.', 1, '2025-12-09 07:35:37', '2025-12-09 07:35:37'),
(71, 19, 'Abby Streich MD', 'brigitte20@example.com', 'Quia perspiciatis fugit consequatur doloribus corrupti non qui atque perferendis dolorem voluptatem dolorem aut pariatur.', 0, '2025-12-09 07:35:38', '2025-12-18 08:09:12'),
(72, 13, 'Sigrid Bailey', 'qyost@example.net', 'Veniam voluptas qui ut pariatur velit architecto vero.', 1, '2025-12-09 07:35:38', '2025-12-11 07:39:53'),
(74, 57, 'Dalton Erdman', 'jermaine10@example.com', 'Deserunt voluptatem explicabo ipsum est nisi ullam voluptas sapiente qui dolor eos fuga.', 0, '2025-12-09 07:35:38', '2025-12-18 08:07:47'),
(75, 36, 'Terrance Keebler', 'zvolkman@example.org', 'Quibusdam eaque qui quae ab et mollitia dolor voluptatum distinctio explicabo cupiditate corporis non dolorem expedita.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(76, 54, 'Cassandra D\'Amore III', 'blanche53@example.net', 'Distinctio iusto nostrum accusantium aut et maxime libero voluptatem id eius sunt quo.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(77, 11, 'Georgiana Lemke', 'jessika17@example.net', 'Voluptatum corrupti aut corrupti hic in impedit quia officiis rem voluptas repellendus sint aliquam itaque magnam facilis.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(78, 33, 'Jude Gibson', 'damaris27@example.com', 'Quaerat harum nihil veniam vel qui asperiores ea cupiditate et repellendus possimus ullam.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(79, 25, 'Imogene Bruen', 'casper.alysha@example.net', 'Similique quisquam qui alias autem tempore at nulla quia incidunt.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(80, 11, 'Miss Mireya Kling', 'orpha81@example.net', 'Maiores maxime aut quia velit a voluptatibus error totam provident aut.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(81, 60, 'Muriel Lynch', 'owintheiser@example.net', 'Officiis sapiente ex optio officiis quo sed quibusdam voluptatem asperiores alias sed occaecati sit dolores iure.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(82, 16, 'Dr. Christop Hilpert', 'enola83@example.net', 'Eligendi et possimus repellendus vel molestias est nostrum vero cum labore ipsa aspernatur totam dolorem.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(83, 39, 'Sonia Rempel', 'nbeahan@example.com', 'Harum facilis magnam vel et voluptatem sed est et.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(85, 43, 'Theodore Lebsack', 'sheaney@example.net', 'Et sed nostrum est quibusdam eius quos tempore aliquid voluptate.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(86, 13, 'Dr. Jordi McGlynn', 'opagac@example.org', 'Magni ut odit qui et voluptas cumque aut laboriosam odio nisi animi quos ipsa ratione.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(87, 46, 'Chance Auer', 'myles60@example.org', 'Neque non excepturi quisquam magni earum et consequatur labore excepturi ut totam beatae qui.', 1, '2025-12-09 07:35:38', '2025-12-18 07:40:24'),
(88, 18, 'Mr. Darrick Schuppe', 'alessandro16@example.com', 'Optio quo unde molestiae qui voluptas recusandae facere eos magni corporis qui et deleniti aliquid tempore.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(89, 21, 'Prof. Maggie Blick', 'christiansen.martin@example.com', 'Dolorem quia necessitatibus rem ratione occaecati aliquid delectus enim facere consequuntur.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(90, 28, 'Tina Monahan', 'hmosciski@example.org', 'Distinctio aliquid debitis voluptatum repellat dolorum itaque optio qui dolorum aliquam rem consectetur quibusdam.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(91, 4, 'Houston Hill', 'virgil.witting@example.org', 'Ut sed molestiae eveniet sapiente porro eaque non tempora blanditiis iure nihil reprehenderit in voluptatem aut.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(92, 37, 'Ms. Kaci Daugherty', 'oconnell.larry@example.com', 'Unde impedit impedit officiis sed dolores quia deleniti voluptatem temporibus natus.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(93, 40, 'Alfred Cremin', 'kole.bosco@example.com', 'Qui nulla nostrum et et enim sed et ea perspiciatis.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(94, 58, 'Frederik Heathcote', 'lee84@example.org', 'Magni ea non qui debitis quaerat expedita doloremque in.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(95, 20, 'Jess Okuneva', 'cartwright.richie@example.net', 'Qui voluptatem voluptatem molestiae repellendus sit ratione sunt esse cupiditate accusamus voluptatibus assumenda iusto ut.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(96, 34, 'Lawrence Schamberger', 'yost.monica@example.com', 'Esse explicabo quaerat temporibus delectus voluptatem sunt nam iusto voluptate dolor beatae rerum.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(97, 7, 'Forrest Kassulke', 'hettinger.osborne@example.org', 'Dolor et animi quo voluptas minima qui incidunt sit aut et dignissimos molestias.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(98, 51, 'Fredy Bednar II', 'bailey.paula@example.com', 'Ut sit et illo rerum molestiae officiis tempora deserunt voluptatum aut asperiores officia sint temporibus consectetur vel.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(99, 60, 'Omari Towne', 'carlos40@example.org', 'Commodi similique officiis qui beatae et aliquid corporis facere excepturi est velit nulla quam.', 0, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(100, 53, 'Eloise Satterfield IV', 'greenfelder.autumn@example.com', 'Debitis illo iure sit fuga quia enim consequatur doloribus facere vero.', 1, '2025-12-09 07:35:38', '2025-12-09 07:35:38'),
(101, 60, 'Nazeer', 'test@test.com', 'testing .....', 1, '2025-12-16 03:28:14', '2025-12-16 03:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('new','reviewed') NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jose Feest', 'scotty.nienow@example.org', 'Aspernatur voluptates.', 'Asperiores sint quis quibusdam sed delectus sed pariatur. Occaecati modi laudantium incidunt odit et est. Nihil enim sint dicta facere nobis sequi. Error voluptate impedit placeat fugit enim optio consequatur laboriosam.', 'reviewed', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(2, 'Adolfo Schiller', 'yharber@example.com', 'Voluptas qui architecto nihil.', 'Provident a repudiandae qui voluptatem. Animi labore et aut earum. Ipsam repellat veniam sunt dolor dicta. Consequatur facere molestias aspernatur dolore doloremque omnis inventore.', 'reviewed', '2025-12-09 07:40:34', '2025-12-11 08:04:56'),
(3, 'Karlee Feil', 'amely.murphy@example.net', 'Sint voluptatem quam.', 'Et dolores commodi sequi ut quam laboriosam. Rerum et adipisci cumque eos. Quia perspiciatis ea facere quis odit autem rem. Unde quia similique ab.', 'reviewed', '2025-12-09 07:40:34', '2025-12-11 08:05:02'),
(4, 'Emmanuel Nienow', 'jerald46@example.net', 'Fugit enim odio.', 'Repellendus quam ullam iste aut nisi animi et. Mollitia placeat voluptatem cumque perferendis. Rerum qui quis inventore optio quibusdam qui saepe ut.', 'reviewed', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(5, 'Prof. Ardith Crist', 'jordane.mclaughlin@example.net', 'A minima consequatur.', 'Nesciunt quia quae quasi assumenda reprehenderit voluptatum. Minima modi sapiente veniam autem molestiae nobis.', 'reviewed', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(6, 'Mr. Jamey Toy', 'llang@example.com', 'Impedit qui maiores sunt.', 'Quae rem aliquam facere odit est et velit. Excepturi quibusdam voluptatibus nam quibusdam.', 'new', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(7, 'Royal Weissnat DVM', 'ipouros@example.net', 'Voluptate aspernatur ut et quis.', 'Laborum illo voluptate mollitia impedit voluptates vel quod. Quis suscipit velit ad beatae. Incidunt debitis dolores fugiat reprehenderit reprehenderit magni assumenda.', 'reviewed', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(8, 'Meggie Mraz', 'kavon.hoeger@example.net', 'Qui et aut qui.', 'Consectetur voluptas necessitatibus iste eligendi totam sapiente cumque. Possimus est id ut dolor. Quod debitis est architecto molestiae vel est suscipit ut.', 'reviewed', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(9, 'Charity Spinka', 'ybahringer@example.org', 'Et aut facilis voluptas.', 'Ea voluptatum rerum consequatur consectetur earum. Ratione itaque aliquam distinctio at.', 'new', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(10, 'Miss Karlie Brekke', 'rebeca.larson@example.com', 'Eligendi laudantium eveniet.', 'Repellat ad rem quia voluptate. Eos exercitationem at qui adipisci et omnis magnam dolore. Facere molestiae impedit vero velit. Id sapiente sed aut culpa inventore.', 'new', '2025-12-09 07:40:34', '2025-12-09 07:40:34'),
(11, 'Nazeer', 'bb3@bb.com', '...', 'fgdnxffgdjghjfcm', 'new', '2025-12-17 06:45:39', '2025-12-17 06:45:39'),
(12, 'edit', 'test@test.com', '...', 'dfgxfghnjgckhjukvh', 'new', '2025-12-17 07:01:07', '2025-12-17 07:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_09_084140_create_categories_table', 1),
(5, '2025_12_09_084204_create_articles_table', 1),
(6, '2025_12_09_085236_create_comments_table', 1),
(7, '2025_12_09_085254_create_contact_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hWXTpSRi1fGCbxeI6zFFZ4UEZVOOufJhPkoa5rkC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUtPQnFWTkZmTlhVRk9CU1hQSjZOdDZzNlc4R0VhSGFQQ1NqeUY4USI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hcnRpY2xlcy81NS9lZGl0IjtzOjU6InJvdXRlIjtzOjE5OiJhZG1pbi5hcnRpY2xlcy5lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766058808);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super_admin','editor') NOT NULL DEFAULT 'editor',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', NULL, '$2y$12$/ewEA/HoVD.kD6cbM4WYGO2Jys3/9v32dwefhGqmtkfjzOrmOmALO', 'super_admin', NULL, '2025-12-09 07:28:02', '2025-12-09 07:28:02'),
(2, 'Gerda Hettinger IV', 'bulah.dare@example.net', '2025-12-09 07:28:02', '$2y$12$h8dj.FJo7kmJ786PgOjJ0O1RqibtyVryCl9nMAzD0On8uW.cYyRxW', 'editor', 'mkGex4pyIr', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(3, 'Reba McGlynn', 'jayce.block@example.org', '2025-12-09 07:28:03', '$2y$12$h8dj.FJo7kmJ786PgOjJ0O1RqibtyVryCl9nMAzD0On8uW.cYyRxW', 'super_admin', 'vUaQOYjeOP', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(4, 'Mr. Lance Rohan', 'norwood.reichel@example.org', '2025-12-09 07:28:03', '$2y$12$h8dj.FJo7kmJ786PgOjJ0O1RqibtyVryCl9nMAzD0On8uW.cYyRxW', 'super_admin', 'aQIOMU8GWJ', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(5, 'Blaise Abbott', 'zstreich@example.com', '2025-12-09 07:28:03', '$2y$12$h8dj.FJo7kmJ786PgOjJ0O1RqibtyVryCl9nMAzD0On8uW.cYyRxW', 'editor', '03fLV2jJ6W', '2025-12-09 07:28:03', '2025-12-09 07:28:03'),
(6, 'Theo Gorczany', 'bartell.bernadine@example.com', '2025-12-09 07:28:03', '$2y$12$h8dj.FJo7kmJ786PgOjJ0O1RqibtyVryCl9nMAzD0On8uW.cYyRxW', 'super_admin', 'H0NEur2sGn', '2025-12-09 07:28:03', '2025-12-09 07:28:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_status_created_at_index` (`status`,`created_at`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_is_approved_index` (`article_id`,`is_approved`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_status_index` (`status`);

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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
