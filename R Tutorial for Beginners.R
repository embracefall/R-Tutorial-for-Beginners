##########################################
# R语言入门与回归分析基础                 
# 严海兵 华东政法大学政治学与公共管理学院 
##########################################


### 内容提要
### 1.下载安装
### 2.命令、对象和函数
### 3.数据类型与数据结构
### 4.读入、查看和保存数据
### 5.数据处理
### 6.数据可视化
### 7.回归分析


### 1.下载安装
## 下载R软件:
# 官方网站the Comprehensive R Archive Network (CRAN): https://cran.r-project.org
# Windows用户点击 "Download R for Windows", 然后点击"base", 然后再点击"Download R x.x.x for Windows" 
# Mac用户点击"Download R for (Mac) OS X", 然后点击"R-x.x.x.pkg"

# 注意：如果下载速度比较慢，你可以从本地镜像中下载
# 方法：点击CRAN网站首页左上角的 "Mirrors", 然后找到中国选择一个镜像下载。

## 安装R:
# 对于windows用户, 双击“R-x.x.x-win.exe”, 然后按照下列步骤安装: 
# 选择语言（建议选英语）--> click OK --> click Next --> click Next 
# --> Select destination Location (change “C:\Program Files\R\R-x.x.x” into “C:\Program Files\R\”) and click Next 
# --> select Core Files, 64-bit Files(如果电脑是32位系统则选32-bit Files), and Message translation, then click Next
# --> select “No” and click Next --> select start menu folder and click Next 
# --> select additional tasks and click Next --> click Finish

# 对于Mac用户, 双击 “R-x.x.x.pkg”, 然后按照下列步骤安装: 
# click Continue --> click Continue --> click Continue --> click Continue 
# --> click Agree --> click Install --> click Close to finish the installation

# 熟悉R:
# 打开刚才安装的R软件
# 输入代码 print("Hello World") 或"Hello World"
# 要重复相同的代码，不必重新输入，只需要按光标上键，然后回车

## 安装RStudio:
# 从以下官网下载RStudio: https://www.rstudio.com, 然后安装
# 设置本地镜像：点击Tools --> Global Options --> Packages --> Change --> 选择一个中国镜像
# 更改界面显示：点击Tools --> Global Options --> Appearance
# 更改窗口排列：点击Tools --> Global Options --> Pane Layout
  

### 2. 命令、对象和函数
## 基础命令
# 作为R命令的数学运算
3 + 3
3 * 3
3 ^ 3

# 运算符号:
# 加号(+);
# 减号(-);
# 乘号(*);
# 除号(/);
# 乘方(^)

# 运算顺序:
# 首先算括号, 其次算乘方,然后算乘除，最后算加减
6 + 15 * 22
(6 + 15) * 22
22 ^ 2 + 7
22 ^ (2 + 7)

# 科学计数法: 1.207269e + 12 = 1.207269 × 10^12 = 1, 207, 269, 000, 000 


## 对象(Objects)
# 对象是用来存储数据的名称(又称变量)
# 例如，把3+3的结果保存为x，x就是一个对象
x <- 3 + 3
# 输入x就会返回这个对象的结果
x

# 注意:
# (1) <- 又叫赋值运算符，等号(=)也可以用来赋值，但不提倡，因为容易造成混淆
# (2) Rstudio中输入<-的快捷方式：mac为同时按option和减号，win为同时按alt和减号
# (3) 在R中对象名称的字母是区分大小写的，比如大写X和小写x表示的是不同的对象
# (4) 当用同样的名称保存另外一个对象时，之前保存的对象就会被替换
x <- 3 + 2
x 

x2 <- (5 + 1) ^ 2
x2

x + x2
x2 / x

# 保存两个对象运算的结果:
x3 <- x2 / x
x3

# 练习1
# (1)	把数字7保存为对象z1;
# (2)	把10+5保存为对象z2;
# (3)	把z1乘z2保存为对象z3;
# (4)	对z3减1进行平方。


# 保存并直接输出结果
n1 <- 2 * 6; n1
(n2 <- 24 / 3)

