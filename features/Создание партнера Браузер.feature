#language: ru
@tree
Функционал: Создание партнера

Как Менеджер по закупкам
Я хочу вводить нового партнера

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание нового партнера
	@YandexTTS: filipp,good
	И видеовставка  "Создание нового партнера"
	#[autodoc.ignorestep]
	И Я активизирую текущее окно браузера
	Создадим нового партнера
		И Я запоминаю значение выражения 'Тестовый поставщик' в переменную "НаименованиеПартнера"
		Дано в базе нет элементов справочника "Партнеры" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		Дано в базе нет элементов справочника "Контрагенты" с указанными в таблице наименованиями:
			| $НаименованиеПартнера$ |
		И В командном интерфейсе я выбираю 'Закупки' 'Поставщики'
		Тогда открылось окно 'Партнеры (Поставщики)'
		И я показываю подсказку "Создание партнера" EnjoyHint у элемента "ФормаСоздать"
			|'selector'|'button'|
			|'showSkip'|'false'|
			|'shape'|'circle'|
			|'timeout'|'4000'|
		И в таблице "Список" я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Помощник регистрации нового партнера'
	#[autodoc.ignorestep]
	И я фиксирую группу с именем "ГруппаДанныеПартнераКомпания"
	Заполним основные реквизиты
		И я рисую рамку вокруг нескольких элементов в браузере
			|'elem'|'ПубличноеНаименование'|
			|'elem'|'АдресЭППартнера'|
			|'color'|'red'|
			|'size'|'3'|
			|'timeout'|'4000'|
	Укажем наименование
		И в поле с именем 'ПубличноеНаименование' я ввожу текст '$НаименованиеПартнера$'
	Ем^эейл
		И в поле с именем 'АдресЭППартнера' я ввожу текст 'Тестовыйпоставщик@mail.ru'
	#[autodoc.ignorestep]
	И я фиксирую группу с именем "ГруппаКнопкиДалее"
	Нажимаем Далее
		И я рисую рамку вокруг элемента "Далее" в браузере
			|'color'  |'green'                |
			|'size'   |'3'                    |
			|'timeout'|'2000'                 |	
		И я нажимаю на кнопку с именем 'Далее'
	#[autodoc.ignorestep]
	И я фиксирую группу с именем "СтраницаДополнительныеСведенияКомпания"
	Введем рабочее наименование
		И в поле с именем 'РабочееНаименованиеКомпания' я ввожу текст '$НаименованиеПартнера$'
	#[autodoc.ignorestep]
	И я рисую стрелку от "РабочееНаименованиеКомпания" к "ГруппаДоступа" в браузере
		|'color'|'red'|
		|'size'|'3'|
		|'startSocket'|'left'|
		|'endSocket'|'left'|
		|'startSocketGravity'|' -50, 70'|
		|'endSocketGravity'|' 0, 80'|
		|'dropShadow'|'true'|
		|'middleLabel'|'Группа доступа'|
		|'timeout'|'5000'|
	Укажем группу доступа
		И из выпадающего списка с именем "ГруппаДоступа" я выбираю по строке 'Поставщики'
	#[autodoc.ignorestep]
	И я фиксирую группу с именем "ГруппаКнопкиНазадДалее"
	Нажимаем Далее
		И я рисую рамку вокруг элемента "Далее3" в браузере
			|'color'  |'green'                |
			|'size'   |'3'                    |
			|'timeout'|'3000'                 |	
		И я нажимаю на кнопку с именем 'Далее3'
	Экспед^итора ук^азывать не будем
		И я рисую рамку вокруг элемента "Далее3" в браузере
			|'color'  |'green'                |
			|'size'   |'3'                    |
			|'timeout'|'3000'                 |	
		И я нажимаю на кнопку с именем 'Далее3'
	#[autodoc.ignorestep]
	И я фиксирую группу с именем "ГруппаКнопкиСоздать"
	Нажимаем Создать
		И я нажимаю на кнопку 'Создать'
	#[autodoc.ignorestep]
	И я активизирую окно "$НаименованиеПартнера$ (Партнер)"
	Запишем партнера
		Тогда открылось окно '$НаименованиеПартнера$ (Партнер)'
		И я показываю подсказку "Запишем партнера" EnjoyHint у элемента "ФормаЗаписать"
			|'selector'|'button'|
			|'showSkip'|'false'|
			|'shape'|'rect'|
			|'timeout'|'2000'|
		И я нажимаю на кнопку 'Записать'		
	Создадим контраг^ента для партнера
		И В текущем окне я нажимаю кнопку командного интерфейса 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагент (создание)'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '$НаименованиеПартнера$ (Контрагент (юридическое или физическое лицо)' в течение 20 секунд