# 青岛大学硕士论文 LaTeX 模板

## 使用方法

1. 修改 `content/cover.tex` 中的封面信息。
2. 在 `content/chap*.tex` 中填写正文。
3. 在 `mainref.bib` 中维护参考文献。
4. 运行 `compile.bat`，或依次执行：

```bat
xelatex -interaction=nonstopmode main.tex
bibtex main
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

模板已保留封面右侧样式、双面打印奇数页起始、前置部分不显示页码等设置。

作者采用vscode中的latex workshop进行编译，经测试，texsudio也可以正常运行。切记，请使用xelatex编译main.tex，否则会出现报错。

文件中有一个vscode的setting文件，建议不要修改，编译格式为：XeLaTeX -> BibTeX -> XeLaTeX*2，基本上只需要选择xelatex即可。