# 注意：R对象的名称可以由字母 (a-z, A-Z)、数字 (0-9)、点 (.)和下划线 (_)组成。
# 第一个元素必须是字母或点 
# 三种通常的命名方式:
# (1)	total_income
# (2)	total.income
# (3)	totalIncome


## 函数(Functions)
# R拥有大量内置的函数，函数由函数名、圆括号和参数(argument)组成。
log(27)   # 27的自然对数
sqrt(225) # 225的平方根
abs(-9)   # -9的绝对值

# 函数和对象可以同时使用:
y1 <- 20 + 5
sqrt(y1 + 200)

# 用函数建立一个新的对象:
y2 <- sqrt(y1 + 1200)
y2
# 用打印函数输出结果
print(y2)   

# 包含参数的函数:
round(x = 14.5378, digits = 2)
round(14.5378, 1)  # 简化书写

# 参数的默认值:
round(14.5378)

# 函数的嵌套运用
round(sqrt(20), 2)

# function()也是一个函数
new_func <- function(x){
  (x + 5) * 6
}
new_func(2)
# 创建一个n以内数字连续相加的函数
sum_func <- function(n){
  x <- 0
  for(i in 1:n)
    x = x + i
    print(x)
}
sum_func(100)


# 练习2
# 使用我们前面练习中存储的对象z1, z2和z3做下面的练习:
# (1)	用函数log10()来计算以10为底的z1的对数;
# (2)	用函数sqrt()来计算z2的平方根;
# (3)	用函数sum()来计算z1，z2与z3的和(提示：在括号中用逗号把三个对象隔开);
# (4) 把66.83596存储为对象z4，然后用函数round()保留小数点后三位数。


## 正态分布函数
# 随机生成30个正态分布的数字
rnorm(30) 
# 设定种子使结果可复现
set.seed(321)
my_norm <- rnorm(30); my_norm
# 用hist()函数绘制直方图
hist(my_norm)

# 查看函数的参数(arguments)
help(rnorm) 
# 或者用问号
?rnorm
my_data <- rnorm(100, mean = 5, sd = 3); my_data
hist(my_data)

# 设置绘图函数的参数
?hist
hist(my_data,                                   # 设置数据
     col = "lightblue",                         # 填充条的颜色
     border = "black",                          # 设置条边框的颜色
     main = "Histogram of 100 Random Numbers",  # 设置主标题
     xlab = "Random Numbers")                   # 设置横坐标的名称


# 练习3
# 使用runif()函数生成100个均匀分布的数字并保存为vec_unif
# 然后用vec_unif绘制一个直方图，并添加颜色


### 3. 数据类型与数据结构
# 查看数据类型
class(my_data)
# 向量(vector)：相同数据类型构成的一维数据结构
is.vector(my_data)

# 创建三个不同类型的向量
# 字符型向量
name <- c("Zhao", "Qian", "Sun", "Li")
class(name)
# 数值型向量
score <- c(517, 413, 306, 489)
class(score)
typeof(score)
# 逻辑型向量
pass <- c(TRUE, FALSE, FALSE, TRUE)
class(pass)

# 利用向量创建一个数据框(data frame)
# 数据框：由行和列组成的二维数据结构，每列的数据类型必须相同
student <- data.frame(name, score, pass); student
# 查看数据结构
str(student)
# Factor(因子)是一种特殊的向量，用来存储类别变量
# data.frame()函数创建数据框时自动把字符型向量转变成因子
# 可以通过设置参数阻止转换
student <- data.frame(name, score, pass, stringsAsFactors = FALSE)
str(student)

# 美元符号$: 选取某个变量
student$name
student$score


### 4. 读入、查看和保存数据
# R包是拓展R功能的软件(代码库)，可以通过install.packages()函数从官网CRAN下载各种包
# R和R包的关系类似手机和手机APP的关系
# 下载gapminder数据包
# install.packages("gapminder")
# 加载/调用R包
library(gapminder)
# 或者
require(gapminder)


## 查看gapminder数据信息
str(gapminder)                                # 查看数据结构
names(gapminder)                              # 查看变量名称
head(gapminder)                               # 查看前6行数据
tail(gapminder)                               # 查看最后6行数据
head(gapminder, 3)                            # 查看前3行数据
?gapminder                                    # 查看说明文档


