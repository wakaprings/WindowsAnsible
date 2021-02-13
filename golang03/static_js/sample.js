var list = [10, 30, 23, 45, 65, 30, 67];
var tbl = d3.select("#result")  // div#result内に出力
    .append("table")    // table要素を追加
    .selectAll("tr")    // tr要素を対象にする
    .data(list) // 出力するデータ
    .enter()    // データ数だけ要素を生成
    .append("tr")
    .append("td")
    .text(String)   // データ内容を出力