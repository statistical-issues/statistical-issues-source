
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
