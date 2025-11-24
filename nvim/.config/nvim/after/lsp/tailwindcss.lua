return {
	settings = {
		tailwindCSS = {
			experimental = {
				-- classRegex = { 'class="([^"]*)"', 'className="([^"]*)"' },
				classRegex = { "\\w*[Cc]lassName\\s*=\\s*[\"']([^\"']*)[\"']" },
			},
		},
	},
}
