// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

global.toastr = require("toastr")

import "../stylesheets/application"
import "chartkick/chart.js"

var FusionCharts = require("src/fusioncharts/fusioncharts");

// Require charts from fusioncharts
var Charts = require("src/fusioncharts/fusioncharts.charts");

// Require export module from fusioncharts
var ExcelExport = require("src/fusioncharts/fusioncharts.excelexport");

// Require theme from fusioncharts
var FusionTheme = require("src/fusioncharts/themes/fusioncharts.theme.fusion");

// Add charts and themes and export module as dependency
Charts(FusionCharts);
FusionTheme(FusionCharts);
ExcelExport(FusionCharts);