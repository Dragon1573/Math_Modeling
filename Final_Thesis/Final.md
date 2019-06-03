# 探究广深两市的综合发展动力

## 文件目录

- [`data`](data/)（数据源）
  - [`NEA`](data/NEA/)（国民经济核算）
    - [`20_Major_GDP.xls`](data/NEA/20_Major_GDP.xls)（20年主要城市国内生产总值）
    - [`20_Major_PIAV.xls`](data/NEA/20_Major_PIAV.xls)（20年主要城市第一产业增加值）
    - [`20_Major_SIAV.xls`](data/NEA/20_Major_SIAV.xls)（20年主要城市第二产业增加值）
    - [`20_Major_TIAV.xls`](data/NEA/20_Major_TIAV.xls)（20年主要城市第三产业增加值）
    - [`20_Guangzhou_All.xls`](data/NEA/20_Guangzhou_All.xls)（20年广州市全数据）
    - [`20_Shenzhen_All.xls`](data/NEA/20_Shenzhen_All.xls)（20年深圳市全数据）

## 研究问题

1. 广深两地与其他城市相比，具有哪些方面的优势？
2. 在以下6项指标中，哪些指标对广深国内生产总值影响深远？
   - 国民经济核算
   - 人口与就业
   - 房地产
   - 财政与金融
   - 贸易经济
   - 卫生教育
   - 开发区经济指标
3. 2020年～2025年，广深两地的7个指标又会有什么变化？

## 正文（部分）

### 广深优势从何而来？

&emsp;&emsp;广州市是一座拥有上千年历史的城市。早在秦朝，广州就已经以郡治、洲治、府治的形式成为华南地区政治中心、军事中心，通过宣传古老的广府文化不断地对外辐射，凭借千年以来商业重镇带来的经济实力，拉动周边地区协同发展。

&emsp;&emsp;140千米之外的深圳则与广州截然相反。在改革开放之前，深圳是一个贫穷落后的小渔村，政治地位低下、军事重要性微不足道、经济发展严重滞后。

&emsp;&emsp;“1979年，那是一个春天，有一位老人在中国的南海边画了一个圈……”那一年，深圳经济特区成立。从那时开始，深圳与广州一起进入了快速升级的发展进程。人口激增、行政区划不断扩张，生活水平不断提升，城市面貌焕然一新。

&emsp;&emsp;那么，今日的广深两市与国内其他主要城市（以省会、直辖市为主）有什么区别？哪些明显的差距成就了广州和深圳如此强劲有力的发展潜力？

&emsp;&emsp;为了研究真相，此次研究选取了以下7个领域，让我们逐一探索：

- 国民经济核算
- 人口与就业
- 房地产
- 财政与金融
- 贸易经济
- 卫生教育
- 开发区经济指标

#### 国民经济核算

&emsp;&emsp;以[20年主要城市国内生产总值](Final_Thesis\data\NEA\20_Guangzhou_All.xls)作为数据源，绘制折线图：

``` text
% 读取数据源（20年全国主要城市国内生产总值）
data = readtable("data\NEA\20_Major_GDP.xls", "Range", "A4:U40");
figure();
hold on

% 绘制折线
for i = 1 : height(data)
    plot( ...
        2018 : -1 : 1999, ...
        data{i, 2 : width(data)}, ...
        % 指定折线标签
        "DisplayName", ...
        data{i, 1}{:} ...
    );
end

% 添加坐标轴标签
xlabel("时间 / 年");
ylabel("国内生产总值 / 亿人民币");

% 显示图例
legend("show", "Location", "bestoutside");

% 显示图名
title("20年国内主要城市生产总值走势图", "FontSize", 20);

hold off
grid on
```

![20年全国主要城市国内生产总值趋势图](image/20_Major_GDP.svg)

&emsp;&emsp;从上图可以看出，广州和深圳的国内生产总值在近20年内稳居全国重点城市，仅次于上海和北京，“北上广深”之名当之无愧！

&emsp;&emsp;深圳市在城市初始规划时就确定以第三产业为主，征收了大量土地，农业用地面积急剧下降。依托香港特别行政区，脚踏实地发展文化创意产业、高新技术产业、现代物流业、金融业四大支柱产业，全神贯注做好战略新兴产业、目光长远兼顾未来产业。

``` text
figure();

% 数据变换
data = table2array(data(2 : height(data), 2 : width(data)))';

% 三大产业总生产值
total = sum(data, 2);

% 绘制比例堆叠图
bar((2018 : -1 : 1999)', data ./ total, "stacked");

% 添加坐标轴标签
xlabel("时间 / 年");
ylabel("比例 / %");

% 添加图例
legend("第一产业", "第二产业", "第三产业", "Location", "bestoutside");

% 添加图名
title("20年深圳市三大产业比例变化图", "FontSize", 20);

grid on
```

![20年深圳市三大产业比例变化图](image/20_SZ_Industrial_Diff.svg)

&emsp;&emsp;2007～2017年，深圳市产业结构不断从第二产业向第三产业转移，第一产业被“战略性放弃”。
