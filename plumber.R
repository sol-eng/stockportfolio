library(tidyquant)
library(tidyverse)

#* @get /volatility
#* @param ticker:character ticker symbol
#* @response 200 Returns volatility for ticker
#* @response 500 Bad ticker
#* @response default Returns volatility for ticker
function(ticker){
  price <- tq_get(ticker, from = "2010-01-01") %>% 
    select(date, adjusted) %>% 
    mutate(returns = (log(adjusted) - log(lag(adjusted)))) %>%
    na.omit() %>% 
    summarize(volatility = var(returns))
  
  price$volatility
}
