Скрипт для генерации документации по stead3 и метапарсеру в виде standalone html-файлов.

Для работы необходимы:

* make;
* wget;
* pandoc.

Можно получить сразу документацию и для stead3 и для метапарсера:

```bash
$ make
```

или в тёмной теме:

```bash
$ make dark
```

Только для stead3:

```bash
$ make stead3
```

В тёмной теме:

```bash
$ make stead3-dark
```

Только для модулей:

```bash
$ make modules
```

В тёмной теме:

```bash
$ make modules-dark
```

Или только для метапарсера:

```bash
$ make metaparser
```

В тёмной теме:

```bash
$ make metaparser-dark
```

Удалить сконвертированные файлы можно командой

```bash
$ make clean
```