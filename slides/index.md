---
title       : Euro Goals App
subtitle    : Goals of the UEFA European Championships
author      : Lennart Heuckendorf
job         : Data Jedi
framework   : revealjs   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Euro Goals App

And how good did your team?





--- .class #id 

## Here are some general information about the UEFA European Championships!


```r
# Data of which UEFA European Championships are included?
unique(data$Year)
```

```
##  [1] 1960 1964 1968 1972 1976 1980 1984 1988 1992 1996 2000 2004 2008 2012
```





```r
# Which country is the all-time highscorer?
highscorer <- aggregate(Goals ~ Country, data= data, FUN= sum)
winner <- highscorer[order(-highscorer$Goals),][1,]
runnerup <- highscorer[order(-highscorer$Goals),][2,]
third <- highscorer[order(-highscorer$Goals),][3,]
```
1. Germany  - 65
2. Netherlands  - 57
3. Spain  - 50

---

## Why do you need this app?

General information are awesome! But what if you want to know how much goals each team scored in a specific Championship? This is what you get from Wikipedia!

![width](https://raw.githubusercontent.com/LennartH86/DataProductsProject/master/slides/wikipedia.PNG)

Not really what we want right?

--- 

## This is why you need this app!

Becaue you want to see all the data! For example from the UEFA European Championships 2012.

<!-- GeoChart generated in R 3.2.1 by googleVis 0.5.9 package -->
<!-- Fri Jul 24 23:08:48 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID210c69e72725 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Czech Republic",
2 
],
[
 "France",
4 
],
[
 "Russia",
5 
],
[
 "Serbia",
6 
],
[
 "Denmark",
1 
],
[
 "Hungary",
4 
],
[
 "Russia",
4 
],
[
 "Spain",
4 
],
[
 "GB",
2 
],
[
 "Italy",
3 
],
[
 "Russia",
0 
],
[
 "Serbia",
2 
],
[
 "Belgium",
3 
],
[
 "Germany",
5 
],
[
 "Hungary",
1 
],
[
 "Russia",
1 
],
[
 "Czech Republic",
5 
],
[
 "Germany",
6 
],
[
 "Netherlands",
4 
],
[
 "Serbia",
4 
],
[
 "Belgium",
4 
],
[
 "Czech Republic",
5 
],
[
 "GB",
3 
],
[
 "Germany",
6 
],
[
 "Greece",
1 
],
[
 "Italy",
2 
],
[
 "Netherlands",
4 
],
[
 "Spain",
2 
],
[
 "Belgium",
4 
],
[
 "Denmark",
9 
],
[
 "France",
14 
],
[
 "Germany",
2 
],
[
 "Portugal",
4 
],
[
 "Romania",
2 
],
[
 "Serbia",
2 
],
[
 "Spain",
4 
],
[
 "Denmark",
2 
],
[
 "GB",
2 
],
[
 "Germany",
6 
],
[
 "Italy",
4 
],
[
 "Netherlands",
8 
],
[
 "Ireland",
2 
],
[
 "Russia",
7 
],
[
 "Spain",
3 
],
[
 "Denmark",
6 
],
[
 "GB",
1 
],
[
 "France",
2 
],
[
 "Germany",
7 
],
[
 "Netherlands",
6 
],
[
 "Russia",
7 
],
[
 "GB-SCT",
3 
],
[
 "Sweden",
6 
],
[
 "Bulgaria",
3 
],
[
 "Croatia",
5 
],
[
 "Czech Republic",
7 
],
[
 "Denmark",
4 
],
[
 "GB",
8 
],
[
 "France",
5 
],
[
 "Germany",
10 
],
[
 "Italy",
3 
],
[
 "Netherlands",
3 
],
[
 "Portugal",
5 
],
[
 "Romania",
1 
],
[
 "Russia",
1 
],
[
 "GB-SCT",
1 
],
[
 "Spain",
4 
],
[
 "Switzerland",
1 
],
[
 "Turkey",
0 
],
[
 "Belgium",
2 
],
[
 "Czech Republic",
3 
],
[
 "Denmark",
0 
],
[
 "GB",
5 
],
[
 "France",
13 
],
[
 "Germany",
1 
],
[
 "Italy",
9 
],
[
 "Netherlands",
13 
],
[
 "Norway",
1 
],
[
 "Portugal",
10 
],
[
 "Romania",
4 
],
[
 "Russia",
4 
],
[
 "Serbia",
8 
],
[
 "Slovenia",
4 
],
[
 "Spain",
7 
],
[
 "Sweden",
2 
],
[
 "Turkey",
3 
],
[
 "Bulgaria",
1 
],
[
 "Croatia",
4 
],
[
 "Czech Republic",
10 
],
[
 "Denmark",
4 
],
[
 "GB",
10 
],
[
 "France",
7 
],
[
 "Germany",
2 
],
[
 "Greece",
7 
],
[
 "Italy",
3 
],
[
 "Latvia",
1 
],
[
 "Netherlands",
7 
],
[
 "Portugal",
8 
],
[
 "Russia",
2 
],
[
 "Spain",
2 
],
[
 "Sweden",
8 
],
[
 "Switzerland",
1 
],
[
 "Austria",
1 
],
[
 "Croatia",
5 
],
[
 "Czech Republic",
4 
],
[
 "France",
1 
],
[
 "Germany",
10 
],
[
 "Greece",
1 
],
[
 "Italy",
3 
],
[
 "Netherlands",
10 
],
[
 "Poland",
1 
],
[
 "Portugal",
7 
],
[
 "Romania",
1 
],
[
 "Russia",
7 
],
[
 "Spain",
12 
],
[
 "Sweden",
3 
],
[
 "Switzerland",
3 
],
[
 "Turkey",
8 
],
[
 "Croatia",
4 
],
[
 "Czech Republic",
4 
],
[
 "Denmark",
4 
],
[
 "GB",
5 
],
[
 "France",
3 
],
[
 "Germany",
10 
],
[
 "Greece",
5 
],
[
 "Italy",
6 
],
[
 "Netherlands",
2 
],
[
 "Poland",
2 
],
[
 "Portugal",
6 
],
[
 "Ireland",
1 
],
[
 "Russia",
5 
],
[
 "Spain",
12 
],
[
 "Sweden",
5 
],
[
 "Ukraine",
2 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
],
[
 "Min",
0 
],
[
 "Max",
14 
] 
];
data.addColumn('string','Country');
data.addColumn('number','Goals');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoChartID210c69e72725() {
var data = gvisDataGeoChartID210c69e72725();
var options = {};
options["width"] =    500;
options["height"] =    400;
options["region"] = "150";
options["displayMode"] = "regions";
options["resolution"] = "countries";
options["colorAxis"] = {colors:['#FFFFFF', '#0000FF']};
options["magnifyingGlass"] = {enable: true, zoomFactor: 40};
options["datalessRegionColor"] = "white";

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID210c69e72725')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartGeoChartID210c69e72725);
})();
function displayChartGeoChartID210c69e72725() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID210c69e72725"></script>
 
<!-- divChart -->
  
<div id="GeoChartID210c69e72725" 
  style="width: 500; height: 400;">
</div>

---

Well you need the full app to see the goals of more than one year though!

Get it here: https://lennarth86.shinyapps.io/EuroGoalsApp



