behavior
superclassFor: anRGBehavior

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRing2MinimalDefinitionIn: anRGBehavior environment ].
	^ def