function switch_plot(array)
% myplugin是一个MATLAB插件，用于显示二维数组表格的行，并在图形界面中添加切换上一个和下一个图像的按钮

% 创建一个图形界面
fig = figure;

% 创建一个轴用于绘制图像
ax = axes(fig);

% 创建一个导航工具栏
nav_toolbar = uitoolbar(fig);

% 向导航工具栏添加按钮
previous_button = uipushtool(nav_toolbar, 'TooltipString', 'Previous', 'CData', rand(16, 16, 3), 'ClickedCallback', @previous_image);
next_button = uipushtool(nav_toolbar, 'TooltipString', 'Next', 'CData', rand(16, 16, 3), 'ClickedCallback', @next_image);

% 设置当前图像为数组的第一行
current_image = 1;

% 绘制当前图像
plot_image();

% 定义切换到上一个图像的函数
function previous_image(~, ~)
    current_image = current_image - 1;
    if current_image < 1
        current_image = size(array, 1);
    end
    plot_image();
end

% 定义切换到下一个图像的函数
function next_image(~, ~)
    current_image = current_image + 1;
    if current_image > size(array, 1)
        current_image = 1;
    end
    plot_image();
end

% 定义绘制当前图像的函数
function plot_image()
    plot(ax, array(current_image, :));
    title(ax, sprintf('Image %d', current_image));
end
end