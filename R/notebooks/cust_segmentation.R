###########################

# Module 6: Unsupervised Multivariate Methods

###########################

# Author: William C. Phiri
# Date: 11 JuL 2025
# Pillar 1e: - Module 5 - Assignment 1 Cluster Analysis

#-------------------------------------------------------------------


# BACKGROUND:
#   Marketing team of ABC Bank is running a campaign for credit card on the existing customers. Marketing team wants to understand the segments of the customers to target based on the Minimum and Maximum Balances, Monthly Income, age of the customer, association of the customer with bank (in years).
# 
# 
# 
# QUESTIONS-
# 1. Import Customer data in R.
# 
# 2. Subset the data excluding Customer id and City.
# 
# 3. Scale the variables.
# 
# 4. Run kmeans on the scaled variable with 3 clusters.
# 
# 5. Obtain mean of original variables for each cluster.
# 
# 6. Interpret the clusters.
# 
# 7. Obtain plot of WSS (Within Sum of Squares) to check number of clusters.



#----------------------------------------------------------------------

# Install Required Libraries

install.packages("dplyr")
install.packages("tidyverse")
install.packages("factoextra")

# Load libraries

library(dplyr)
library(tidyverse)
library(factoextra)

#---------------------------------------------------------------------

# STEP 1: Load Dataset

customer_data <- read.csv("Customer data.csv", header = TRUE)

# Primary EDA

glimpse(customer_data)

head(customer_data)

str(customer_data)

# Check for missing values

any(is.na(customer_data))

#--------------------------------------------------------------------

# STEP 2: Subset the Data (Exclude Customer id and City)


cust_subset <- customer_data %>% 
  select(-"Cust_Id", -"City")

glimpse(cust_subset)


#---------------------------------------------------------------------

# STEP 3: Scale the Variables

scaled_data <- scale(cust_subset)

head(scaled_data)


#----------------------------------------------------------------------

# STEP 4: Run K-Means with 3 clusters

set.seed(123)

kmeans_result <- kmeans(scaled_data, centers = 3, nstart = 25)


#view results

kmeans_result


#------------------------------------------------------------------------

# STEP 5: Add Cluster Assignments & Get Means by Cluster

# Add Cluster to original data

cust_clustered <- customer_data %>% 
  mutate(Cluster = as.factor(kmeans_result$cluster))


# Calculate mean values of original variables by cluster

cluster_summary <- cust_clustered %>% 
  group_by(Cluster) %>% 
  summarise(across(where(is.numeric),mean, na.rm = TRUE))

print(cluster_summary)

#----------------------------------------------------------------------

# Step 6: Plot WSS to Choose Optimal Clusters (Elbow Method)

wss <- map_dbl(1:10, function(k){
  kmeans(scaled_data, centers = k, nstart = 25)$tot.withinss
})

# Plot
elbow_df <- tibble(k = 1:10, WSS = wss)

ggplot(elbow_df, aes(x = k, y = WSS)) +
  geom_line() +
  geom_point() +
  ggtitle("Elbow Method: WSS vs. Number of Clusters") +
  theme_minimal()



# visualize the Clusters


fviz_cluster(kmeans_result, data = scaled_data, geom = "point", ellipse.type = "norm",
             palette = "jco", ggtheme = theme_minimal())

















