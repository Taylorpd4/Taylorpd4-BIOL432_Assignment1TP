# Load necessary libraries
library(dplyr)

# Read the CSV file
# Ensure the working directory is set to where the measurements.csv file is located
measurements <- read.csv("measurements.csv")

# Calculate limb volume and add it as a new column
# Assumption: Limb volume (Volume) is estimated using the formula for a cylindrical shape:
# Volume = pi * (Radius^2) * Length, where Radius = Limb_Width / 2
measurements <- measurements %>%
  mutate(Volume = pi * (Limb_Width / 2)^2 * Limb_Length)

# Overwrite the original measurements.csv file with the new data
write.csv(measurements, "measurements.csv", row.names = FALSE)

# Print message
cat("Volume column has been added to measurements.csv\n")
