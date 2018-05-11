// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
//= require chosen-jquery
//= require scaffold
//= require select2


function formSubmit() {
            var confirm_message = confirm("Files selected for import are \n Zip File: "+document.getElementById("zip_file_import").value +"\n Manifest File: "+document.getElementById("manifest_file_import").value+" \nDo you want to proceed?");
            if (confirm_message==false) {
              return false;
            }
            else  {
            document.getElementById("import_form").submit();
            document.body.style.cursor = "wait";
            }
        }
    }
