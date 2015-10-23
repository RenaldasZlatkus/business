require 'mandrill' 

def send_mail subject, name, message_body, email_address 
	message = {
		subject: subject,
		from_name: name,
		text: message_body,
		to: [{email: "renaldas.zlatkus@gmail.com", name: "Ren"},
			{email: "maiberger1@gmail.com", name: "Mai"},
			{email: email_address, name: name}
		],
		from_email: email_address
	}

	sending = Mandrill::API.new.messages.send message
	puts sending
end