## 查看基本的统计信息
summary(gapminder)                            # 查看所有变量的基本统计信息
summary(gapminder$lifeExp)                    # 查看某个变量的基本统计信息
mean(gapminder$gdpPercap, na.rm = TRUE)       # 计算某个变量的均值

table(gapminder$continent)                    # 计算类别变量的频数
table(gapminder$year)                         # 计算年份的频数
prop.table(table(gapminder$continent))        # 计算各类别频数的占比

quantile(gapminder$lifeExp)                   # 计算变量的分位数(0%,25%,50%,75%和100%)
quantile(gapminder$lifeExp, 0.85)             # 计算变量的85%分位数
quantile(gapminder$lifeExp, seq(0.1, 1, 0.1)) # 计算间隔为10%的分位数


## 读入外部数据
# readr: 读取csv和fwf文档
# readxl：读取xls和xlsx文档
# haven：读取SAS、SPSS和Stata文档
# install.packages(c("readr","readxl"))
library(readr)
library(readxl)

# 将gapminder保存为csv文档
write_csv(gapminder, "gapminder.csv")
# 读入csv文档
read_csv("gapminder.csv")
# 将csv另存为excel格式
# 读入excel文档
read_excel("gapminder.xlsx")


### 5. 数据处理
## tidyverse
# tidyverse既是一种R编程风格, 也是一组R包的集合
# 作为R包集合, tidyverse包含的核心包如下:
# ggplot2 - 数据可视化
# dplyr - 数据转换
# tidyr - 数据整洁(清洗)
# readr - 读入矩形数据(csv,tsv和fwf格式的数据)
# purrr - 函数编程
# tibble - 新型数据框
# stringr - 字符数据处理
# forcats - 因子数据处理

# 整体安装和加载tidyverse系列包
# install.packages("tidyverse")
library(tidyverse)

## tibble
# 不把字符自动转成因子
tibble(name = c("Zhao", "Qian", "Sun", "Li"),
       score = c(517, 413, 306, 489), 
       pass = c(TRUE, FALSE, FALSE, TRUE))

## dplyr
# dplyr是tidyverse系列包的核心组成部分，主要用于数据转换(管理)
# dplyr包的核心函数:
# select(), rename(), filter(), arrange(), mutate(), summarize()以及%>%
# 也可以单独加载dplyr包
# install.packages("dplyr")
# library(dplyr)

## select(): 选取特定变量的数据
select(gapminder, country, year, lifeExp)  # 选取country, year和lifeExp
select(gapminder, country:lifeExp)         # 选取从country到lifeExp的所有变量
select(gapminder, -(lifeExp:gdpPercap))    # 选取从lifeExp到gdpPercap之外的所有变量
select(gapminder, 1, 3, 4)                 # 选取第1、3、4行的变量
select(gapminder, -c(2, 4))                # 选取第2、4行以外的变量
select(gapminder, starts_with("c"))        # 选取以"c"开头的变量
select(gapminder, ends_with("p"))          # 选取以"p"结尾的变量
select(gapminder, contains("o"))           # 选取包含"o"的变量

## rename(): 重新命名变量
rename(gapminder, life_expectancy = lifeExp, population = pop)
# 注意: select() 也可以对变量重新命名，但是会抛弃未重新命名的其他变量
select(gapminder, life_expectancy = lifeExp, population = pop)

## filter(): 根据逻辑条件选取特定行的数据
# 常见的逻辑运算符号及其含义
############################
#   符号   #     含义       
#    <     #     小于       
#   <=     #  小于或等于    
#    >     #     大于       
#   >=     #  大于或等于    
#   ==     #     等于       
#   !=     #   不等于       
#   !x     #     非x        
#  x | y   #    x或y        
#  x & y   #    x且y        
# x %in% y # 检验x是否包含y 
#############################
filter(gapminder, country == "China")
filter(gapminder, continent == "Asia", year == 2007)
filter(gapminder, lifeExp < 30)
filter(gapminder, country %in% c("China", "Japan", "United States"))

