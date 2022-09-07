
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require select2
//= require_tree 


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap' //vai importar o bootstrap inteiro


$(document).ready(function() {
    $( "#q_nome_eq" ).select2();
 });