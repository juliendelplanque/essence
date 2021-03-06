accessing - computed
costPerYear
	| costPerYear |
	costPerYear := Dictionary new.
	(self allRefuellings groupedBy: [ :r | r date year ]) keysAndValuesDo: [ :key :value |
		costPerYear
			at: key
			put: (value
					inject: 0
					into: [ :subTotal :current |
						subTotal + current cost ]) ].
	^ costPerYear