## arrange(): 根据变量(或列)对行进行重新排序
arrange(gapminder, pop)
arrange(gapminder, desc(pop))
# 先按gdpPercap再按pop排序
arrange(gapminder, gdpPercap, pop) 
# 注意: 如果有缺失值(NA), 缺失值总是排在最后

## mutate(): 基于现有变量创建新的变量
mutate(gapminder,  gdp = gdpPercap*pop)
# 注意: transmute()函数也可以创建新的变量, 但是会抛弃其他变量
transmute(gapminder, gdp = gdpPercap*pop)
# mutate()与case_when()联合使用, 可以对变量进行重新编码
gapminder2007 <- filter(gapminder, year == 2007)
summary(gapminder2007$gdpPercap)
gapminder2007 <- mutate(
  gapminder2007, 
  gdpPercap_class = case_when(
    gdpPercap >= 18008.8 ~ "High Income",
    gdpPercap < 1624.8 ~ "Low Income",
    gdpPercap >= 1624.8 & gdpPercap < 18008.8 ~ "Middle Income"
    )
  )

## summarize()/summarise(): 用于计算变量的描述统计值
summarize(gapminder, mean(gdpPercap))
summarize(gapminder, 
          lifeExp_avg = mean(lifeExp),
          pop_avg = mean(pop),
          gdpPercap_avg = mean(gdpPercap))
# summarize()通常结合group_by()一起使用
# 按照年份分组
gapminder_year <- group_by(gapminder, year)
summarize(gapminder_year, 
          lifeExp_avg = mean(lifeExp),
          lifeExp_med = median(lifeExp))
# 按照各洲分组
gapminder_continent <- group_by(gapminder, continent)
summarize(gapminder_continent, 
          count = n(), 
          lifeExp_min = min(lifeExp),
          lifeExp_max = max(lifeExp),
          lifeExp_avg = mean(lifeExp))

## %>%: 管道操作符
gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>%
  summarize(count = n(), 
            lifeExp_min = min(lifeExp),
            lifeExp_max = max(lifeExp),
            lifeExp_avg = mean(lifeExp))
# 注: 如果%>%不起作用, 可以安装并加载magrittr

## 快捷键
# Rstudio shortcut for %>%
# mac: shift + command + M
# win: shift + control + M


### 6. 数据可视化
library(ggplot2)

## ggplot2语法的关键构件:
# 1. 用于绘图的DATA(数据层)
# 2. 数据映射AESTHETIC(美学层)
# 3. 图形对象GEOMETRIC(图形层)

## 绘图模版
# ggplot(data = DATA, mapping = aes(MAPPINGS)) + GEOM_FUCTION()
# 或者
# ggplot(data = DATA) + GEOM_FUCTION(mapping = aes(MAPPINGS))
# 或者
# p <- ggplot(data = DATA, mapping = aes(MAPPINGS))
# p + GEOM_FUCTION()

## 1.直方图
ggplot(data = gapminder2007, mapping = aes(x = lifeExp))
# 添加图形
ggplot(gapminder2007, aes(lifeExp)) + geom_histogram()  

# 调整条的宽度
ggplot(gapminder2007, aes(lifeExp)) + geom_histogram(bins = 20)   # 调整数量
ggplot(gapminder, aes(lifeExp)) + geom_histogram(binwidth = 6)    # 调整宽度

# 设置条及其边框的颜色
ggplot(gapminder2007, aes(lifeExp)) + 
  geom_histogram(fill = "lightblue", color = "black") 

# 添加主标题/x轴标签/更换主题模版
ggplot(gapminder2007, aes(lifeExp)) + 
  geom_histogram(fill = "lightblue", color = "white") +
  ggtitle("Distribution of Life Expectancy, 2007") +
  xlab("Life Expectancy") +
  theme_minimal()


## 条形图
ggplot(gapminder2007, aes(continent)) + geom_bar()

ggplot(gapminder2007, aes(continent, fill = continent)) + 
  geom_bar(alpha = 0.5) +
  ggtitle("Number of Countries on Each Continent") + 
  xlab("") + guides(fill = FALSE) + 
  theme_minimal() +
  theme(panel.grid.major.x = element_blank())

