visitor
visitEssRefuelling: anEssRefuelling
	xmlWriter tag: #refuelling with: [ 
		xmlWriter
			tag: #date with: anEssRefuelling date mmddyyyy;
			tag: #volume with: anEssRefuelling volume asString;
			tag: #cost with: anEssRefuelling cost asString.
		anEssRefuelling km ifNotNil: [ 
			xmlWriter tag: #km with: anEssRefuelling km asString ] ]