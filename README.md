# Shell
Shell скрипты для облегчения работы
Рекомендую сохранять их в корневой директории,
чтобы быстро указывать путь к скрипту и
запускть его с помощью `~/git.sh ...`

git:
	git (add + commit + push)
	Параметры:
		$1 - отправляемые файлы. Если все, то --all
		$2 - commit message, обособляется "
	Пример: `~/git.sh sort.c "added sort.c"`
