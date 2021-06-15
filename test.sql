CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `time` varchar(255) COLLATE utf8_bin NOT NULL,
  `x` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `y` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `test_table` (`id`, `name`, `time`, `x`, `y`, `address`) VALUES
(1, 'Пожарно - спасательное формирование, ПЧ 71, 9 отряд Федеральной противопожарной службы', 'круглосуточно', '\"2428284,3717\"', '\"856232,6891\"', '\"город Урай, ул Нефтяников, дом 1А\"'),
(2, 'Зональный поисково - спасательный отряд, Кондинский район КУ Центроспас Югория\"\"\"\"', 'круглосуточно', '\"2427709,2421\"', '\"859385,1838\"', '\"город Урай, промзона, проезд 1 пождепо\"'),
(3, 'Аварийно - спасательное  формирование муниципального казенного учреждения «Единая дежурно - диспетчерская служба города Урай»', 'круглосуточно', '\"2428621,8973\"', '\"857920,7254\"', '\"город Урай, ул. Сибирская, дом 2А\"');

--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


