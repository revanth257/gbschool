/**
 * 
 */

$(document).ready(function() {
	// Form submission handler
	$('#contactForm').on('submit', function(event) {
		event.preventDefault();

		// Form validations
		const name = $('#name').val().trim();
		const phone = $('#phone').val().trim();
		const email = $('#email').val().trim();
		const description = $('#description').val().trim();

		if (!name) {
			alert('Please enter your name.');
			return;
		}

		if (!phone || !/^\d{10}$/.test(phone)) {
			alert('Please enter a valid 10-digit phone number.');
			return;
		}

		// Simulate API hit
		const payload = { name, phone, email, description };
		console.log('Sending data to API:', payload);

		// Mock API response
		$.ajax({
			url: '/api/contact', // Replace with your actual API endpoint
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(payload),
			success: function(response) {
				alert('Your message has been sent successfully!');
				$('#contactForm')[0].reset();
			},
			error: function() {
				alert('Failed to send your message. Please try again later.');
			},
		});
	});
});
