# Bash-тестирование на различных фреймворках

Данный репозиторий содержит коллекцию юнит-тестов для Bash-скриптов, реализованных с использованием различных фреймворков тестирования.

### [assert.sh](https://github.com/lehmannro/assert.sh)

Инструмент для написания несложных тестов. Для создания тестов необходимо создать файл `tests.sh` и написать в нём код, поддерживающий функцию `assert`.

```bash
# Вариант 1
wget https://raw.github.com/lehmannro/assert.sh/master/assert.sh

# Вариант 2
bpkg install lehmannro/assert.sh
```

### [shUnit2](https://github.com/kward/shunit2.git)

Современная среда тестирования. Все передаваемые строковые значения должны быть правильно заключены в кавычки — они должны быть окружены одинарными (') или двойными (") кавычками, чтобы оболочка могла их правильно интерпретировать.

```bash
# Вариант 1
git clone https://github.com/kward/shunit2.git

# Вариант 2
sudo apt -y install shunit2
```

### [Bats (Bash Automated Testing System)](https://github.com/sstephenson/bats)

Автоматизированная система тестирования для Bash. Наиболее полезна при тестировании программного обеспечения, написанного на Bash, но также подходит для тестирования любых UNIX-программ. Файл теста Bats — это сценарий Bash со специальным синтаксисом для определения тестовых сценариев. Для запуска тестов необходимо вызвать интерпретатор `bats` с указанием пути к тестовому файлу.

```bash
# Вариант 1
git clone https://github.com/sstephenson/bats.git
cd bats
sudo ./install.sh /usr/local

# Вариант 2
sudo apt-get install bats
```

### [Bats-assert](https://github.com/ztombol/bats-assert) и [Bats-support](https://github.com/ztombol/bats-support)

Bats-assert - Вспомогательная библиотека, предоставляющая общие утверждения (assertions) для Bats.

Bats-support - Вспомогательная библиотека, предоставляющая общие функции форматирования вывода для Bats.

```bash
# Вариант 1
git init
git submodule add https://github.com/bats-core/bats-core.git test/bats
git submodule add https://github.com/bats-core/bats-support.git test/libs/bats-support
git submodule add https://github.com/bats-core/bats-assert.git test/libs/bats-assert

# Вариант 2
git submodule init
git submodule add https://github.com/sstephenson/bats test/libs/bats
git submodule add https://github.com/ztombol/bats-assert test/libs/bats-assert
git submodule add https://github.com/ztombol/bats-support test/libs/bats-support
```

### [Bats-mock](https://github.com/grayhemp/bats-mock)

Вспомогательная библиотека Bats, обеспечивающая функциональность имитации (mocking) ситуаций.

```bash
git clone https://github.com/grayhemp/bats-mock.git
./build install
```

### [Bach](https://github.com/bach-sh/bach)

Фреймворк для тестирования Bash, который можно использовать для проверки скриптов, содержащих опасные команды. Все команды в тестовых сценариях Bach выполняются вхолостую. В отличие от других фреймворков, стандартный тестовый пример Bach состоит из двух функций Bash: одна для запуска тестов, другая для утверждения.  

```bash
git clone https://github.com/bach-sh/bach.git
```

## Примеры тестов
### Test 1 - Backup & Log 
|| Success | Failure |
|:------------------------:|:------------------------:|:------------------------:|
| assert.sh |<img width="1280" height="701" alt="1" src="https://github.com/user-attachments/assets/147589a2-51b5-4f01-a1ae-e74b93abd4e0" />|<img width="1279" height="642" alt="2" src="https://github.com/user-attachments/assets/a1fbf88d-b1bb-4a61-805b-bfd329e1958c" />|
| shUnit2 |<img width="1281" height="700" alt="3" src="https://github.com/user-attachments/assets/58a5622d-2de7-497b-b2d9-aef5049d7d1d" />|<img width="1278" height="663" alt="4" src="https://github.com/user-attachments/assets/2da06700-c183-408a-bd1a-be26a98fa13b" />|
| Bats |<img width="1281" height="700" alt="5" src="https://github.com/user-attachments/assets/d108fd6f-0934-48b3-be46-3be5348d8b19" />|<img width="1279" height="700" alt="6" src="https://github.com/user-attachments/assets/5fde1024-28dc-4111-8507-1ee18783a8ab" />|

### Test 2 - Http Request 

|| Success | Failure |
|:------------------------:|:------------------------:|:------------------------:|
| assert.sh |<img width="715" height="699" alt="7" src="https://github.com/user-attachments/assets/c2828f9e-4f73-40e9-ae1f-b68eda7758aa" />|<img width="715" height="701" alt="8" src="https://github.com/user-attachments/assets/fb28818f-f497-44dd-878c-a382bebb6003" />|
| shUnit2 |<img width="714" height="703" alt="9" src="https://github.com/user-attachments/assets/f00e7367-7181-4b73-b8e7-558cfdefbb7e" />|<img width="714" height="699" alt="10" src="https://github.com/user-attachments/assets/a82be454-a26f-481d-9b94-f42f70c1fdd0" />|
| Bats |<img width="1274" height="700" alt="11" src="https://github.com/user-attachments/assets/84662acc-eedb-4186-953c-3565159b6cc2" />|<img width="1279" height="700" alt="12" src="https://github.com/user-attachments/assets/885f89de-88b3-4998-9913-4696a0123bd1" />|
| Bats-assert <br><br> Bats-support|<img width="1280" height="699" alt="13" src="https://github.com/user-attachments/assets/3aeff488-73e1-47ca-aaee-366de9d42b17" />|<img width="1279" height="700" alt="14" src="https://github.com/user-attachments/assets/329b5bcd-39e9-453c-862a-097f4b29a6af" />|

### Test 3 - Http Request (Bats-mock)

|| Success | Failure |
|:------------------------:|:------------------------:|:------------------------:|
| Bats-mock |<img width="1282" height="630" alt="15" src="https://github.com/user-attachments/assets/c822f3fb-dacb-4e06-a81a-1e4d959dcad0" />|<img width="1282" height="629" alt="16" src="https://github.com/user-attachments/assets/3ddd1f2b-1f99-4f2d-99bb-ca4a58ca2789" />|

### Test 4 - RmTest (Bach)
<img width="550" alt="17" src="https://github.com/user-attachments/assets/4d31aea2-ce4a-478e-99e1-e8e5b0e71cf2" />

## Источники
1. assert.sh - https://github.com/lehmannro/assert.sh
2. shUnit2 - https://github.com/kward/shunit2.git
3. Bats - https://github.com/sstephenson/bats
4. Bats-assert - https://github.com/ztombol/bats-assert
5. Bats-support - https://github.com/ztombol/bats-support
6. Bats-mock - https://github.com/grayhemp/bats-mock
7. Bach - https://github.com/bach-sh/bach
