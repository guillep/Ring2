*Ring2-Compatibility
asRGDefinition

	| model env |
	
	model := (RGTrait named: self name).
	env := model environment.
	model 	superclass: (env ensureClassNamed: #Trait).
		
	self tags do: [ :aTag | model tagWith: aTag ].
	
	"TODO"

	^ model