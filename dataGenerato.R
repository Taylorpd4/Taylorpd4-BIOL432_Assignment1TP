# Load necessary library
library(tibble)

# Define species names and observer names
species_names <- c("Urusus americanus
", "Formicidae", "Hippopotamus amphibius
", "Equus caballus", "Corvus splendens")
observer_names <- c("NithilaS", "GayaS", "MaryT")

# Generate vectors of random data
set.seed(123) # Set seed for reproducibility
species <- sample(species_names, 100, replace = TRUE)
limb_width <- rnorm(100, mean = 5, sd = 1) # Normally distributed, mean=5 cm, sd=1 cm
limb_width <- pmax(limb_width, 0.1) # Ensure no values are zero or negative

limb_length <- rnorm(100, mean = 30, sd = 5) # Normally distributed, mean=30 cm, sd=5 cm
limb_length <- pmax(limb_length, 1) # Ensure no values are zero or negative

observer <- sample(observer_names, 100, replace = TRUE)

# Combine into a data frame
data <- tibble(Species = species, 
               Limb_Width = limb_width, 
               Limb_Length = limb_length, 
               Observer = observer)

# Export to CSV
write.csv(data, "measurements.csv", row.names = FALSE)

# Print message
cat("Data has been generated and saved to measurements.csv\n")
