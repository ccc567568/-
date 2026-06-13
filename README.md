# 青岛大学硕士博士毕业论文模板

# 鸣谢
十分感谢这两位校友之前的工作，我能更方便地使用latex写完毕业论文离不开这两位之前的工作：https://github.com/9527567/QDULaTeXthesis, https://github.com/paralevi/QDUthesis, 对此深表感谢。
# 注意
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

```LaTex
\vfill
    \centerline {
        \begin{tabular}{ b{3cm} >{\arraybackslash}b{7cm}}
            \songti \zihao{4} {作者姓名\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\name} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {指导教师\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\supervisor} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} \ziju{2} {学科\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\major} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            % 如果谁想加合作导师,在这个位置加, and 去main.tex修改即可.
            \songti \zihao{4} {研究方向\char"FF1A} & \makecell[c]{\songti \zihao{4} \coverresearchdirection} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {培养单位\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\school} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {答辩日期\char"FF1A} & \makecell[c]{\songti \zihao{4} \coverdate} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
        \end{tabular}
    }
```


今年学校加了和合作导师相关的内容如果修改，进入cls文件，找到这个位置，进行修改，然后改动main文件即可。
main.pdf为预览，各位可以进行参考，如果和你们学院要求的类似可以直接直接使用（自动化学院的同学可以大胆使用，没有问题的，其他学院可以先进行阅读和审阅）
