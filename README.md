# switch_plot
一个可以用于快速切换绘图的工具 
A tool for quickly switching between plots

本项目适用于希望绘制一个二维变量中，不同行的情况。如果你需要对不同的行进行处理比如标记或观察，那这个程序将十分适合你。
This script allows you to easily switch between different plotting styles to compare their effects. The main steps are to import the script, define your variable, call the function. Note the 2D variable needs to be plottable, like a numpy array.

用法：
将switch_plot脚本放在工作目录，然后确定要绘制的二维变量（比如该变量叫a），则运行一下命令：
"
switch_plot(a)
"
之后会出来第一行绘制的图形，然后点击左上角的按钮就可以切换不同行绘制的图片。

Usage:

Place the switch_plot script in your working directory. Then determine the 2D variable you want to plot (e.g. variable named a), and run the following command:

"switch_plot(a)"

The first plot with the first row will appear. Then click the button on the top left to switch between different plots from different rows.


