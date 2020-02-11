# modeltoolbox

This package contains support or convenience functions for modelling in R. Since the functions for this package originated from taking functions from a diverse range of modelling tasks/projects, these functions are not specific to particular types of models.

---

### Installation

modeltoolbox is not released on CRAN (yet). 
You can install the latest development version from GitHub with:

```
install.packages("devtools")
devtools::install_github("martinctc/modeltoolbox")
```
---

### Example

The `run_hclust()` function allows you to run hierarchical clustering straight from a tibble:
```
library(modeltoolbox)
library(tidyverse)

iris %>%
  select(-Species) %>%
  run_hclust(method = "complete", dmeth = "euclidean")
```

The function then returns a `hclust` object:
```
Call:
hclust(d = dist(x, method = dmeth), method = method)

Cluster method   : complete 
Distance         : euclidean 
Number of objects: 150 
```
---
This package is currently still under development, so it does come with a health warning: if you do wish to use them - have a check and run through the examples before assimilating them into your analysis. 

---
### Other packages

Also check out my [website](https://martinctc.github.io) for my other work and packages.