gapminder2007 %>% 
  count(continent) %>% 
  mutate(continent = reorder(continent, n)) %>% 
  ggplot(aes(continent, n)) + 
  geom_col(fill = "skyblue3", alpha = 0.8) +
  labs(title = "Number of Countries on Each Continent",
       x = "", y = "Frequency") +
  theme_bw()


## 箱线图
ggplot(gapminder2007, aes(continent, lifeExp)) + geom_boxplot()

ggplot(gapminder2007, aes(reorder(continent, lifeExp, median), lifeExp, fill = continent)) +
  geom_boxplot(alpha = 0.6) +  
  labs(title = "Life Expectancy Comparison, 2007", 
       x ="", y = "Life Expectancy") + 
  guides(fill = FALSE) +
  theme_minimal()


## 折线图
gapminder %>% ggplot(aes(year, lifeExp, group = country)) + 
  geom_line()

gapminder %>% 
  filter(country %in% c("Rwanda", "Iraq")) %>% 
  ggplot(aes(year, lifeExp, group = country, color = country)) + 
  geom_line(size = 1.2) +
  labs(title = "Two Countries Comparison", 
       x = "", y= "Life Expectancy") +
  theme_minimal()


## 散点图
p <- ggplot(gapminder2007, aes(gdpPercap, lifeExp)) + geom_point(shape = 1); p 
p + geom_smooth()  # 添加loess曲线 (defalt: method = loess)

ggplot(gapminder2007, aes(log(gdpPercap), lifeExp)) + 
  geom_point(shape = 1) +
  geom_smooth(method = lm)  # 添加回归线

ggplot(gapminder2007, aes(log(gdpPercap), lifeExp, color = continent)) + 
  geom_point(size = 3.5, alpha = 0.5) +
  geom_smooth(method = lm, se = FALSE) +
  labs(x = "GDP per capita (log)", y = "Life Expectancy") +
  theme_minimal()

gapminder2007 %>% 
  filter(continent != "Oceania") %>% 
  ggplot(aes(log(gdpPercap), lifeExp)) + 
  geom_point(size = 3.5, alpha = 0.5) +
  geom_smooth(method = lm, se = FALSE) +
  labs(x = "GDP per capita (log)", y = "Life Expectancy") +
  theme_bw() +
  facet_wrap(~ continent) 

## 保存图形
# 安装和加载showtext包用于显示中文字体
# install.packages("showtext")  
library(showtext)   
showtext_auto(enable = TRUE)
# 保存最近绘制的一张图
ggsave("my_graph.pdf", width = 10, height = 8)  
ggsave("my_graph.png", width = 7, height = 4)
# 保存已存储在r上的图形
my_plot <- ggplot(gapminder2007, aes(lifeExp, fill = gdpPercap_class)) + 
  geom_density(alpha = 0.6) + theme_bw(); my_plot
ggsave("my_graph2.pdf", plot = my_plot, width = 10, height = 8)


## 练习4 
# 使用ggplot自带的数据集diamonds绘制上述几种图形(折线图除外)


### 7. 回归分析
## 简单回归
# 简单回归模型: Yi = β0 + β*Xi + εi
# i = 1,…,n
# Yi = 因变量的取值
# β0 = 截距(intercept)
# β = 斜率(slope)
# Xi = 自变量的取值
# εi = 随机方差或残差

# 自变量为数值变量(连续变量)
fit <- lm(lifeExp ~ gdpPercap, data = gapminder2007)
summary(fit)  
# 解读：
# Estimate: 自变量gdpPercap每增加1个单位，因变量lifeExp平均增加0.637岁
# p-value: 在0.05显著性水平下是显著的
# R-squared: 自变量能够解释的因变量变化的比例
fit <- lm(lifeExp ~ log(gdpPercap), data = gapminder2007)
summary(fit)  

# NOTE: 自变量和因变量不同情况下取对数的解释
# 因变量Y取对数，自变量X不取对数，参数β解释为：x变动1个单位，y平均变动100*β%
# 因变量Y不取对数，自变量X取对数，参数β解释为：x变动1%，y平均变动0.01*β个单位
# 因变量Y取对数，自变量X也取对数，参数β解释为：x变动1%，y平均变动β%

