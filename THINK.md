#1.0
HelloWorld的结果是：

php 1900 request/s

nodejs 3100 request/s

go 5000 request/s

nodejs是在单线程环境下测试的，pm2的多进程下会掉落到1500 request/s

go语言的特点是快，可靠性好，缺点是包管理不好，语法不好，处理不好还有并发问题。

nodejs语言的特点是中等快，简单，包管理好，缺点是不成熟，库中等

php语言的特点是慢，炒鸡快，包管理好，成熟，很多很多库。缺点是慢，语法比较随意。
