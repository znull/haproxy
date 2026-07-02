core.register_service("b64dec", "http", function(applet)
	local input = applet.headers["input"][0]
	local decoded = core.b64dec(input)
	applet:add_header("decoded", decoded or "(nil)")
	applet:set_status(200)
	applet:start_response()
	applet:send("")
end)