# R方：回归线 vs. 均值线
gapminder2007 %>%
  ggplot(aes(log(gdpPercap), lifeExp)) + 
  geom_point(size = 3, alpha = 0.5) + 
  geom_smooth(method = "lm", se = FALSE) + theme_bw() +
  geom_hline(yintercept = mean(gapminder2007$lifeExp), color = "red")

# 自变量为类别变量(连续变量)
# 设定类别变量因子水平的顺序
gapminder2007$gdpPercap_class <- factor(gapminder2007$gdpPercap_class, 
                                        levels = c("Low Income","Middle Income", "High Income"))
fit <- lm(lifeExp ~ gdpPercap_class, data = gapminder2007)
summary(fit)  
# 解读：以Low Income为基准，因变量的取值在自变量取类别Middle Income时，比取基准类别时平均高14.85岁 (取High Income时高25.885)
# 虚拟变量的原理
class_avg <- gapminder2007 %>%
  group_by(gdpPercap_class) %>%
  summarise(lifeExp_avg = mean(lifeExp))
gapminder2007 %>%
  ggplot(aes(gdpPercap_class, lifeExp)) + 
  geom_point(size = 2, alpha = 0.3) + xlab("") + theme_bw() +
  annotate("segment", color = "red", linetype = "dashed",
           x = c(0, 0, 0), xend = c(1, 2, 3), 
           y = class_avg$lifeExp_avg, yend = class_avg$lifeExp_avg) +
  annotate("text", x = c(0.15, 0.15, 0.15), y = class_avg$lifeExp_avg + 1, 
           label = round(class_avg$lifeExp_avg, 2)) +
  annotate("segment", color = "blue", x = c(1, 1), xend = c(2, 3), 
           y = class_avg$lifeExp_avg[c(1, 1)], yend = class_avg$lifeExp_avg[c(2, 3)])


## 多元回归
# 多元回归中自变量有多个
model1 <- lm(lifeExp ~ log(gdpPercap), data = gapminder2007); summary(model1)
model2 <- lm(lifeExp ~ log(gdpPercap) + log(pop), data = gapminder2007); summary(model2)
model3 <- lm(lifeExp ~ log(gdpPercap) + log(pop) + continent, data = gapminder2007); summary(model3)
# 对Estimate的解读增加“在控制其他自变量不变的条件下”，其他表述与简单回归类似

## 回归诊断
# 线性回归假设:
# (1) 自变量与因变量关系的线性假设
# (2) 自变量相互独立
# (3) 误差项不相关
# (4) 方差齐性，即不存在异方差现象(heteroskedasticity)
# NOTE: 解决异方差性的通常方法是对因变量取对数
par(mfrow = c(2, 2))
plot(model3, which = c(1:4)) 

## 使用表格形式报告结果
# install.packages("stargazer")
library(stargazer)
# 输出text格式
stargazer(model1, model2, model3, type = "text")
# 输出html格式并保存为lifeExp_model
stargazer(model1, model2, model3, type = "html", out = "lifeExp_model.htm") 
# NOTE: Microsoft Word可以读入 *.htm文档, 并进行编辑修改

## 使用图形报告结果
# install.packages(c("dotwhisker", "broom"))
library(dotwhisker)
library(broom)
# 绘制模型3的点须图
dwplot(model3)
# 绘制模型1-3的点须图
dwplot(list(model1, model2, model3))
# 模型3黑白版的点须图
dwplot(model3, whisker_args = list(lwd = 0.8, color = "black"), 
       dot_args = list(size = 3, pch = 21, fill = "black", color = "black")) %>%
  relabel_predictors(c("log(gdpPercap)" = "人均GDP(对数)",
                       "log(pop)" = "人口(对数)",
                       "continentAmericas" = "美洲(参照:非洲)",
                       "continentAsia" = "亚洲(参照:非洲)",
                       "continentEurope" = "欧洲(参照:非洲)",
                       "continentOceania" = "大洋洲(参照:非洲)")) +
  geom_vline(xintercept = 0, color = "grey60", linetype = 2) +
  xlab("系数估计") + theme_bw() + 
  theme(legend.position = "none",
        # 该参数用于苹果电脑绘图时显示中文
        text = element_text(family = "PingFang SC"))

