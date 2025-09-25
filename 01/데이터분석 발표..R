install.packages("readxl")
install.packages("ggplot2")

library(readxl)      
library(ggplot2)     

par(mfrow = c(1, 1))            
par(mar = c(5, 5, 4, 2))        

depression_data <- read_excel("C:/Users/ye100/OneDrive/Desktop/R프로그래밍/우울증 환자수.xlsx")
adhd_data <- read_excel("C:/Users/ye100/OneDrive/Desktop/R프로그래밍/adhd환자수.xlsx")

merged_data <- merge(depression_data, adhd_data, by = "year")

colnames(merged_data) <- c("year", "Depression_Patients", "ADHD_Patients")

p1 <- ggplot(merged_data, aes(x = year, y = Depression_Patients)) +
  geom_col(fill = "skyblue") +
  labs(title = "년도별 우울증 환자 수", x = "년도", y = "환자 수") +
  theme_minimal()
p2 <- ggplot(merged_data, aes(x = year, y = ADHD_Patients)) +
  geom_col(fill = "pink") +
  labs(title = "년도별 ADHD 환자 수", x = "년도", y = "환자 수") +
  theme_minimal()
print(p1)
print(p2)

plot(merged_data$Depression_Patients, merged_data$ADHD_Patients,
     xlab = "우울증 환자 수", ylab = "ADHD 환자 수",
     main = "우울증 vs ADHD 환자 수",
     col = "blue", pch = 16,
     cex.axis = 1.2, cex.lab = 1.5, cex.main = 1.8)

correlation <- cor(merged_data$Depression_Patients, merged_data$ADHD_Patients)
cat("우울증과 ADHD 환자 수의 상관계수:", round(correlation, 3), "\n")





