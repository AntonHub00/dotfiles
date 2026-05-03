return {
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					"\\w*[Cc]lassName\\s*=\\s*[\"']([^\"']*)[\"']",
					"\\w*[Cc]lassName\\s*=\\s*{`([^`]*)`}",
				},
			},
		},
	},
}
