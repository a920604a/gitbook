# Introduction

###### tags: `python`


## Keywords

| False    | class    | from     |  or     | 
| -------- | -------- | -------- |-------- |
| None     | continue | global   |  pass   |
| True     | def      | if       |  raise  |
| and      | del      | import   |  return |
| as       | elif     | in       |  try    |
| assert   | else     | is       |  while  |
| async    | except   | lambda   |  with   |
| await    | finally  | nonlocal |  yield  |
| break    | for      | not      |         |

## 簡介模組
```shell=
python hello.py World
```
```python
# hello.py
import sys
print('Hello!' + sys.argv[1] + '!')
# Hello! World
```
- import語句匯入模組實際上就是載入另一個.py檔案並執行其內容
- 在import 模組時，實際上會載入 [模組].py，之後將其編譯為位元碼形式，若有儲存檔案的權限，則通常會將位元碼儲存為.pyc檔案，位元碼是個與平台相依的指令格式，如果下次再匯入模組時，原始碼並沒有更動且.pyc存在，就會直接載入.pyc，減少了直譯的時間，從而加快了執行的速度
- 模組其實也是個名稱空間，模組名稱就是檔案名稱
- 模組中宣告的變數或函式都是模組中的屬性，若要存取模組中的變數或函式等名稱，必須前置模組名稱，例如some.title這樣的名稱
- 使用dir()函式，模組中的屬性名稱
```python
dir(some)
['__builtins__', '__doc__', '__file__', '__name__', '__package__', 'name']
```
```python
from some import x, y
from some import *  # 不建議
```

- import 語句或from import語句只會在第一次匯入模組時執行模組中的程式碼
- 直接載入某個.py檔案來執行，則可以使用open()開啟.py檔案，之後read()讀取檔案，再使用exec()來執行。 `exec(open('some.py').read())`
- `__name__`屬性，如果你使用python指令直接執行某個.py檔案，則`__name__`屬性會被設定為`__main__`名稱
```python
sys.path
['', 'C:\Windows\system32\python31.zip', 'c:\winwar
e\python31\DLLs', 'c:\winware\python31\lib', 'c:\winware\python31\lib\p
lat-win', 'c:\winware\python31', 'c:\winware\python31\lib\site-packages']
```