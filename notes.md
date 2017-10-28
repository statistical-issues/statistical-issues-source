
- home: content/index.md
- left panel: layouts/partials/drawer.html
- navigation inside left panel: layouts/partials/nav-main.html

```html
{{ range ($.Scratch.Get "menu") }}
{{ $.Scratch.Set "currentMenuEntry" . }}
<li>
  {{ if .HasChildren }}
    <span class="section">{{ .Name | title }}</span>
    <ul>
      {{ range .Children }}
        {{ $.Scratch.Set "currentMenuEntry" . }}
        {{ partial "nav_link" $currentNode }}
      {{ end }}
    </ul>
  {{ else }}
    {{ partial "nav_link" $currentNode }}
  {{ end }}
</li>
{{ end }}
```


<li>
    <span class="section">Statistics</span>
    <ul>
      <li>
        <span class="section">Probability</span>
      </li>
      <li>
        <span class="section">Distributions</span>
          <li>
            <a class="current" title="blabla" href="https://www.google.co.uk/">
                    Random Variables
            </a>
            <ul id="scrollspy">
            </ul>
          </li>
    </ul>
</li>
<li>
    <span class="section">Modelling</span>
</li>
<li>
    <span class="section">Computing</span>
</li>






```{r setup, include=FALSE}
knitr::opts_chunk$set(collapse = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

You can embed an R code chunk like this:

```{r cars}
summary(cars)
fit <- lm(dist ~ speed, data = cars)
fit
```

## Including Plots

You can also embed plots. See Figure \@ref(fig:pie) for example:

```{r pie, fig.cap='A fancy pie chart.', tidy=FALSE}
par(mar = c(0, 1, 0, 1))
pie(
  c(280, 60, 20),
  c('Sky', 'Sunny side of pyramid', 'Shady side of pyramid'),
  col = c('#0292D8', '#F7EA39', '#C4B632'),
  init.angle = -50, border = NA
)
```






