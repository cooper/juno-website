<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>{{.VisibleTitle}}</title>
    <link rel="stylesheet" type="text/css" href="/static/quiki.css" />
    <link rel="stylesheet" type="text/css" href="{{.StaticRoot}}/style.css" />
    {{with .PageCSS}}
        <style type="text/css">
        {{.}}
        </style>
    {{end}}
    {{range .Scripts}}
        <script type="text/javascript" src="{{.}}"></script>
    {{end}}
</head>

<body>
<div id="header-bg"></div>
<div id="container">

    <div id="header">
        <ul id="navigation">
            {{range .Navigation}}
                <li><a href="{{.Link}}">{{.Display}}</a></li>
            {{end}}
        </ul>
        <a href="{{.WikiRoot}}/">
            {{if eq .Title "about"}}
		<h1>juno-ircd</h1>
            {{else}}
		{{.Logo}}
            {{end}}
        </a>
    </div>

    <div id="content">
