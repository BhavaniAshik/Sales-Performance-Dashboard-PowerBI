# DAX Measures

## Total Sales
```DAX
Total Sales = SUM(Sales[Sales])
```

## Sales YTD
```DAX
Sales YTD = TOTALYTD([Total Sales],'Date'[Date])
```

## Total Profit
```DAX
Total Profit = SUM(Sales[Profit])
```

## Profit YTD
```DAX
Profit YTD = TOTALYTD([Total Profit],'Date'[Date])
```

## AOV
```DAX
AOV = DIVIDE([Total Sales],DISTINCTCOUNT(Sales[Order ID]),0)
```

## Sales PY
```DAX
Sales PY =
CALCULATE([Total Sales],SAMEPERIODLASTYEAR('Date'[Date]))
```

## YoY Growth %
```DAX
YoY Growth % =
DIVIDE([Total Sales]-[Sales PY],[Sales PY],0)
```

## Customer Rank
```DAX
Customer Rank =
RANKX(ALL(Sales[CustomerName]),[Total Sales],,DESC)
```
