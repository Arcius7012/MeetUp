#language: ru
@tree
Функционал: Создание партнера

Как Менеджер по закупкам
Я хочу вводить нового партнера

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание нового партнера
	#@AmazonTTS: voice = maxim; lang = en-US
	@YandexTTS: voice = filipp; emotion = good
	И видеовставка  "Создание нового партнера"
	Создадим нового партнера
		И Я запоминаю значение выражения 'Тестовый поставщик' в переменную "НаименованиеПартнера"
		Дано в базе нет элементов справочника "Партнеры" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		Дано в базе нет элементов справочника "Контрагенты" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		И В командном интерфейсе я выбираю 'Закупки' 'Поставщики'
		Тогда открылось окно 'Партнеры (Поставщики)'
		И в таблице "Список" я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Помощник регистрации нового партнера'
	Укажем наименование
		И в поле 'Публичное наименование' я ввожу текст '$НаименованиеПартнера$'
	Ем^эейл
		И в поле с именем 'АдресЭППартнера' я ввожу текст 'Тестовыйпоставщик@mail.ru'
	Нажимаем Далее
			И я рисую рамку вокруг картинки "Далее"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Толщина'  	 | '3'           	|
		И я нажимаю на кнопку с именем 'Далее'
	Введем рабочее наименование
		И в поле с именем 'РабочееНаименованиеКомпания' я ввожу текст '$НаименованиеПартнера$'
	Укажем группу доступа 
		И из выпадающего списка с именем "ГруппаДоступа" я выбираю по строке 'Поставщики'
		И я рисую рамку вокруг картинки "Далее"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '4000'           |
			|'Толщина'  	 | '3'           	|
		И я нажимаю на кнопку с именем 'Далее3'
	Экспед^итора ук^азывать не будем
		И я рисую рамку вокруг картинки "Далее"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '4000'           |
			|'Толщина'  	 | '3'           	|
		И я нажимаю на кнопку с именем 'Далее3'
	Нажимаем Создать
		Затем клик на картинку "Создать"
		Тогда открылось окно '$НаименованиеПартнера$ (Партнер)'
	Запишем партнера
		И я нажимаю на кнопку 'Записать'
	Создадим контраг^ента для партнера
		Когда открылось окно '$НаименованиеПартнера$ (Партнер)'
		Затем я рисую стрелку от "Записать" до "Контрагенты"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '4000'           |
			|'ТочкаКуда'     | 'СерединаНиз'    |
			|'Толщина'  	 | '5'           	|
		И В текущем окне я нажимаю кнопку командного интерфейса 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагент (создание)'
		Затем клик на картинку "Записать и закрыть"
		И я жду закрытия окна '$НаименованиеПартнера$ (Контрагент (юридическое или физическое лицо)' в течение 20 секунд
