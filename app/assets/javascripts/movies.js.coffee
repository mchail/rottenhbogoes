# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	# $('#movie_table').dataTable({
	# 	"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
	# 	"sPaginationType": "bootstrap"
	# })
	table = $('#movie_table').dataTable(
		"aaSorting": [[ 7, "desc" ]]
		"bPaginate": false
	)

	new FixedHeader(table)
