# Stocks

These demos showcase different components of RStudio Connect. To view the final results, visit [RStudio Solutions Engineering](http://colorado.rstudio.com/rsc) and filter by the tags: Finance > Stocks > Portfolio.

Each folder contains a piece of R content. More details on each are below. There are also two SQLite databases with sample data (`./stock.db` and `./portfolio.db`) to make the repository and resources somewhat encapsulated from external dependencies.

### Stocks Report

***

* The [`report-stock`](https://colorado.rstudio.com/rsc/stocks-report/) [[login]](https://colorado.rstudio.com/rsc/connect/#/apps/1904/access/2066) folder shows a quick summary of a specific stock ticker symbol. The R Markdown report is parameterized, making it easy to schedule different versions of the report in RStudio Connect. The report also generates an email that includes a custom subject line, embeds a plot and table in the body of the email, and attaches a summary of the data in a csv file. RStudio Connect stores the history of the report and makes it easy to compare versions of the report over time.

### Stocks Portfolio

***

- The [`etl`](https://colorado.rstudio.com/rsc/stocks-porfolio-etl/) [[login]](https://colorado.rstudio.com/rsc/connect/#/apps/1905/access/2070) folder extends the use of RStudio Connect's job scheduler to an ETL task that updates a database. The ETL document provides a quick visualization to validate the model over time and RStudio Connect sends an email if the ETL task fails.

- The [`shiny-app`](https://colorado.rstudio.com/rsc/stocks-porfolio-app/) [[login]](https://colorado.rstudio.com/rsc/connect/#/apps/1275/access) folder has a R Markdown flexdashboard that uses shiny to allow users to explore portfolio returns based on different tolerances for risk.
  
- The [`api`](https://colorado.rstudio.com/rsc/connect/#/apps/1907/access) [[login]](https://colorado.rstudio.com/rsc/connect/#/apps/1907/access) folder surfaces a function that computes the volatiltiy of a stock price as a RESTful API. RStudio Connect automatically scales the number of R processes based on the volume of incoming API requests. RStudio Connect also contains a record of deployments, making it easy to roll back to a prior version of the API.

- The [`report-portfolio`](https://colorado.rstudio.com/rsc/stocks-portfolio-report/) [[login]](https://colorado.rstudio.com/rsc/connect/#/apps/1903/access/2065) folder contains a parameterized R Markdown report that can be used to do batch exploration of the same portfolio returns explored in the Shiny application above. The report generates a customized email for remote review by stakeholders and RStudio Connect stores the report history for review over time.

