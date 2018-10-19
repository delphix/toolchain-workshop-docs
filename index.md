---
title: The Delphix Test Data Catalog Demo
series: "Intro"
weight: 1
keywords: tdc
sidebar: tdc_sidebar
toc: false
permalink: index.html
---
<div class="row">
    <div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Overview</h2>
        <p>Welcome to the Delphix Toolchain Workshop! The purpose of this exercise is to demonstrate how Delphix works in a typical SDLC toolchain. This exercise is broken into two acts. The first act focuses on QA/Testing and jumps right into submitting and testing application code. The second act directs our attention to leveraging Delphix to triage and remediate bugs.</p>
    </div>
    <!-- Act Tabs -->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Demo Acts</h2>
        </div>
        <div class="col-lg-12">

            <ul id="myTab" class="nav nav-tabs nav-justified">
                <li class="active"><a href="#act-i" data-toggle="tab"><i class="fa fa-tree"></i> Act I</a>
                </li>
                <li class=""><a href="#act-ii" data-toggle="tab"><i class="fa fa-car"></i> Act II</a>
                </li>
                {% comment %} <li class=""><a href="#act-iii" data-toggle="tab"><i class="fa fa-support"></i> Act III</a>
                </li>
                <li class=""><a href="#act-iv" data-toggle="tab"><i class="fa fa-database"></i> Act IV</a>
                </li> {% endcomment %}
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="act-i">
                    <h4>Act I - Software Development</h4>
                    <p>In Act I, we will be simulating adding new features to an application. In this case, we will add the ability to record and display employees’ Twitter handles in our application.</p>
                    {% comment %} <p>This simple feature will require changes in the database schema in order to store the information, and changes in the application code to display and enter the new information.</p>
                    <p>We will assume two different personas during these labs: Dev and QA. The scene name will indicate the role we are assuming for that scene.</p>
                    <p>For this lab, all necessary database and application-level changes have been staged in our environment and simply await for us to commit the changes.</p>
                    <p>Committing the changes will initiate an automated deploy job so that we can validate the changes in our Dev environment</p>
                    <p>Once we have validated our changes, we will push our code to the upstream git repository.</p>
                    <p>Pushing the changes initiates an automated testing sequence that will run in our QA environment against our code</p>
                    <p>The automated test will fail, which results in a auto-generated defect and data pod bookmark</p> {% endcomment %}
                </div>
                <div class="tab-pane fade" id="act-ii">
                    <h4>Act II - BreakFix</h4>
                    <p>In Act II, we will be simulating resolving bugs found in our application. In this case, a recent code change has introduced a bug that causes all 1 million of our employees to be purged from the database.</p>
                    {% comment %} <p>We will leverage Delphix to provide us the data from the “broken” environment where the bug was found so that we can validate and triage.</p>
                    <p>Once we diagnose and remdiate the issue, we will leverage Delphix to restore the data of our development environment to the original state so that we can test our bug fix against the data before pushing our code upstream for automated testing again.</p> {% endcomment %}
                </div>
            </div>

        </div>
    </div>
    <div class="seriesContext">
    <a>
        {% assign pages = site.pages | sort:"weight"  %}
        {% for pg in pages %}
        {% if pg.series == page.series %}
        {% if pg.weight > page.weight %}
        <a href="{{pg.url | remove: '/'}}"><button type="button" class="btn btn-primary">Next: {{pg.title}}</button></a>
        {% break %}
        {% endif %}
        {% endif %}
        {% endfor %}
    </a>
</div>

    <!-- Service List -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    {% comment %} <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Service List</h2>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-tree fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service One</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-car fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Two</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-support fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Three</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-database fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Four</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-bomb fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Five</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-bank fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Six</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-paper-plane fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Seven</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-space-shuttle fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Eight</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                    <span class="fa-stack fa-2x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-recycle fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Service Nine</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
                </div>
            </div>
        </div>
    </div> {% endcomment %}
