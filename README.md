# Growth-Curve
To plot growth curve of cell confluence(%) with different treatment

The data looks like https://github.com/Chandllller/Growth-Curve/blob/master/R53-9.csv

![image](https://github.com/Chandllller/Growth-Curve/blob/master/Growth.png)
    

Then I could plot the data with the ggplot2 in R with the display like
Hooooops!
![image](https://github.com/Chandllller/Growth-Curve/blob/master/R53-9.png)

## 20180920 Update
Add ggsave output setting 
```setwd('Desktop/R Picture')
ggsave(filename="Enzalutamide on R53-9 Line.png",width=15,height=9,units="cm", dpi = 1000)```
