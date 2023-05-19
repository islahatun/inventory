var _pathname = window.location.pathname; // Returns path only (/path/example.html)
var _url = window.location.href; // Returns full URL (https://example.com/path/example.html)
var _origin = window.location.origin; // Returns base URL (https://example.com)


function initSelectRowDataTables(target, table) {

	return $(target + ' tbody').off().on('click', 'tr', function () {
		if ($(this).hasClass('info')) {
			$(this).removeClass('info');
		} else {

			table.$('tr.info').removeClass('info');
			$(this).addClass('info');
		}
	});

}

function getSelectedRowDataTables(table) {
	return table.cell('.info', 0).index();
}
