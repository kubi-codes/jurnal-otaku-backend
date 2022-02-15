-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 15 Feb 2022 pada 05.53
-- Versi server: 5.7.34
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jurnal-otaku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `name` text,
  `status` text,
  `release` date DEFAULT NULL,
  `producer` text,
  `duration` text,
  `cover` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `animes`
--

INSERT INTO `animes` (`id`, `name`, `status`, `release`, `producer`, `duration`, `cover`, `createdAt`, `updatedAt`) VALUES
(3, 'Shingeki no Kyojin: The Final Season Part 2', 'airing', '2022-01-01', 'MAPPA', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/1948/120625.jpg', '2022-02-13 08:11:52', '2022-02-13 08:11:52'),
(4, 'Kimetsu no Yaiba: Yuukaku-hen', 'airing', '2021-12-05', 'Ufotable', '23 Min per eps', 'https://cdn.myanimelist.net/images/anime/1908/120036.jpg', '2022-02-13 08:12:44', '2022-02-13 08:12:44'),
(5, 'Ousama Ranking', 'airing', '2021-10-05', 'WIT Studio', '23 Min per eps', 'https://cdn.myanimelist.net/images/anime/1347/117616.jpg', '2022-02-13 08:13:45', '2022-02-13 08:13:45'),
(6, 'One Piece', 'airing', '1999-10-20', 'Toei Animation', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/6/73245.jpg', '2022-02-13 08:14:44', '2022-02-13 08:14:44'),
(7, '86 Eighty-Six', 'airing', '2021-10-09', 'A-1 Pictures', '23 Min per eps', 'https://cdn.myanimelist.net/images/anime/1321/117508.jpg', '2022-02-13 08:16:03', '2022-02-13 08:16:03'),
(8, 'JoJo no Kimyou na Bouken Part 6: Stone Ocean', 'airing', '2021-12-01', 'David Production', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/1896/119844.jpg', '2022-02-13 08:16:47', '2022-02-13 08:16:47'),
(9, 'Karakai Jouzu no Takagi-san 3', 'airing', '2022-01-08', 'Shin-Ei Animation', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/1861/120361.jpg', '2022-02-13 08:17:32', '2022-02-13 08:17:32'),
(10, 'Sono Bisque Doll wa Koi wo Suru', 'airing', '2022-01-09', 'Cloverworks', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/1179/119897.jpg', '2022-02-13 08:18:37', '2022-02-13 08:18:37'),
(11, 'Vanitas no Karte Part 2', 'airing', '2022-01-15', 'Bones', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/1247/120579.jpg', '2022-02-13 08:19:15', '2022-02-13 08:19:15'),
(12, 'Detective Conan', 'airing', '1996-01-08', 'TMS Entertaiment', '24 Min per eps', 'https://cdn.myanimelist.net/images/anime/7/75199.jpg', '2022-02-13 08:20:18', '2022-02-13 08:20:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `name` text,
  `url` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `name`, `url`, `createdAt`, `updatedAt`) VALUES
(1, 'Banner 1', 'https://i.ibb.co/nbBF00R/Attack-On-Titan-Final-Season-Part2-Web-banner-1270x300px-New-Eps.jpg', '2022-02-13 10:01:18', '2022-02-13 10:01:18'),
(2, 'Banner 2', 'https://i.ibb.co/XjDx9c2/Arifureta-From-Commonplace-to-World-Strongest-Season-2-Web-Banner-1270x300-1.jpg', '2022-02-13 10:01:18', '2022-02-13 10:01:18'),
(3, 'Banner 3', 'https://i.ibb.co/F8nf229/Princess-Connect-Re-Dive-Season-2-Web-banner-1270x300px.jpg', '2022-02-13 10:02:12', '2022-02-13 10:02:12'),
(4, 'Banner 4', 'https://i.ibb.co/B6dmrN1/Tokyo-24th-Ward-Web-Banner-1270x300-Premieres.jpg', '2022-02-13 10:02:12', '2022-02-13 10:02:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `msg` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text,
  `value` longtext,
  `cover` text,
  `user_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `value`, `cover`, `user_id`, `createdAt`, `updatedAt`) VALUES
(3, 'Jujutsu Kaisen Gets Second Anime Season in 2023', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644659378-d75d0e272fb481b05ea95a6b77b97ba9.jpeg\">The stage greeting event for the <a href=\"https://myanimelist.net/anime/48561/\" rel=\"nofollow\"><i>Jujutsu Kaisen 0</i></a> anime film announced a second season on Saturday. The new season is scheduled to air in 2023.<br>\n<br>\nThe anime film adapting <a href=\"https://myanimelist.net/people/47924/\" rel=\"nofollow\">Akutami Gege</a>\'s <a href=\"https://myanimelist.net/manga/115710/\" rel=\"nofollow\">prequel manga</a> opened in theaters in Japan on December 24 last year, grossing over 10.46 billion yen (approximately US$90.7 million).<br>\n<br>\n<a href=\"https://myanimelist.net/manga/magazine/1366/\" rel=\"nofollow\">Jump GIGA</a> ran the prequel manga from April to July in 2017. Shueisha published the manga as volume zero the following December. VIZ Media <a href=\"https://myanimelist.net/news/61601526\" rel=\"nofollow\">released</a> the volume in English under the title <i>Jujutsu Kaisen 0: Jujutsu High</i> last January.<br>\n<br>\nGege began serializing the <a href=\"https://myanimelist.net/manga/113138/\" rel=\"nofollow\">supernatural action sequel manga</a> in <a href=\"https://myanimelist.net/manga/magazine/83/\" rel=\"nofollow\">Weekly Shounen Jump</a> in March 2018. Shueisha shipped the 18th volume on December 25 last year. <i>Jujutsu Kaisen</i> has a cumulative 60 million copies of its volumes in circulation, including digital editions.<br>\n<br>\nThe <a href=\"https://myanimelist.net/anime/40748/\" rel=\"nofollow\">television anime</a> by animation studio <a href=\"https://myanimelist.net/anime/producer/569/\" rel=\"nofollow\">MAPPA</a> aired in 24 episodes in Fall 2020, adapting up to the beginning of the eighth volume. Crunchyroll simulcast the anime with subtitles and subsequently streamed dubbed versions in English, Spanish, Portuguese, French, German, and Russian.<br>\n<br>\nVIZ Media <a href=\"https://www.viz.com/jujutsu-kaisen\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">simulpubs</a> the manga digitally with the Japanese release through its Shounen Jump service and <a href=\"https://myanimelist.net/news/65634525\" rel=\"nofollow\">shipped</a> the 14th volume on February 2=1. The 15th volume will go on sale on April 5. Shueisha\'s Manga Plus platform also began <a href=\"https://mangaplus.shueisha.co.jp/titles/100034\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">simulpublishing</a> the manga in English in January 2019.<br>\n<br>\n<i>Jujutsu Kaisen</i> won the Grand Prize at the <a href=\"https://myanimelist.net/news/65687231\" rel=\"nofollow\">Tokyo Anime Award Festival 2022</a> in the television category.<br>\n<br>\nOfficial site: <a href=\"https://jujutsukaisen.jp/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://jujutsukaisen.jp/</a><br>\nOfficial Twitter: @<a href=\"https://twitter.com/animejujutsu\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">animejujutsu</a><br>\n<br>\nSource: <a href=\"https://www.oricon.co.jp/news/2224191/full/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Oricon News</a>\n  </div>\n', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644659378-d75d0e272fb481b05ea95a6b77b97ba9.jpeg', 1, '2022-02-13 09:08:39', '2022-02-13 09:08:39'),
(4, 'TAAF 2022 Anime of the Year Winners Announced', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644561774-99bfc635add4b2833e1a96dd9c232b8c.jpeg\">The winners of the Anime of the Year categories from the Tokyo Anime Award Festival 2022 (TAAF 2022) were announced on Thursday. A panel of judges selected the winners from a pool of 446 titles that either screened, aired, or were distributed in Japan between October 1, 2020 and September 30, 2021, with 100 titles (80 television anime and 20 theatrical anime) ultimately in the running for the Anime of the Year awards. <br>\n<br>\n<b>Grand Prize</b><br>\n<a href=\"https://myanimelist.net/anime/3786/\" rel=\"nofollow\">Evangelion: 3.0+1.0 Thrice Upon a Time</a> (Feature Film)<br>\n<a href=\"https://myanimelist.net/anime/40748/\" rel=\"nofollow\">Jujutsu Kaisen (TV)</a> (Television Series)<br>\n<br>\n<b>Anime Fan Award</b><br>\n<a href=\"https://myanimelist.net/anime/45577/\" rel=\"nofollow\">IDOLiSH7: Third Beat!</a><br>\n<br>\n<b>Individual Awards</b><br>\nWriters Category: <a href=\"https://myanimelist.net/people/5111/\" rel=\"nofollow\">Hideaki Anno</a> (<i>Evangelion: 3.0+1.0 Thrice Upon a Time</i>)<br>\nDirectors Category: Hideaki Anno<br>\nAnimators Category: <a href=\"https://myanimelist.net/people/40855/\" rel=\"nofollow\">Akira Matsushima</a> (<i>Kimetsu no Yaiba Movie: Mugen Ressha-hen</i>)<br>\nVisual Artists Category: <a href=\"https://myanimelist.net/people/39051/\" rel=\"nofollow\">Yuuichi Terao</a> (<i>Kimetsu no Yaiba Movie: Mugen Ressha-hen</i>)<br>\nSound Artists and Performers Category: <a href=\"https://myanimelist.net/people/5077/\" rel=\"nofollow\">Yuki Kajiura</a> (<i>Sword Art Online: Progressive Movie - Hoshi Naki Yoru no Aria</i>), <a href=\"https://myanimelist.net/people/14341/\" rel=\"nofollow\">Gou Shiina</a> (<i>Kimetsu no Yaiba: Mugen Ressha-hen</i>)<br>\n<br>\n<span style=\"font-size: 85%;\"><i>Note: The Anime Fan Award is awarded to the entry that received the most votes in the general voting. The titles listed for the individual awards are merely titles the recipient has worked on during this period; they are <u>not</u> the sole title the recipient won the award for.</i></span><br>\n<br>\nThe Tokyo Anime Award Festival is scheduled to be held in Ikebukuro, Tokyo between March 11 and 14, and will in addition to the Anime of the Year categories also present additional entries from around the world for its Feature Animation Competition and Short Animation Competition categories. In total, 31 entries from 27 countries were submitted to the former category, while 874 entries from 57 countries were submitted to the latter. TAAF 2022 Preliminary Selection Committee <a href=\"https://animefestival.jp/en/post/1333/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">selected 36 of these entries</a> (four for Feature Animation and 32 for Short Animation) to qualify for the Grand Prize and the Award of Excellence in their respective categories, with each category awarding it to two titles.<br>\n<br>\nSource: <a href=\"https://animefestival.jp/ja/post/15548/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Official Site</a>, <a href=\"https://natalie.mu/comic/news/465237\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Comic Natalie</a><br>\n<br>\n<a href=\"https://myanimelist.net/news/61993249\" rel=\"nofollow\">← Previous Year</a>\n  </div>', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644561774-99bfc635add4b2833e1a96dd9c232b8c.jpeg', 1, '2022-02-13 09:09:55', '2022-02-13 09:09:55'),
(5, 'Original TV Anime \'Extreme Hearts\' Announced for Summer 2022', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644508604-f2be6e5aaf028b994c202654fdf54ea5.jpeg\">The official website of the <i>Extreme Hearts</i> project confirmed its television anime format on Thursday, revealing the main staff, cast, and a teaser visual (pictured). The anime, written by <a href=\"https://myanimelist.net/people/8826/\" rel=\"nofollow\">Masaki Tsuzuki</a> (<i>Mahou Shoujo Lyrical Nanoha</i>, <i>Dog Days</i>), is scheduled to premiere in Summer 2022.<br>\n<br>\nSynopsis<br>\nThe story is set in the near future.<br>\n<br>\n\"Hyper Sports\" became a hobby competitions that is popular with children and adults alike. Hiyori Hayama is an high school singer who has nothing to do with Hyper Sports. However, the story is set in motion after a certain incident and encounter. \"This is the story about how we met our best friends.\"<br>\n<br>\nCast<br>\nHiyori Hayama: <a href=\"https://myanimelist.net/people/41974/\" rel=\"nofollow\">Ruriko Noguchi</a> (<i>Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu.</i>)<br>\nSaki Kodaka: <a href=\"https://myanimelist.net/people/47918/\" rel=\"nofollow\">Miho Okasaki</a> (<i>Otome Game no Hametsu Flag shika Nai Akuyaku Reijou ni Tensei shiteshimatta...</i>)<br>\nSumika Maehara: <a href=\"https://myanimelist.net/people/30613/\" rel=\"nofollow\">Kana Yuuki</a> (<i>Harukana Receive</i>)<br>\n<br>\nStaff<br>\nOriginal Creator, Script: Masaki Tsuzuki<br>\nOriginal Character Design: <a href=\"https://myanimelist.net/people/26679/\" rel=\"nofollow\">Waki Ikawa</a> (<i>Mitou Shoukan://Blood Sign</i> light novel)<br>\nOriginal Sub-character Design: <a href=\"https://myanimelist.net/people/13133/\" rel=\"nofollow\">Shuuichi Kawakami</a> (<i>Mahou Shoujo Lyrical Nanoha Innocent</i> manga), <a href=\"https://myanimelist.net/people/2256/\" rel=\"nofollow\">Takuya Fujima</a> (<i>Senyoku no Sigrdrifa</i>)<br>\nDirector: <a href=\"https://myanimelist.net/people/6837/\" rel=\"nofollow\">Junji Nishimura</a> (<i>ViVid Strike!</i>)<br>\nCharacter Design: Issei Arakaki (<i>Vlad Love</i>)<br>\nChief Animation Director: Issei Arakaki, <a href=\"https://myanimelist.net/people/42579/\" rel=\"nofollow\">Kana Hashidate</a> (<i>Mahou Shoujo Lyrical Nanoha: Reflection</i>)<br>\n<br>\nOfficial site: <a href=\"https://exhearts.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">https://exhearts.com/</a><br>\nOfficial Twitter: @<a href=\"https://twitter.com/exh_official\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">exh_official</a><br>\n<br>\nSource: <a href=\"https://www.animatetimes.com/news/details.php?id=1644482318\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">animate Times</a><br>\n<br>\n<a href=\"https://myanimelist.net/anime/50999\" rel=\"nofollow\">Extreme Hearts</a> on MAL\n  </div>', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644508604-f2be6e5aaf028b994c202654fdf54ea5.jpeg', 1, '2022-02-13 09:11:06', '2022-02-13 09:11:06'),
(6, 'New \'Bastard!!: Ankoku no Hakaishin\' Anime Reveals Additional Cast, Staff, Teaser Promo', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644501574-d4e3ece20fbc4aff36a918101ba52c91.png\">The special program for the <a href=\"https://myanimelist.net/anime/50953/\" rel=\"nofollow\"><i>Bastard!!: Ankoku no Hakaishin</i></a> (<i>Bastard!!: Heavy Metal, Dark Fantasy</i>) anime series revealed additional cast, staff, theme song artists, and a teaser promotional video on Thursday. The new anime adapting <a href=\"https://myanimelist.net/people/2537/\" rel=\"nofollow\">Kazushi Hagiwara</a>\'s <a href=\"https://myanimelist.net/manga/611/\" rel=\"nofollow\">action fantasy manga</a> will stream in 24 episodes worldwide on Netflix in 2022.<br>\n<br>\nCast<br>\nRushe Renren: <a href=\"https://myanimelist.net/people/762/\" rel=\"nofollow\">Kanae Itou</a> (<i>Toaru Kagaku no Railgun</i>)<br>\nAbigail: <a href=\"https://myanimelist.net/people/2/\" rel=\"nofollow\">Tomokazu Sugita</a> (<i>Nanatsu no Taizai: Imashime no Fukkatsu</i>)<br>\nKall-Su: <a href=\"https://myanimelist.net/people/819/\" rel=\"nofollow\">Kensho Ono</a> (<i>JoJo no Kimyou na Bouken Part 5: Ougon no Kaze</i>)<br>\nSheila Metallicana: <a href=\"https://myanimelist.net/people/11184/\" rel=\"nofollow\">Nao Touyama</a> (<i>Granblue Fantasy The Animation</i>)<br>\n<br>\nStaff<br>\nCreature Design: Raita Sunaga (<i>Kokkoku</i>)<br>\nEffects Design: <a href=\"https://myanimelist.net/people/48083/\" rel=\"nofollow\">Tatsuo Yamada</a> (<i>Natsume Yuujinchou</i> creature design)<br>\nArt Director: <a href=\"https://myanimelist.net/people/40953/\" rel=\"nofollow\">Kazuhiro Inoue</a> (<a href=\"https://myanimelist.net/people/47395/\" rel=\"nofollow\">Kusanagi</a>) (<i>Hanebado!</i>)<br>\nArt Design: <a href=\"http://barnstorm-design-labo.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Barnstorm Design Labo</a> (<i>Arifureta Shokugyou de Sekai Saikyou</i>)<br>\nColor Design: <a href=\"https://myanimelist.net/people/40899/\" rel=\"nofollow\">Aiko Shinohara</a> (<i>Mugen no Juunin: Immortal</i>)<br>\nSpecial Effects Supervision: <a href=\"https://myanimelist.net/people/48176/\" rel=\"nofollow\">Kumiko Taniguchi</a> (<i>Kami no Tou</i>)<br>\nSpecial Effects: Ayumi Arahata (Team Taniguchi) (<i>Sabikui Bisco</i>)<br>\n3DCGI: <a href=\"https://myanimelist.net/anime/producer/1440/\" rel=\"nofollow\">Felix Film</a><br>\nDirector of Photography: <a href=\"https://myanimelist.net/people/49805/\" rel=\"nofollow\">Junpei Takatsu</a> (<i>Hataraku Saibou Black</i> (TV))<br>\nEditing: <a href=\"https://myanimelist.net/people/40438/\" rel=\"nofollow\">Mai Hasegawa</a> (editz) (<i>Killing Bites</i>)<br>\n<br>\nRock band <a href=\"https://myanimelist.net/people/10449/\" rel=\"nofollow\">Coldrain</a> (<i>Enen no Shouboutai</i>) is performing the opening theme, while singer <a href=\"https://myanimelist.net/people/45738/\" rel=\"nofollow\">Tielle</a> (<i>Mobile Suit Gundam Unicorn RE:0096</i>) will perform the ending theme.<br>\n<br>\n<a href=\"https://myanimelist.net/people/33185/\" rel=\"nofollow\">Takaharu Ozaki</a> (<i>Goblin Slayer</i>) is helming the anime at <a href=\"https://myanimelist.net/anime/producer/839/\" rel=\"nofollow\">LIDENFILMS</a>. <a href=\"https://myanimelist.net/people/2471/\" rel=\"nofollow\">Yousuke Kuroda</a> (<i>Hellsing Ultimate</i>) is handling the series composition and <a href=\"https://myanimelist.net/people/56564/\" rel=\"nofollow\">Sayaka Ono</a> (<i>Cross Ange: Tenshi to Ryuu no Rondo</i>) is designing the characters. <a href=\"https://myanimelist.net/people/5070/\" rel=\"nofollow\">Yasuharu Takanashi</a> (<i>Jigoku Shoujo</i>) is composing the music.<br>\n<br>\nHagiwara originally published a one-shot in <a href=\"https://myanimelist.net/manga/magazine/83/\" rel=\"nofollow\">Weekly Shounen Jump</a> in 1987 and began regular serialization the following year. The manga then ran in Weekly Shounen Jump\'s special quarterly edition between 1990 and 1996 and returned to the original magazine from 1997 to 2000. <a href=\"https://myanimelist.net/manga/magazine/25/\" rel=\"nofollow\">Ultra Jump</a> began serializing the manga in 2001 and published the latest chapter in 2010 before the manga entered hiatus. Shueisha released the 27th volume in March 2012.<br>\n<br>\nTeaser PV<br>\n<iframe class=\"movie youtube\" width=\"425\" height=\"355\" frameborder=\"0\" src=\"https://youtube.com/embed/taiIGN0VNGc?rel=1\"></iframe><br>\n<br>\nSource: Press Release\n  </div>', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644501574-d4e3ece20fbc4aff36a918101ba52c91.png', 1, '2022-02-13 09:11:57', '2022-02-13 09:11:57'),
(7, '\'Ao Ashi\' Announces Pair of Additional Cast', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644434183-3a309700446158aba1451646525119f5.jpeg\">The official website of the <a href=\"https://myanimelist.net/anime/49052/\" rel=\"nofollow\"><i>Ao Ashi</i></a> (<i>Aoashi</i>) television anime revealed on Wednesday two additional cast members and its first key visual (pictured). The anime adapting <a href=\"https://myanimelist.net/people/3467/\" rel=\"nofollow\">Yuugo Kobayashi</a>\'s <a href=\"https://myanimelist.net/manga/102256/\" rel=\"nofollow\">soccer manga</a> is scheduled to premiere on April 9 at 6:25 p.m. on NHK E-Tele.<br>\n<br>\n<a href=\"https://myanimelist.net/people/36471/\" rel=\"nofollow\">Shunsuke Takeuchi</a> (<i>Senpai ga Uzai Kouhai no Hanashi</i>) and <a href=\"https://myanimelist.net/people/34209/\" rel=\"nofollow\">Yuuichirou Umehara</a> (<i>2.43: Seiin Koukou Danshi Volley-bu</i>) are joining the <a href=\"https://myanimelist.net/news/64776700\" rel=\"nofollow\">previously announced</a> cast as Nagisa Akutsu and Haruhisa Kuribayashi, respectively.<br>\n<br>\n<a href=\"https://myanimelist.net/people/40847/\" rel=\"nofollow\">Akira Satou</a> (<i>Release the Spyce</i>) is helming the anime at <a href=\"https://myanimelist.net/anime/producer/10/\" rel=\"nofollow\">Production I.G</a> and <a href=\"https://myanimelist.net/people/19175/\" rel=\"nofollow\">Masahiro Yokotani</a> (<i>Free!</i>) is handling the series composition. <a href=\"https://myanimelist.net/people/7520/\" rel=\"nofollow\">Masaru Yokoyama</a> (<i>Taisou Zamurai</i>) is composing the music.<br>\n<br>\n<a href=\"https://myanimelist.net/people/51548/\" rel=\"nofollow\">Manabu Nakatake</a> (<i>Sket Dance</i>), <a href=\"https://myanimelist.net/people/32869/\" rel=\"nofollow\">Toshie Kawamura</a> (<i>Lord of Vermilion: Guren no Ou</i>), <a href=\"https://myanimelist.net/people/31717/\" rel=\"nofollow\">Asuka Yamaguchi</a> (<i>The God of High School</i> sub-character design), and <a href=\"https://myanimelist.net/people/50403/\" rel=\"nofollow\">Saki Hasegawa</a> (<i>Shin Chuuka Ichiban!</i>) are designing the characters.<br>\n<br>\nKobayashi began the manga based on <a href=\"https://myanimelist.net/people/20909/\" rel=\"nofollow\">Naohiko Ueno</a>\'s original draft in <a href=\"https://myanimelist.net/manga/magazine/3/\" rel=\"nofollow\">Big Comic Spirits</a> in January 2015. Shogakukan will ship the 27th volume on February 28.<br>\n<br>\nSource: <a href=\"https://natalie.mu/comic/news/465078\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Comic Natalie</a>\n  </div>', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644434183-3a309700446158aba1451646525119f5.jpeg', 1, '2022-02-13 09:12:33', '2022-02-13 09:12:33'),
(8, '\'Love All Play\' Reveals Supporting Cast', '<div class=\"content clearfix\">\n    <img class=\"userimg img-a-r\" src=\"https://cdn.myanimelist.net/s/common/uploaded_files/1644339484-0ff00c90214490ab2abb1e8df2da6fb1.jpeg\">The official website of the <a href=\"https://myanimelist.net/anime/49556/\" rel=\"nofollow\"><i>Love All Play</i></a> television anime revealed on Wednesday seven supporting cast members and its first key visual (pictured). The anime is scheduled to premiere on April 2 at 5:30 p.m. on NTV and Yomiuri TV.<br>\n<br>\nCast<br>\nShouhei Sakaki: <a href=\"https://myanimelist.net/people/14155/\" rel=\"nofollow\">Youhei Azakami</a> (<i>Kuromukuro</i>)<br>\nKouki Matsuda: <a href=\"https://myanimelist.net/people/17635/\" rel=\"nofollow\">Makoto Furukawa</a> (<i>Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen</i>)<br>\nTaichi Higashiyama: <a href=\"https://myanimelist.net/people/819/\" rel=\"nofollow\">Kensho Ono</a> (<i>Kuroko no Basket</i>)<br>\nYouji Higashiyama: <a href=\"https://myanimelist.net/people/167/\" rel=\"nofollow\">Tetsuya Kakihara</a> (<i>Yowamushi Pedal</i>)<br>\nAkira Uchida: <a href=\"https://myanimelist.net/people/672/\" rel=\"nofollow\">Yuuki Kaji</a> (<i>Haikyuu!!</i>)<br>\nRika Mizushima: <a href=\"https://myanimelist.net/people/6634/\" rel=\"nofollow\">Minako Kotobuki</a> (<i>Hibike! Euphonium</i>)<br>\nHitoshi Ebihara: <a href=\"https://myanimelist.net/people/123/\" rel=\"nofollow\">Kazuya Nakai</a> (<i>Gintama</i>)<br>\n<br>\nThe cast are joining <a href=\"https://myanimelist.net/people/16635/\" rel=\"nofollow\">Natsuki Hanae</a> (<i>Hoshiai no Sora</i>) as the main character Ryou Mizushima.<br>\n<br>\n<a href=\"https://myanimelist.net/people/29285/\" rel=\"nofollow\">Hiroshi Takeuchi</a> (<i>Blade &amp; Soul</i>) is helming the anime at <a href=\"https://myanimelist.net/anime/producer/22/\" rel=\"nofollow\">Nippon Animation</a> and <a href=\"https://myanimelist.net/anime/producer/28/\" rel=\"nofollow\">OLM</a>. <a href=\"https://myanimelist.net/people/8462/\" rel=\"nofollow\">Tomoko Konparu</a> (<i>Ao Haru Ride</i>) is handling the series composition and is penning the script with <a href=\"https://myanimelist.net/people/30221/\" rel=\"nofollow\">Miharu Hirami</a> (<i>Handa-kun</i>), <a href=\"https://myanimelist.net/people/26493/\" rel=\"nofollow\">Shingo Irie</a> (<i>Hinomaruzumou</i>), and <a href=\"https://myanimelist.net/people/2096/\" rel=\"nofollow\">Michiko Yokote</a> (<i>Tsurune: Kazemai Koukou Kyuudoubu</i>). <a href=\"https://myanimelist.net/people/55053/\" rel=\"nofollow\">Riko Kaneda</a> (<i>Yakunara Mug Cup mo</i> animation director) is designing the characters and <a href=\"https://myanimelist.net/people/21495/\" rel=\"nofollow\">Yuki Hayashi</a> (<i>Bakuten!!</i>) is composing the music.<br>\n<br>\nThe anime adapts Asami Koseki\'s badminton novel, which had its first novel shipped under Poplar\'s Pureful imprint in May 2011. The fourth and latest novel was released in March 2014. A new edition of the novel released on August 25.<br>\n<br>\nSource: <a href=\"https://www.animatetimes.com/news/details.php?id=1644308442\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">animate Times</a>\n  </div>', 'https://cdn.myanimelist.net/s/common/uploaded_files/1644339484-0ff00c90214490ab2abb1e8df2da6fb1.jpeg', 1, '2022-02-13 09:13:03', '2022-02-13 09:13:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` text,
  `value` longtext,
  `rating` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `anime_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `value`, `rating`, `user_id`, `anime_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Ousama Ranking', '<div class=\"spaceit textReadability word-break pt8 mt8\" style=\"clear: both; border-top: 1px solid #ebebeb;\">\r\n        <div style=\"float: left; display: none; margin: 0 10px 10px 0\" id=\"score424607\">\r\n      <table border=\"0\" width=\"105\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderClass\" style=\"border-width: 1px;\">\r\n        <tbody><tr>\r\n          <td class=\"borderClass bgColor1\"><strong>Overall</strong></td>\r\n          <td class=\"borderClass bgColor1\"><strong>10</strong></td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" align=\"left\">Story</td>\r\n          <td class=\"borderClass\">0</td>\r\n        </tr>\r\n                  <tr>\r\n            <td class=\"borderClass\" align=\"left\">Animation</td>\r\n            <td class=\"borderClass\">0</td>\r\n          </tr>\r\n          <tr>\r\n            <td class=\"borderClass\" align=\"left\">Sound</td>\r\n            <td class=\"borderClass\">0</td>\r\n          </tr>\r\n                <tr>\r\n          <td class=\"borderClass\" align=\"left\">Character</td>\r\n          <td class=\"borderClass\">0</td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\" align=\"left\">Enjoyment</td>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\">0</td>\r\n        </tr>\r\n      </tbody></table>\r\n    </div>\r\n\r\n                          \r\n    Perfection is and will always be subjective; but to me, the beginning of Ousama Ranking is pure perfection. That’s the reason I’ve written my first preliminary review, just to tell you guys and to remember how amazing my first experience with Ousama Ranking was. Please note that my score may change in the future, but I am reviewing episodes 1 to 6 – and it’s a solid 10.<br>\r\n<br>\r\nFor starters, let me make it clear; Ousama Ranking takes place in a medieval looking world and looks like a fairytale. It is full of colour; green, blue, yellow, light brown. I think it’s adorable-looking and what we’d\r\n\r\n          <span style=\"\" id=\"review424607\">\r\n        call the epitome of wholesomeness. That’s the reason some people compare it to Disney or Studio Ghibli – not me, anyway. To me, it’s a unique story with a unique execution, so far. It also has its dark side and there are always uncomfortable events happening, hindering the protagonists’ journey. I cannot describe the way evil is portrayed in this anime - the use of evil figures is mysterious, and there are always good-willed people that end up making evil deeds as well. But what makes this fairytale special is the feeling of hope it radiates, as well as assurance that there will be joy, love and positive or meaningful outcomes as the story proceeds.<br>\r\nEpisodes 4-6 were darker and focused mostly on the world build up, which was something totally different from your average anime series. Until now, the story is full of morals and beautiful metaphors. The fantasy, as well as the emotional impact this anime succeeds in making always amaze the watcher. There\'s no doubt this show is special, its early near-9 mean score says it all.<br>\r\n<br>\r\nThe following paragraph contains some minor spoilers about the story and it is not really important in my opinion – unless you want to know some basic things that happen in the first episodes, I suggest you’d skip it.<br>\r\nWith a powerful and emotional start that even made me cry at times, Bojji’s journey to becoming the king begins. Bojji is a kind-hearted child, but there’s something that makes his life harder; he’s deaf and incapable of speaking clearly. He is one of the two sons of the kingdom’s king, who is seriously ill. His little brother, Daida, does not believe in him and acts egoistically, looking for ways to sabotage Bojji and become the next king. Almost nobody believes in Bojji, but fortunately, he is not alone. He has made a new friend; Kage, who is a small black, mysterious creature with an interesting backstory I am not going to spoil. As the story proceeds, it is clearly seen that many characters such as Daida, his mother, Bebin, Domas are deeper than they seem and hide a side that\'s not easy to be seen from the first episode. This kind of character writing is written with care and uses an effective technique to make the audience excited with plot twists unexpected turns of events.  But like I said, this paragraph was not important because you can’t feel Wit studio’s great execution just by reading about it.<br>\r\n<br>\r\nThe soundtrack deserves to be mentioned too, especially the OP and ED songs. The famous Japanese band King Gnu, who are one of the most popular j-bands out there due to their huge success with Hakujitsu, return to anime after their debut on Banana Fish (2018). Their OP is great here, but yama’s heartwarming ED is even more amazing to me; the song fits the anime so well that it makes the end of the episode even more emotional.<br>\r\n<br>\r\nTo summarize Ousama Ranking’s introduction, I’m already convinced this is going to be an unforgettable anime. Even if it is set in a fantastic world, its morals are touching and important for our 21st century society which, at times, may not be as developed as it should be. So, have a seat and enjoy Bojji’s journey until the end. You will definitely love that little boy and his story.\r\n        \r\n<div id=\"revhelp_output_424607\" class=\"mt8 js-review-btn-helpful js-review-helpful-424607\">\r\n      <a href=\"https://myanimelist.net/login.php?from=%2Fanime%2F40834%2FOusama_Ranking%2Freviews\" class=\"button_form\">Helpful</a>\r\n  </div>\r\n      </span>\r\n      <a href=\"javascript:void(0);\" id=\"reviewToggle424607\" class=\"js-toggle-review-button\" data-id=\"424607\">show less</a>\r\n      </div>', 4, 2, 5, '2022-02-13 09:30:37', '2022-02-13 09:30:37'),
(3, 'JoJo no Kimyou na Bouken Part 6: Stone Ocean', '<div class=\"spaceit textReadability word-break pt8 mt8\" style=\"clear: both; border-top: 1px solid #ebebeb;\">\r\n        <div style=\"float: left; display: none; margin: 0 10px 10px 0\" id=\"score425891\">\r\n      <table border=\"0\" width=\"105\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderClass\" style=\"border-width: 1px;\">\r\n        <tbody><tr>\r\n          <td class=\"borderClass bgColor1\"><strong>Overall</strong></td>\r\n          <td class=\"borderClass bgColor1\"><strong>10</strong></td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" align=\"left\">Story</td>\r\n          <td class=\"borderClass\">9</td>\r\n        </tr>\r\n                  <tr>\r\n            <td class=\"borderClass\" align=\"left\">Animation</td>\r\n            <td class=\"borderClass\">10</td>\r\n          </tr>\r\n          <tr>\r\n            <td class=\"borderClass\" align=\"left\">Sound</td>\r\n            <td class=\"borderClass\">10</td>\r\n          </tr>\r\n                <tr>\r\n          <td class=\"borderClass\" align=\"left\">Character</td>\r\n          <td class=\"borderClass\">9</td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\" align=\"left\">Enjoyment</td>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\">10</td>\r\n        </tr>\r\n      </tbody></table>\r\n    </div>\r\n\r\n                          \r\n    David production never disappoints with Jojo anime adaptations and this one really is well done. The show doesn\'t fail at all to give you a great time. If people are wondering if Netflix will destroy this one, you don\'t have to worry, David production is still taking care of the animation and the important stuff. The animations are spectacular and that isn\'t even the best part about it. The things happening will keep you on your toes with no idea what may happen in the next moment. Intense, Entertaining and Bizzare. That\'s what this part is. As far as I\'ve seen, the episodes are really\r\n\r\n          <span style=\"\" id=\"review425891\">\r\n        well done. The CGI opening is a visual treat, Ending song is just. I won\'t say much about it because I don\'t want to spoil anything for fellow JoJo fans. \r\n        \r\n<div id=\"revhelp_output_425891\" class=\"mt8 js-review-btn-helpful js-review-helpful-425891\">\r\n      <a href=\"https://myanimelist.net/login.php?from=%2Fanime%2F48661%2FJoJo_no_Kimyou_na_Bouken_Part_6__Stone_Ocean%2Freviews\" class=\"button_form\">Helpful</a>\r\n  </div>\r\n      </span>\r\n      <a href=\"javascript:void(0);\" id=\"reviewToggle425891\" class=\"js-toggle-review-button\" data-id=\"425891\">show less</a>\r\n      </div>', 5, 3, 8, '2022-02-13 09:32:29', '2022-02-13 09:32:29'),
(4, 'Sono Bisque Doll wa Koi wo Suru', '<div class=\"spaceit textReadability word-break pt8 mt8\" style=\"clear: both; border-top: 1px solid #ebebeb;\">\r\n        <div style=\"float: left; display: none; margin: 0 10px 10px 0\" id=\"score432230\">\r\n      <table border=\"0\" width=\"105\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderClass\" style=\"border-width: 1px;\">\r\n        <tbody><tr>\r\n          <td class=\"borderClass bgColor1\"><strong>Overall</strong></td>\r\n          <td class=\"borderClass bgColor1\"><strong>9</strong></td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" align=\"left\">Story</td>\r\n          <td class=\"borderClass\">10</td>\r\n        </tr>\r\n                  <tr>\r\n            <td class=\"borderClass\" align=\"left\">Animation</td>\r\n            <td class=\"borderClass\">10</td>\r\n          </tr>\r\n          <tr>\r\n            <td class=\"borderClass\" align=\"left\">Sound</td>\r\n            <td class=\"borderClass\">9</td>\r\n          </tr>\r\n                <tr>\r\n          <td class=\"borderClass\" align=\"left\">Character</td>\r\n          <td class=\"borderClass\">10</td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\" align=\"left\">Enjoyment</td>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\">9</td>\r\n        </tr>\r\n      </tbody></table>\r\n    </div>\r\n\r\n                          \r\n    The hero of the piece is a withdrawn and meek high school boy (now there’s a switch) called Gojou Wakana (Ishige Shouya). Basically, the course of his entire childhood is set by one horrible little who mocks him for his love of hina dolls. I can totally buy this – childhood traumas like that are incredibly scarring. Wakana’s love of dolls isn’t stunted, but he does retreat into social isolation (though he might have been isolated before, too), with only his doll-making grandfather (Ono Atsushi) in on his secret. This is pretty unavoidable, as Wakana is in training to take over the family doll shop.<br>\r\n<br>\r\nFrankly,\r\n\r\n          <span style=\"\" id=\"review432230\">\r\n        I was expecting the grandpa to be dead after the time skip, but he’s fine (just old) – it’s the boy’s parents (and maybe sister – truck-kun?) who are gone. Wakana is happy enough learning at his feet, though at this point he’s only mastered the clothes-making, and gramps is right to be worried about his grandson’s obvious black hole of social life. All these changes in not especially original but quite memorable fashion, as Kitagawa Marin, literally falls into his life.  This is one of anime’s great entrances, I have to say, as unlikely as it is to believe.<br>\r\nTo Wakana Marin seems like the exact opposite of him in every way, not even factoring gender into it.  She’s popular, forceful, and gorgeous (and wears more makeup than I’ve seen on an anime schoolgirl in a long time).  This fits neatly into his generally self-pitying worldview, but the realization that she’s an otaku shakes him up a bit.  What he subconsciously realizes is that the most important way Marin is his opposite is that she embraces and defends her passion, rather than keeping it a secret.  I’d like to think this makes Wakana feel a little ashamed of himself, but that’s probably projection on my part.<br>\r\n<br>\r\nFortunately, this is anime, and fate intervenes to move the needle.  Grampa’s Shouwa-era sewing machine breaks down, forcing Wakana to get resourceful and use the one at school.  As there’s no home ec club he figures his secret is safe, but to his dismay who else but Kitagawa-san walks in on him.  And once she realizes he knows how to make clothes she promptly starts undressing (she at least has some sense of embarrassment about it, but not much given the length of her skirt).  Why?  To show him her first attempt at cosplay – which Wakana reflexively eviscerates like Frank Rich after a bad Reuben.  And thus, a new friendship is born.<br>\r\nI think the reason this works as well as it does is Marin.  She never mocks Wakana, who’s pretty mockable.  <br>\r\nThe main thrust of the premiere is that through her lifestyle she shows him the problem with his – she feels comfortable being herself, even if society might view it as a bit weird.  There’s a bit of ecchi here but it’s not crass or over-the-top, and while I’m sure romance will flower between these two, I like the premise is built around self-actualization. <br>\r\nNothing to say they just nailed that. If nothing tragic happens at the end which is very unlikely then this is one of the best airing anime out there now. I would definitely recommend it to anyone.\r\n        \r\n<div id=\"revhelp_output_432230\" class=\"mt8 js-review-btn-helpful js-review-helpful-432230\">\r\n      <a href=\"https://myanimelist.net/login.php?from=%2Fanime%2F48736%2FSono_Bisque_Doll_wa_Koi_wo_Suru%2Freviews\" class=\"button_form\">Helpful</a>\r\n  </div>\r\n      </span>\r\n      <a href=\"javascript:void(0);\" id=\"reviewToggle432230\" class=\"js-toggle-review-button\" data-id=\"432230\">show less</a>\r\n      </div>', 4, 3, 10, '2022-02-13 09:32:29', '2022-02-13 09:32:29'),
(5, 'Shingeki no Kyojin: The Final Season Part 2', '<div class=\"spaceit textReadability word-break pt8 mt8\" style=\"clear: both; border-top: 1px solid #ebebeb;\">\r\n        <div style=\"float: left; display: none; margin: 0 10px 10px 0\" id=\"score432478\">\r\n      <table border=\"0\" width=\"105\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderClass\" style=\"border-width: 1px;\">\r\n        <tbody><tr>\r\n          <td class=\"borderClass bgColor1\"><strong>Overall</strong></td>\r\n          <td class=\"borderClass bgColor1\"><strong>10</strong></td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" align=\"left\">Story</td>\r\n          <td class=\"borderClass\">10</td>\r\n        </tr>\r\n                  <tr>\r\n            <td class=\"borderClass\" align=\"left\">Animation</td>\r\n            <td class=\"borderClass\">10</td>\r\n          </tr>\r\n          <tr>\r\n            <td class=\"borderClass\" align=\"left\">Sound</td>\r\n            <td class=\"borderClass\">10</td>\r\n          </tr>\r\n                <tr>\r\n          <td class=\"borderClass\" align=\"left\">Character</td>\r\n          <td class=\"borderClass\">10</td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\" align=\"left\">Enjoyment</td>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\">10</td>\r\n        </tr>\r\n      </tbody></table>\r\n    </div>\r\n\r\n                          \r\n    ***THIS REVIEW CONTAINS MANGA SPOILERS***<br>\r\n<br>\r\nATTACK ON TITAN as you all know is one of the most influential anime ever made. Every frame of this anime is a work of art. There are anime which start off great but go down as the number of seasons increase. But ATTACK ON TITAN only becomes better and better every season.<br>\r\n<br>\r\n<br>\r\n<br>\r\nSTORY<br>\r\n<br>\r\nThe plot is amazing as usual. Eren the MC\'s goal is basically freedom for his people who are portrayed as devils by the outside world. It shows how far someone can go for their freedom. <br>\r\n<br>\r\n<br>\r\nSOUND<br>\r\n<br>\r\nThe OSTs are orchestral masterpieces. Hiroyuki Sawano the goat didn\'t miss in this season\r\n\r\n          <span style=\"\" id=\"review432478\">\r\n        too. Ashes on fire gives goosebumps every time we listen it. The opening RUMBLING RUMBLING ITS COMING is a great source of hype to start the episode. The lyrics of the ending song \"AKUMA NO KO\" matches this season accurately. The lines literally translate to \"This world is cruel but I still love you. Even if I sacrifice everything, I will protect you.\"<br>\r\n<br>\r\n<br>\r\nART<br>\r\n<br>\r\nThe art style stays faithful to the manga. It\'s pretty great. MAPPA did a great job animating this season compared to the previous one.<br>\r\n<br>\r\n<br>\r\nCHARACTER<br>\r\n<br>\r\nAll the characters are very well written. Sometimes it becomes tough to say who are on the good side and who on the bad. Eren, Armin, Reiner are some of the best written characters to mention. The relation between Eren and Zeke as brothers is a complex one. It is pretty well written<br>\r\n   <br>\r\n<br>\r\n<br>\r\nENJOYMENT<br>\r\n<br>\r\nAlmost all the episodes are enjoyable. There is almost no single boring episode because of the very great pacing. Every episode makes you want more and more because of the suspense that is filled in every frame.<br>\r\n<br>\r\n<br>\r\nOVERALL 10/10<br>\r\n<br>\r\n\r\n        \r\n<div id=\"revhelp_output_432478\" class=\"mt8 js-review-btn-helpful js-review-helpful-432478\">\r\n      <a href=\"https://myanimelist.net/login.php?from=%2Fanime%2F48583%2FShingeki_no_Kyojin__The_Final_Season_Part_2%2Freviews\" class=\"button_form\">Helpful</a>\r\n  </div>\r\n      </span>\r\n      <a href=\"javascript:void(0);\" id=\"reviewToggle432478\" class=\"js-toggle-review-button\" data-id=\"432478\">show less</a>\r\n      </div>', 3, 4, 3, '2022-02-13 09:37:29', '2022-02-13 09:37:29'),
(6, 'Shingeki no Kyojin: The Final Season Part 2', '<div class=\"spaceit textReadability word-break pt8 mt8\" style=\"clear: both; border-top: 1px solid #ebebeb;\">\r\n        <div style=\"float: left; display: none; margin: 0 10px 10px 0\" id=\"score432540\">\r\n      <table border=\"0\" width=\"105\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderClass\" style=\"border-width: 1px;\">\r\n        <tbody><tr>\r\n          <td class=\"borderClass bgColor1\"><strong>Overall</strong></td>\r\n          <td class=\"borderClass bgColor1\"><strong>10</strong></td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" align=\"left\">Story</td>\r\n          <td class=\"borderClass\">10</td>\r\n        </tr>\r\n                  <tr>\r\n            <td class=\"borderClass\" align=\"left\">Animation</td>\r\n            <td class=\"borderClass\">7</td>\r\n          </tr>\r\n          <tr>\r\n            <td class=\"borderClass\" align=\"left\">Sound</td>\r\n            <td class=\"borderClass\">9</td>\r\n          </tr>\r\n                <tr>\r\n          <td class=\"borderClass\" align=\"left\">Character</td>\r\n          <td class=\"borderClass\">9</td>\r\n        </tr>\r\n        <tr>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\" align=\"left\">Enjoyment</td>\r\n          <td class=\"borderClass\" style=\"border-width: 0;\">10</td>\r\n        </tr>\r\n      </tbody></table>\r\n    </div>\r\n\r\n                          \r\n    There\'s only a small amount of anime that can reach the status of what Attack on Titan has achieved and the feats that it has accomplished will be commended upon for generations. The show that has stood a top any other for going on 9 years will be making her grand exit from the anime scene and be inducted as one of the greats. As the haters cling onto straws to make up for lackluster complaints about the show, those who let Attack On Titan captivate your mind and let it take you on a journey you\'ll never experience again will be sending the show\r\n\r\n          <span style=\"\" id=\"review432540\">\r\n        off with a solemn but satisfying goodbye. If you even consider yourself a casual anime watcher, Attack On Titan is a must have on your watch list.<br>\r\n<br>\r\nStory: 9.5<br>\r\n<br>\r\nIf it wasn\'t for the controversial chapters towards the end, I would easily give this category a 10. No show for a very long time will have a story with the amount of depth that Attack On Titan reached. With once a show about humans surviving giant naked people to a race war about a legacy of nations who have fought for over thousands of years with ancient abilities, the show gives you little by little every episode. The basicness of the show the first 10 episodes of Season 1 came out with were intentional, they are meant to be basic and cliched. Isayama wanted to give out layers of the show slowly but surely to keep people invested. Once you thought you had figured out how the world works and functions, the next season of AoT completely wiped it clean and gave you a world that is 10x larger and more vast. I\'ve seen very few anime that can capture the amount of storytelling elements and connected dots AoT has achieved with only 78 episodes. Larger shows can come close to its storytelling ability but no show has done it better with less than 100 episodes. The expository that Attack On Titan tells the reader is something anyone with a brain could get into and only choose to hate because they don\'t enjoy its success. When AoT is in its prime writing, no show even comes close. Return To Shiganshina is still to this day the greatest arc I\'ve ever witnessed and I don\'t see any arc from any show even coming close. And now we close out with AoT The Final Season Part 2 with another action packed finale to the series. We are beginning to reach a controversial arc as the final manga chapters of it have split the fanbase in half. I do have my complaints with it as well as MAPPA’s adaptation of the Final Season. But it is nothing that takes away my full enjoyment of the show. Since I’ve already read the manga, I judge less episodes based off of its content in the episode itself but rather how well it adapts the manga. There are some episodes that I think could have been better and also some that I believe MAPPA knocked it out of the park in. Only time will tell if MAPPA can close out this legendary series on a high note.<br>\r\n<br>\r\nArt: 7<br>\r\n<br>\r\nMAPPA has been in some controversy over their animation style and the vast use of CGI. While I am proud to say it is far better than Part 1\'s CGI, hand drawn will always be better. Never should a studio be given time constraints that reflect poor quality of the product. I think MAPPA is a very solid studio but the CGI does look rough in some frames and makes the fight scenes look very stiff and non fluid. This does make me concerned for future scenes as CGI will almost definitely be used heavily in the future.<br>\r\n<br>\r\nSound: 8.5<br>\r\n<br>\r\nNot the biggest heavy metal fan but the opening does its job, although very spoiler filled. The ending is beautiful though. And I do appreciate them using a different soundtrack other than Ashes Of Fire. They used that OST every single damn episode in Part 1.<br>\r\n<br>\r\nCharacters: 9<br>\r\n<br>\r\nEren Jaeger will always be one of my favorite protagonists ever made. Finally a shonen mc that has actual character development and has more depth to his character than a 1 inch hole. Most shonen mc\'s lack in development and go for battle/strength feats instead which takes away from the character. Eren goes from a hell bent revenge brat whose only goal is to kill Titans to understanding that no one is an \"enemy\" or a \"bad guy\" but rather two sides fighting for what they believe in. He is forced to kill, he is forced to sacrifice for an end goal only he can see. He\'s a character that anyone should respect and should admire his development. Focusing on the character instead of a new form or attack they develop is a far better way of developing a show and its characters. Of course other than Eren, you have Zeke, Reiner, Armin, Levi, Erwin.. I could go on and on. They each have their place in the show and they perfect the role. I could make a 5 page analysis about them but I\'ll save you the time. Fantastic characters to commend a fantastic show.<br>\r\n<br>\r\nEnjoyment: 10<br>\r\n<br>\r\nI don\'t think I will ever be as hype to watch episodes of a show as AoT. Every other show I\'ve watched, it\'s always been a secondary issue to watch the latest episode. When AoT episodes drop, I make sure my schedule is fully clear to enjoy it to the fullest. No other anime has been able to hook me to a screen like AoT does and it\'s 20 minute episodes feel like 5 minutes long. I usually find weekly episodes as a drag and take away from my enjoyment of the show. But that has never happened for AoT, in fact it just makes me more anxious to watch. Never will I watch a show that will get me this excited and it is going to be heartbreaking watching it end.<br>\r\n<br>\r\nOverall: 10<br>\r\n<br>\r\nThank you AoT for providing me the enjoyment I\'ve been seeking for in a show. You will live on in my life as a baseline for what shows should reach and I am glad to be a part of the many people who experienced you as you were airing. The king of modern shonen will have their last bow and I am very excited to see it do so. Attack On Titan will be talked about decades upon decades from now and will stand the test of time as one of the best shows in any medium ever made.<br>\r\n\r\n        \r\n<div id=\"revhelp_output_432540\" class=\"mt8 js-review-btn-helpful js-review-helpful-432540\">\r\n      <a href=\"https://myanimelist.net/login.php?from=%2Fanime%2F48583%2FShingeki_no_Kyojin__The_Final_Season_Part_2%2Freviews\" class=\"button_form\">Helpful</a>\r\n  </div>\r\n      </span>\r\n      <a href=\"javascript:void(0);\" id=\"reviewToggle432540\" class=\"js-toggle-review-button\" data-id=\"432540\">show less</a>\r\n      </div>', 5, 5, 3, '2022-02-13 09:37:29', '2022-02-13 09:37:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20210813074431-create-users.js'),
('20220212192948-create-banner.js'),
('20220212192958-create-news.js'),
('20220212193007-create-reviews.js'),
('20220212193013-create-anime.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_login` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `is_login`, `createdAt`, `updatedAt`) VALUES
(1, 'Bilkis Ismail', 'bilkisismail07@Gmail.com', '$2a$10$hrKS9X.Alz3s7yF83GiJH.g1ItW7ahKoNz.uEB6FQ0Gq5cpWkkt9O', 1, '2022-02-13 09:52:07', '2022-02-15 01:32:49'),
(2, 'Kubil Ismaiel', 'bilkisismail@Gmail.com', '$2a$10$SEFqSP4uMoY3ptKGmWaIxe6ao2k5keSUCjPAJYN1xxrjPawSgUMxm', 0, '2022-02-13 09:54:38', '2022-02-13 09:54:38'),
(3, 'Isma Isma', 'bilkisismail2@Gmail.com', '$2a$10$SEFqSP4uMoY3ptKGmWaIxe6ao2k5keSUCjPAJYN1xxrjPawSgUMxm', 0, '2022-02-13 09:54:53', '2022-02-13 09:54:53'),
(4, 'Kubil Kubil', 'bilkisismail5@Gmail.com', '$2a$10$SEFqSP4uMoY3ptKGmWaIxe6ao2k5keSUCjPAJYN1xxrjPawSgUMxm', 0, '2022-02-13 09:55:04', '2022-02-13 09:55:04'),
(5, 'Ismaiel Kubil', 'bilkisismail12@Gmail.com', '$2a$10$cl42NlHkP8Eh9MmgsdVZXeEHZhTO.rF0e/Ux.rMSdy8BGXaTuX0DS', 0, '2022-02-13 09:56:13', '2022-02-13 09:56:13'),
(6, 'Bilkis Ismail', 'bilkisismail027@gmail.com', '$2a$10$J8GMZia6xaCh/u883RJMr.6iDH1KIrP/PetdqINy9v6CY.xgolAtu', 0, '2022-02-13 13:19:57', '2022-02-13 13:19:57'),
(7, 'Bilkis Ismail', 'bilkisismail0227@gmail.com', '$2a$10$J8GMZia6xaCh/u883RJMr.6iDH1KIrP/PetdqINy9v6CY.xgolAtu', 1, '2022-02-13 13:23:03', '2022-02-13 13:23:03'),
(8, 'ismanyan', 'ismanyan08@gmail.com', '$2a$10$T.ZUGV1RmBBmt1ZmbghZ7ebinSNrziOgpC82foDdHGwvH/kEUCaVq', 1, '2022-02-13 19:26:52', '2022-02-13 19:26:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
