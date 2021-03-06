#language: ru
@tree
Функционал: Создание партнера

Как Менеджер по закупкам
Я хочу вводить нового партнера

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание нового партнера
	Тогда создаем партнера
		И Я запоминаю значение выражения 'Тестовый поставщик' в переменную "НаименованиеПартнера"
		Дано в базе нет элементов справочника "Партнеры" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		Дано в базе нет элементов справочника "Контрагенты" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		И В командном интерфейсе я выбираю 'Закупки' 'Поставщики'
		Тогда открылось окно 'Партнеры (Поставщики)'
		И в таблице "Список" я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Помощник регистрации нового партнера'
		И в поле 'Публичное наименование' я ввожу текст '$НаименованиеПартнера$'
		И в поле с именем 'АдресЭППартнера' я ввожу текст 'Тестовыйпоставщик@mail.ru'
		И я нажимаю на кнопку с именем 'Далее'
		И в поле с именем 'РабочееНаименованиеКомпания' я ввожу текст '$НаименованиеПартнера$'
		И из выпадающего списка с именем "ГруппаДоступа" я выбираю точное значение 'Поставщики'
		И я нажимаю на кнопку с именем 'Далее3'
		И я нажимаю на кнопку с именем 'Далее3'
		И я нажимаю на кнопку 'Создать'
		Тогда открылось окно '$НаименованиеПартнера$ (Партнер)'
		И я нажимаю на кнопку 'Записать'
	И создаем контрагента
		Когда открылось окно '$НаименованиеПартнера$ (Партнер)'
		И В текущем окне я нажимаю кнопку командного интерфейса 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагент (создание)'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно '$НаименованиеПартнера$ (Контрагент (юридическое или физическое лицо)'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '$НаименованиеПартнера$ (Контрагент (юридическое или физическое лицо)' в течение 20 секунд
