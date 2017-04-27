refridgerator = {
	freezer: {
		temperature: 30,
		size: "small",
		items: [
			"peas",
			"ice tray",
			"pizza"
		]
	},

	main_compartment: {
		temperature: 50,
		size: "large",
		items: [
			"milk",
			"eggs",
			"orange juice",
			"ham"
		]
	}
}


#items in the freezer
p refridgerator[:freezer][:items]

#milk in the main_compartment
p refridgerator[:main_compartment][:items][0]