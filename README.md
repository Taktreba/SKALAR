Добрый день!<br>
Мое тестовое задание в компанию SKALAR

Инструкция по установке:<br>
1. Скачать репозиторый на локальный сервер<br>
2. В корне находиться файл comment.sql который необходимо импортировать в БД. При необходимости изменить настройки БД в файле controller.php в строке 26<br>
3. В файле controller.php в строке 36, в переменной $to изменить адрес почты админа для получения писем<br>

Описание проделанной работы<br>
Код написал процедурным стилем<br>
при запуске программы открывается index.php с формой отправки комментария и возможностью прикрепления файла,
Реализована несложная валидация на js (проверка на пустые значения полей формы).
При отправке controller.php использует функцию clear() которая убирает теги и пробелы для полученных из формы данных.<br>
При успешной записи в БД, попадаем на страницу listComment. Тут реализована таблица с выборкой из БД. Сама таблица использует плагин jq - tablesorter,
 которая позволяет использовать настраиваемую пагинацию, и сортировку полей Date, Name, Email. По умолчанию таблица отсортирована по полу Email в алфавитном порядке.<br>
 Изображения храниться в папке img с именами времени для уникальности.<br>
 В самой таблице картинки кликабельны и разворачиються в полный размер в модально м окне. Для повторной отправки комента, переходит на index по ссылке Send comment

