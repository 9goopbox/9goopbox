/**
 * 
 */

$(function() {
	$('.button-checkbox')
			.each(
					function() {

						// Settings
						var $widget = $(this), $button = $widget.find('button'), $checkbox = $widget
								.find('input:checkbox'), color = $button
								.data('color'), settings = {
							on : {
								icon : 'glyphicon glyphicon-check'
							},
							off : {
								icon : 'glyphicon glyphicon-unchecked'
							}
						};

						// Event Handlers
						$button.on('click',
								function() {
									$checkbox.prop('checked', !$checkbox
											.is(':checked'));
									$checkbox.triggerHandler('change');
									updateDisplay();
								});
						$checkbox.on('change', function() {
							updateDisplay();
						});

						// Actions
						function updateDisplay() {
							var isChecked = $checkbox.is(':checked');

							// Set the button's state
							$button.data('state', (isChecked) ? "on" : "off");

							// Set the button's icon
							$button
									.find('.state-icon')
									.removeClass()
									.addClass(
											'state-icon '
													+ settings[$button
															.data('state')].icon);

							// Update the button's color
							if (isChecked) {
								$button.removeClass('btn-default').addClass(
										'btn-' + color + ' active');
							} else {
								$button.removeClass('btn-' + color + ' active')
										.addClass('btn-default');
							}
						}

						// Initialization
						function init() {

							updateDisplay();

							// Inject the icon if applicable
							if ($button.find('.state-icon').length == 0) {
								$button.prepend('<i class="state-icon '
										+ settings[$button.data('state')].icon
										+ '"></i>');
							}
						}
						init();
					});

	$('.btn-default').click(
			function(event) {
				var href = $(this).attr('href');
				var width = $(this).attr('data-width');
				var height = $(this).attr('data-height');

				window.open(href, 'btn-default', 'width=' + width + ',height='
						+ height + '');

				event.preventDefault();
			});

	// Make accordion feature of jQuery-UI
	$("#accordion").accordion({
		collapsible : true,
		active : false
	});
});

function openDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			document.getElementById('post1').value = data.postcode1;
			document.getElementById('post2').value = data.postcode2;
			document.getElementById('addr1').value = data.address;
			document.getElementById('addr2').focus();
		}
	}).open();
}
