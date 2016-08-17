{extends "designs/site.tpl"}

{block title}{_ 'Events'} &mdash; {$dwoo.parent}{/block}

{block content}

{block content}
    <header class="page-header">
        <div class="btn-toolbar pull-right">
            {if $.User}
                <form action="/events/create">
                    <button class="btn btn-success" type="submit">{glyph "plus"}&nbsp;{_ "Add Event&hellip;"}</button>
                </form>
            {/if}
        </div>
        <h1>{_ "Events"} <span class="badge">{$total|number_format}</span></h1>
    </header>

    <div class="row">
        <div class="col-sm-4 col-md-3">
            [Event Filters]
        </div>
        <div class="col-sm-8 col-md-9">
            {foreach item=Event from=$data}
                <article class="post panel panel-default">
                    <div class="panel-body">
                        <h2 class="post-title">
                            <a name="{$Event->Handle}" href="{$Event->getURL()}">{$Event->Title|escape}</a>
                        </h2>
                        {if $Event->Description}
                            <div class="well">
                                <div class="markdown event-description">{$Event->Description|truncate:600|escape|markdown}</div>
                            </div>
                        {/if}
                    </div>
                </article>
            {foreachelse}
                <em>No events were found, try creating one{if count($conditions)} or <a href="?">browse without any filters</a>{/if}.</em>
            {/foreach}
        </div>
    </div>
{/block}

{/block}