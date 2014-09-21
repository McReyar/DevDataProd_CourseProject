---
title       : Stock Chart
subtitle    : Visualization of Stock Prices and Returns
author      : McReyar
job         : Course Project for Developing Data Products on Coursera
logo        : candlestick.png
framework   : io2012      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : monokai      # 
widgets     : []
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github      :
  user      : McReyar
  repo      : DevDataProd_CourseProject
---
.title-slide {
  background-color: #CBE7A5; /* #EDE0CF; ; #CA9F9D*/
}

## Overview

Despite the financial crisis stock trading is still quite popular. Visualizing stock prices and returns can help selecting the right share and the right time to buy or sell them.  
<br />
*** {name: left}
  
The Shiny App [Stock Chart](https://mcreyar.shinyapps.io/StockChart/) makes it possible to visualize any share for which [Yahoo](http://finance.yahoo.com/) provides financial data.  Following charts are available:  
* Line Chart: adjusted prices
* Candlestick Chart: open, close, low and high
* Calendar: daily returns
  
*** {name: right}
  
For the line and candlestick charts [dygraphs](http://dygraphs.com/) is used, which not only makes the charts interactive but it is also very fast.  
<br />
The Calender is based on the very powerful [Google chart API](https://developers.google.com/chart/)


---

## Line Chart

The line chart shows the price history of the stock. Adjusted prices are used and therefore splits and dividend payments are considered.

<iframe src=' assets/fig/unnamed-chunk-1.html ' scrolling='no' frameBorder='0' seamless class='rChart dygraph ' id=iframe- chart12a431aa4fd8 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>
By clicking and draging an interesting timespan can be observed more closely. Double-clicking on the  chart will zoom back out.

---

## Candlestick Chart

In the classic candletick chart the open, close, low and high of each day are shown:

<iframe src=' assets/fig/unnamed-chunk-2.html ' scrolling='no' frameBorder='0' seamless class='rChart dygraph ' id=iframe- chart12a43559ab2 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>
This makes it possible to identify specific formations.

---

## Calendar of Daily Returns

Seasonal trends or patterns affecting specific days can be seen on the heatmap calendar.
The daily returns are coded by colour, which makes it possible to quickly identify days with exceptionally high loss or return.

<!-- Calendar generated in R 3.1.1 by googleVis 0.5.5 package -->
<!-- Sun Sep 21 22:07:30 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataCalendarID938653835f0 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 new Date(2013,0,2),
0.68 
],
[
 new Date(2013,0,3),
0.52 
],
[
 new Date(2013,0,4),
0.28 
],
[
 new Date(2013,0,7),
-2.01 
],
[
 new Date(2013,0,8),
-2.63 
],
[
 new Date(2013,0,9),
3.55 
],
[
 new Date(2013,0,10),
0.43 
],
[
 new Date(2013,0,11),
-2.5 
],
[
 new Date(2013,0,14),
1.85 
],
[
 new Date(2013,0,15),
0.51 
],
[
 new Date(2013,0,16),
-3.38 
],
[
 new Date(2013,0,17),
1.24 
],
[
 new Date(2013,0,18),
-0.29 
],
[
 new Date(2013,0,22),
-1.17 
],
[
 new Date(2013,0,23),
0.18 
],
[
 new Date(2013,0,24),
1.39 
],
[
 new Date(2013,0,25),
-0.39 
],
[
 new Date(2013,0,28),
-1.37 
],
[
 new Date(2013,0,29),
-0.47 
],
[
 new Date(2013,0,30),
1.28 
],
[
 new Date(2013,0,31),
-0.97 
],
[
 new Date(2013,1,1),
1.35 
],
[
 new Date(2013,1,4),
0.45 
],
[
 new Date(2013,1,5),
0.9 
],
[
 new Date(2013,1,6),
0.53 
],
[
 new Date(2013,1,7),
1.49 
],
[
 new Date(2013,1,8),
-1.12 
],
[
 new Date(2013,1,11),
-0.9 
],
[
 new Date(2013,1,12),
0.16 
],
[
 new Date(2013,1,13),
-1.59 
],
[
 new Date(2013,1,14),
0.2 
],
[
 new Date(2013,1,15),
0.13 
],
[
 new Date(2013,1,19),
-0.51 
],
[
 new Date(2013,1,20),
0.17 
],
[
 new Date(2013,1,21),
1.64 
],
[
 new Date(2013,1,22),
0.86 
],
[
 new Date(2013,1,25),
-2.13 
],
[
 new Date(2013,1,26),
0.83 
],
[
 new Date(2013,1,27),
2.26 
],
[
 new Date(2013,1,28),
-0.59 
],
[
 new Date(2013,2,1),
0.49 
],
[
 new Date(2013,2,4),
-0.25 
],
[
 new Date(2013,2,5),
2.04 
],
[
 new Date(2013,2,6),
0.53 
],
[
 new Date(2013,2,7),
2.49 
],
[
 new Date(2013,2,8),
0.22 
],
[
 new Date(2013,2,11),
2.11 
],
[
 new Date(2013,2,12),
1.47 
],
[
 new Date(2013,2,13),
0.7 
],
[
 new Date(2013,2,14),
-0.15 
],
[
 new Date(2013,2,15),
2.14 
],
[
 new Date(2013,2,18),
-1.45 
],
[
 new Date(2013,2,19),
0.39 
],
[
 new Date(2013,2,20),
-0.16 
],
[
 new Date(2013,2,21),
-1.22 
],
[
 new Date(2013,2,22),
0.58 
],
[
 new Date(2013,2,25),
0.04 
],
[
 new Date(2013,2,26),
2.09 
],
[
 new Date(2013,2,27),
-0.48 
],
[
 new Date(2013,2,28),
-0.41 
],
[
 new Date(2013,3,1),
-0.7 
],
[
 new Date(2013,3,2),
-1.36 
],
[
 new Date(2013,3,3),
0.32 
],
[
 new Date(2013,3,4),
0.7 
],
[
 new Date(2013,3,5),
1.44 
],
[
 new Date(2013,3,8),
0.67 
],
[
 new Date(2013,3,9),
0.53 
],
[
 new Date(2013,3,10),
0.7 
],
[
 new Date(2013,3,11),
0.81 
],
[
 new Date(2013,3,12),
0.41 
],
[
 new Date(2013,3,15),
-2.38 
],
[
 new Date(2013,3,16),
0.14 
],
[
 new Date(2013,3,17),
-0.23 
],
[
 new Date(2013,3,18),
-0.66 
],
[
 new Date(2013,3,19),
2.14 
],
[
 new Date(2013,3,22),
-1.16 
],
[
 new Date(2013,3,23),
1.43 
],
[
 new Date(2013,3,24),
3.01 
],
[
 new Date(2013,3,25),
0.92 
],
[
 new Date(2013,3,26),
1.29 
],
[
 new Date(2013,3,29),
-1.02 
],
[
 new Date(2013,3,30),
-0.53 
],
[
 new Date(2013,4,1),
-0.25 
],
[
 new Date(2013,4,2),
1.13 
],
[
 new Date(2013,4,3),
1.66 
],
[
 new Date(2013,4,6),
0.48 
],
[
 new Date(2013,4,7),
0.64 
],
[
 new Date(2013,4,8),
-0.79 
],
[
 new Date(2013,4,9),
0.61 
],
[
 new Date(2013,4,10),
-0.39 
],
[
 new Date(2013,4,13),
0.55 
],
[
 new Date(2013,4,14),
1.42 
],
[
 new Date(2013,4,15),
0.95 
],
[
 new Date(2013,4,16),
-0.45 
],
[
 new Date(2013,4,17),
2.42 
],
[
 new Date(2013,4,20),
-0.2 
],
[
 new Date(2013,4,21),
0.03 
],
[
 new Date(2013,4,22),
-0.83 
],
[
 new Date(2013,4,23),
1.86 
],
[
 new Date(2013,4,24),
0.25 
],
[
 new Date(2013,4,28),
0.11 
],
[
 new Date(2013,4,29),
-1.02 
],
[
 new Date(2013,4,30),
1.46 
],
[
 new Date(2013,4,31),
-1.51 
],
[
 new Date(2013,5,3),
1.74 
],
[
 new Date(2013,5,4),
-1.12 
],
[
 new Date(2013,5,5),
-1.12 
],
[
 new Date(2013,5,6),
1.29 
],
[
 new Date(2013,5,7),
2.74 
],
[
 new Date(2013,5,10),
-0.24 
],
[
 new Date(2013,5,11),
-0.48 
],
[
 new Date(2013,5,12),
-0.86 
],
[
 new Date(2013,5,13),
1.27 
],
[
 new Date(2013,5,14),
-0.32 
],
[
 new Date(2013,5,17),
1.18 
],
[
 new Date(2013,5,18),
1.02 
],
[
 new Date(2013,5,19),
-1.76 
],
[
 new Date(2013,5,20),
-2.55 
],
[
 new Date(2013,5,21),
0.34 
],
[
 new Date(2013,5,24),
-2.13 
],
[
 new Date(2013,5,25),
0.84 
],
[
 new Date(2013,5,26),
2.11 
],
[
 new Date(2013,5,27),
2.38 
],
[
 new Date(2013,5,28),
-0.69 
],
[
 new Date(2013,6,1),
0.78 
],
[
 new Date(2013,6,2),
-1.71 
],
[
 new Date(2013,6,3),
1.4 
],
[
 new Date(2013,6,5),
1.27 
],
[
 new Date(2013,6,8),
0.16 
],
[
 new Date(2013,6,9),
0.3 
],
[
 new Date(2013,6,10),
0.78 
],
[
 new Date(2013,6,11),
1.31 
],
[
 new Date(2013,6,12),
-4.69 
],
[
 new Date(2013,6,15),
3.72 
],
[
 new Date(2013,6,16),
-1.35 
],
[
 new Date(2013,6,17),
0.54 
],
[
 new Date(2013,6,18),
2.71 
],
[
 new Date(2013,6,19),
-0.62 
],
[
 new Date(2013,6,22),
-0.09 
],
[
 new Date(2013,6,23),
0.87 
],
[
 new Date(2013,6,24),
-0.78 
],
[
 new Date(2013,6,25),
-0.23 
],
[
 new Date(2013,6,26),
-1.03 
],
[
 new Date(2013,6,29),
-0.75 
],
[
 new Date(2013,6,30),
0.88 
],
[
 new Date(2013,6,31),
-0.6 
],
[
 new Date(2013,7,1),
1.52 
],
[
 new Date(2013,7,2),
1.12 
],
[
 new Date(2013,7,5),
-0.37 
],
[
 new Date(2013,7,6),
-0.43 
],
[
 new Date(2013,7,7),
-0.58 
],
[
 new Date(2013,7,8),
-0.55 
],
[
 new Date(2013,7,9),
-0.48 
],
[
 new Date(2013,7,12),
-1.03 
],
[
 new Date(2013,7,13),
1.91 
],
[
 new Date(2013,7,14),
-1.95 
],
[
 new Date(2013,7,15),
-1.37 
],
[
 new Date(2013,7,16),
0.72 
],
[
 new Date(2013,7,19),
1.21 
],
[
 new Date(2013,7,20),
-0.09 
],
[
 new Date(2013,7,21),
-0.69 
],
[
 new Date(2013,7,22),
1.18 
],
[
 new Date(2013,7,23),
0.32 
],
[
 new Date(2013,7,26),
0.05 
],
[
 new Date(2013,7,27),
-2.2 
],
[
 new Date(2013,7,28),
0.06 
],
[
 new Date(2013,7,29),
1.61 
],
[
 new Date(2013,7,30),
-0.96 
],
[
 new Date(2013,8,3),
1.05 
],
[
 new Date(2013,8,4),
1.3 
],
[
 new Date(2013,8,5),
0.26 
],
[
 new Date(2013,8,6),
-0.54 
],
[
 new Date(2013,8,9),
1.06 
],
[
 new Date(2013,8,10),
0.91 
],
[
 new Date(2013,8,11),
0.98 
],
[
 new Date(2013,8,12),
0.52 
],
[
 new Date(2013,8,13),
1.39 
],
[
 new Date(2013,8,16),
3.9 
],
[
 new Date(2013,8,17),
1.24 
],
[
 new Date(2013,8,18),
1.1 
],
[
 new Date(2013,8,19),
0.54 
],
[
 new Date(2013,8,20),
-2.02 
],
[
 new Date(2013,8,23),
0.75 
],
[
 new Date(2013,8,24),
1.27 
],
[
 new Date(2013,8,25),
-0.41 
],
[
 new Date(2013,8,26),
0.73 
],
[
 new Date(2013,8,27),
-0.54 
],
[
 new Date(2013,8,30),
-1.04 
],
[
 new Date(2013,9,1),
0.21 
],
[
 new Date(2013,9,2),
0.08 
],
[
 new Date(2013,9,3),
-2.21 
],
[
 new Date(2013,9,4),
1.7 
],
[
 new Date(2013,9,7),
-0.44 
],
[
 new Date(2013,9,8),
-1.07 
],
[
 new Date(2013,9,9),
-0.84 
],
[
 new Date(2013,9,10),
3.87 
],
[
 new Date(2013,9,11),
-0.77 
],
[
 new Date(2013,9,14),
1.25 
],
[
 new Date(2013,9,15),
-1.07 
],
[
 new Date(2013,9,16),
1.83 
],
[
 new Date(2013,9,17),
1.62 
],
[
 new Date(2013,9,18),
0.19 
],
[
 new Date(2013,9,21),
-0.86 
],
[
 new Date(2013,9,22),
0.83 
],
[
 new Date(2013,9,23),
5.34 
],
[
 new Date(2013,9,24),
-0.03 
],
[
 new Date(2013,9,25),
1.71 
],
[
 new Date(2013,9,28),
-1 
],
[
 new Date(2013,9,29),
-0.17 
],
[
 new Date(2013,9,30),
0.02 
],
[
 new Date(2013,9,31),
0.63 
],
[
 new Date(2013,10,1),
1.94 
],
[
 new Date(2013,10,4),
-0.18 
],
[
 new Date(2013,10,5),
0.59 
],
[
 new Date(2013,10,6),
-0.36 
],
[
 new Date(2013,10,7),
-1.19 
],
[
 new Date(2013,10,8),
1.51 
],
[
 new Date(2013,10,11),
-0.72 
],
[
 new Date(2013,10,12),
-0.15 
],
[
 new Date(2013,10,13),
0.63 
],
[
 new Date(2013,10,14),
1.44 
],
[
 new Date(2013,10,15),
0.73 
],
[
 new Date(2013,10,18),
1.68 
],
[
 new Date(2013,10,19),
-1 
],
[
 new Date(2013,10,20),
-3.31 
],
[
 new Date(2013,10,21),
0.36 
],
[
 new Date(2013,10,22),
2.29 
],
[
 new Date(2013,10,25),
-2.18 
],
[
 new Date(2013,10,26),
1.34 
],
[
 new Date(2013,10,27),
-0.04 
],
[
 new Date(2013,10,29),
-0.35 
],
[
 new Date(2013,11,2),
-0.07 
],
[
 new Date(2013,11,3),
-1.61 
],
[
 new Date(2013,11,4),
-0.38 
],
[
 new Date(2013,11,5),
0.94 
],
[
 new Date(2013,11,6),
1.85 
],
[
 new Date(2013,11,9),
-0.37 
],
[
 new Date(2013,11,10),
-0.73 
],
[
 new Date(2013,11,11),
-0.85 
],
[
 new Date(2013,11,12),
0.3 
],
[
 new Date(2013,11,13),
0.65 
],
[
 new Date(2013,11,16),
0.67 
],
[
 new Date(2013,11,17),
0.86 
],
[
 new Date(2013,11,18),
-0.29 
],
[
 new Date(2013,11,19),
-0.24 
],
[
 new Date(2013,11,20),
1.11 
],
[
 new Date(2013,11,23),
-0.2 
],
[
 new Date(2013,11,24),
0.32 
],
[
 new Date(2013,11,26),
1.05 
],
[
 new Date(2013,11,27),
-0.99 
],
[
 new Date(2013,11,30),
-0.72 
],
[
 new Date(2013,11,31),
0.42 
],
[
 new Date(2014,0,2),
0.13 
],
[
 new Date(2014,0,3),
0.7 
],
[
 new Date(2014,0,6),
0.57 
],
[
 new Date(2014,0,7),
1.52 
],
[
 new Date(2014,0,8),
0.22 
],
[
 new Date(2014,0,9),
0.93 
],
[
 new Date(2014,0,10),
-0.16 
],
[
 new Date(2014,0,13),
-0.85 
],
[
 new Date(2014,0,14),
-0.49 
],
[
 new Date(2014,0,15),
0.44 
],
[
 new Date(2014,0,16),
-0.29 
],
[
 new Date(2014,0,17),
0.18 
],
[
 new Date(2014,0,21),
0.86 
],
[
 new Date(2014,0,22),
1.91 
],
[
 new Date(2014,0,23),
-2.12 
],
[
 new Date(2014,0,24),
-3.3 
],
[
 new Date(2014,0,27),
0.52 
],
[
 new Date(2014,0,28),
-0.2 
],
[
 new Date(2014,0,29),
-5.33 
],
[
 new Date(2014,0,30),
-2.5 
],
[
 new Date(2014,0,31),
-1 
],
[
 new Date(2014,1,3),
-1.74 
],
[
 new Date(2014,1,4),
-0.84 
],
[
 new Date(2014,1,5),
-0.52 
],
[
 new Date(2014,1,6),
1.05 
],
[
 new Date(2014,1,7),
3.55 
],
[
 new Date(2014,1,10),
0.11 
],
[
 new Date(2014,1,11),
2.36 
],
[
 new Date(2014,1,12),
-1.56 
],
[
 new Date(2014,1,13),
1.07 
],
[
 new Date(2014,1,14),
0.51 
],
[
 new Date(2014,1,18),
0.36 
],
[
 new Date(2014,1,19),
-1.71 
],
[
 new Date(2014,1,20),
0.91 
],
[
 new Date(2014,1,21),
-0.99 
],
[
 new Date(2014,1,24),
1.02 
],
[
 new Date(2014,1,25),
-2.17 
],
[
 new Date(2014,1,26),
-0.13 
],
[
 new Date(2014,1,27),
1.54 
],
[
 new Date(2014,1,28),
0.28 
],
[
 new Date(2014,2,3),
-0.54 
],
[
 new Date(2014,2,4),
1.57 
],
[
 new Date(2014,2,5),
-1.11 
],
[
 new Date(2014,2,6),
0.05 
],
[
 new Date(2014,2,7),
-0.25 
],
[
 new Date(2014,2,10),
-1.28 
],
[
 new Date(2014,2,11),
-0.96 
],
[
 new Date(2014,2,12),
-0.99 
],
[
 new Date(2014,2,13),
-2.04 
],
[
 new Date(2014,2,14),
1 
],
[
 new Date(2014,2,17),
1.88 
],
[
 new Date(2014,2,18),
-1.1 
],
[
 new Date(2014,2,19),
-1.45 
],
[
 new Date(2014,2,20),
1.22 
],
[
 new Date(2014,2,21),
-0.93 
],
[
 new Date(2014,2,24),
0.69 
],
[
 new Date(2014,2,25),
0.49 
],
[
 new Date(2014,2,26),
-0.4 
],
[
 new Date(2014,2,27),
-0.26 
],
[
 new Date(2014,2,28),
1.01 
],
[
 new Date(2014,2,31),
0.83 
],
[
 new Date(2014,3,1),
2.17 
],
[
 new Date(2014,3,2),
0.08 
],
[
 new Date(2014,3,3),
0.37 
],
[
 new Date(2014,3,4),
-1.09 
],
[
 new Date(2014,3,7),
-1.41 
],
[
 new Date(2014,3,8),
-1.15 
],
[
 new Date(2014,3,9),
2.2 
],
[
 new Date(2014,3,10),
-2.55 
],
[
 new Date(2014,3,11),
-1.27 
],
[
 new Date(2014,3,14),
0.97 
],
[
 new Date(2014,3,15),
0.83 
],
[
 new Date(2014,3,16),
1.42 
],
[
 new Date(2014,3,17),
1.49 
],
[
 new Date(2014,3,21),
-0.08 
],
[
 new Date(2014,3,22),
-0.21 
],
[
 new Date(2014,3,23),
2.41 
],
[
 new Date(2014,3,24),
-0.59 
],
[
 new Date(2014,3,25),
-0.92 
],
[
 new Date(2014,3,28),
-1.26 
],
[
 new Date(2014,3,29),
1.05 
],
[
 new Date(2014,3,30),
0.51 
],
[
 new Date(2014,4,1),
-0.43 
],
[
 new Date(2014,4,2),
1.15 
],
[
 new Date(2014,4,5),
1.55 
],
[
 new Date(2014,4,6),
-0.86 
],
[
 new Date(2014,4,7),
-0.37 
],
[
 new Date(2014,4,8),
0.17 
],
[
 new Date(2014,4,9),
0.41 
],
[
 new Date(2014,4,12),
1.14 
],
[
 new Date(2014,4,13),
0.64 
],
[
 new Date(2014,4,14),
-0.34 
],
[
 new Date(2014,4,15),
-1.34 
],
[
 new Date(2014,4,16),
-0.3 
],
[
 new Date(2014,4,19),
0.41 
],
[
 new Date(2014,4,20),
-1.35 
],
[
 new Date(2014,4,21),
1.06 
],
[
 new Date(2014,4,22),
0.67 
],
[
 new Date(2014,4,23),
0.43 
],
[
 new Date(2014,4,27),
1.33 
],
[
 new Date(2014,4,28),
0.12 
],
[
 new Date(2014,4,29),
0.6 
],
[
 new Date(2014,4,30),
0.08 
],
[
 new Date(2014,5,2),
0.48 
],
[
 new Date(2014,5,3),
-0.01 
],
[
 new Date(2014,5,4),
-0.4 
],
[
 new Date(2014,5,5),
1.1 
],
[
 new Date(2014,5,6),
1.05 
],
[
 new Date(2014,5,9),
-0.21 
],
[
 new Date(2014,5,10),
-0.51 
],
[
 new Date(2014,5,11),
-2.3 
],
[
 new Date(2014,5,12),
-1.42 
],
[
 new Date(2014,5,13),
0.08 
],
[
 new Date(2014,5,16),
0.19 
],
[
 new Date(2014,5,17),
-0.07 
],
[
 new Date(2014,5,18),
0.02 
],
[
 new Date(2014,5,19),
0.26 
],
[
 new Date(2014,5,20),
-0.54 
],
[
 new Date(2014,5,23),
-0.95 
],
[
 new Date(2014,5,24),
-1.3 
],
[
 new Date(2014,5,25),
-1.62 
],
[
 new Date(2014,5,26),
0.76 
],
[
 new Date(2014,5,27),
0.41 
],
[
 new Date(2014,5,30),
-1.02 
],
[
 new Date(2014,6,1),
0.72 
],
[
 new Date(2014,6,2),
-0.41 
],
[
 new Date(2014,6,3),
0.7 
],
[
 new Date(2014,6,7),
0.45 
],
[
 new Date(2014,6,8),
-1.78 
],
[
 new Date(2014,6,9),
0 
],
[
 new Date(2014,6,10),
0 
],
[
 new Date(2014,6,11),
1.03 
],
[
 new Date(2014,6,14),
1.12 
],
[
 new Date(2014,6,15),
-0.32 
],
[
 new Date(2014,6,16),
-1.3 
],
[
 new Date(2014,6,17),
-1.21 
],
[
 new Date(2014,6,18),
1.4 
],
[
 new Date(2014,6,21),
0.52 
],
[
 new Date(2014,6,22),
1.12 
],
[
 new Date(2014,6,23),
-2.34 
],
[
 new Date(2014,6,24),
-1.82 
],
[
 new Date(2014,6,25),
-0.96 
],
[
 new Date(2014,6,28),
-0.11 
],
[
 new Date(2014,6,29),
-0.6 
],
[
 new Date(2014,6,30),
-0.02 
],
[
 new Date(2014,6,31),
-1.48 
],
[
 new Date(2014,7,1),
-0.08 
],
[
 new Date(2014,7,4),
-0.37 
],
[
 new Date(2014,7,5),
1.12 
],
[
 new Date(2014,7,6),
-2.42 
],
[
 new Date(2014,7,7),
1.27 
],
[
 new Date(2014,7,8),
0.66 
],
[
 new Date(2014,7,11),
0.14 
],
[
 new Date(2014,7,12),
-0.27 
],
[
 new Date(2014,7,13),
1.25 
],
[
 new Date(2014,7,14),
1.75 
],
[
 new Date(2014,7,15),
-0.77 
],
[
 new Date(2014,7,18),
1.48 
],
[
 new Date(2014,7,19),
0.48 
],
[
 new Date(2014,7,20),
1.41 
],
[
 new Date(2014,7,21),
0.12 
],
[
 new Date(2014,7,22),
-0.03 
],
[
 new Date(2014,7,25),
0.68 
],
[
 new Date(2014,7,26),
0.21 
],
[
 new Date(2014,7,27),
-0.31 
],
[
 new Date(2014,7,28),
-0.85 
],
[
 new Date(2014,7,29),
-0.24 
],
[
 new Date(2014,8,2),
-1.04 
],
[
 new Date(2014,8,3),
0.37 
],
[
 new Date(2014,8,4),
-0.38 
],
[
 new Date(2014,8,5),
-0.61 
],
[
 new Date(2014,8,8),
2.64 
],
[
 new Date(2014,8,9),
0.18 
],
[
 new Date(2014,8,10),
0.01 
],
[
 new Date(2014,8,11),
-0.45 
],
[
 new Date(2014,8,12),
-0.54 
],
[
 new Date(2014,8,15),
-0.5 
],
[
 new Date(2014,8,16),
0.8 
],
[
 new Date(2014,8,17),
0.35 
],
[
 new Date(2014,8,18),
0.64 
],
[
 new Date(2014,8,19),
0.6 
] 
];
data.addColumn('date','date');
data.addColumn('number','daily.returns');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartCalendarID938653835f0() {
var data = gvisDataCalendarID938653835f0();
var options = {};
options["width"] =    865;
options["height"] =    300;
options["title"] = "Daily Returns";
options["calendar"] = {yearLabel: {fontName: 'Times-Roman'
                                                        ,fontSize: 32
                                                        ,color: '#1A8763'
                                                        ,bold: true}
                                            ,cellSize: 15
                                            ,cellColor: {stroke: 'red'
                                                        ,strokeOpacity: 0.2 }
                                            ,focusedCellColor: {stroke:'red'}
                                            };

    var chart = new google.visualization.Calendar(
    document.getElementById('CalendarID938653835f0')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "calendar";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartCalendarID938653835f0);
})();
function displayChartCalendarID938653835f0() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartCalendarID938653835f0"></script>
 
<!-- divChart -->
  
<div id="CalendarID938653835f0" 
  style="width: 865; height: 300;">
</div>

By hoovering over a specific day, the exact return in percent can be examined.
