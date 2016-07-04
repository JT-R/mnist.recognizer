library(data.table)

train <- fread("../train.csv")
test <- fread("../test.csv")

generate_digits_images <- function(dataset){
  for(i in 1:nrow(dataset)){
    given_image <- as.integer(dataset[i, -1, with = FALSE])
    given_image <- matrix(given_image, 28, 28)

    png(filename = paste0("../train_images/",i,".png"))
    image(given_image, axes = FALSE, col = grey(seq(1, 0, length = 256)))
    dev.off()
  }
}

generate_digits_images(dataset = train)
