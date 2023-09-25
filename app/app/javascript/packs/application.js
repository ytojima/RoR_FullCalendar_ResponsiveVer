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

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";

// fullcalendar
import * as Calendar from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import "@fullcalendar/core/locales/ja";
import listPlugin from "@fullcalendar/list";

window.FullCalendar = Calendar;
window.dayGridPlugin = dayGridPlugin;
window.listPlugin = listPlugin;

import "./calendar"