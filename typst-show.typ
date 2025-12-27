#show: article.with(
  $if(title)$
    title: "$title$",
  $endif$
  $if(date-modified)$
    date: "$date-modified$",
  $endif$
  $if(author)$
    author: "$author$",
  $endif$
  $if(params.mypar)$
    mypar: "$params.mypar$",
  $endif$
)