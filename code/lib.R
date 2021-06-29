read_projectdata <- function(path){
    readr::read_csv(here::here(path),
                     locale = locale(decimal_mark = "."),
                     col_types = cols(
                         rodada = col_integer(),
                         algoritmo = col_character(),
                         RMSE = col_double()
                         )) %>% 
        janitor::clean_names()
}