# Simple R scrip to create html doc 
library(stringr)
setwd("C:/Users/jtelmon/Desktop/Site16072019/www/photos")

path <- getwd()


file_full_names <- dir(path, recursive = T, pattern = ".jpg|.JPG")
# Format : dossier / nom . extension

lst_str <-  str_split(file_full_names, "/")

html <- ""
for (i in 1:length(file_full_names)) {
  html <- str_c(html,
                '<a href="photos/',file_full_names[i],'" title="',lst_str[[i]][[1]],'">',"\n",
                '  <img src="photos/',lst_str[[i]][[1]], '/tn_',lst_str[[i]][[2]], '" alt="',lst_str[[i]][[2]],'">',"\n",
                '</a>\n')
}
cat(html)


#Element 1 
str_c(str_split(file_full_names, "/")[[1]][1], "de")

