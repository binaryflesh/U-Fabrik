﻿"Filed out from Dolphin Smalltalk 7"!

UMLImplementation subclass: #UMLParsedImplementation
	instanceVariableNames: 'parsedCode hideShowMessage hasCompilationFailure'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLParsedImplementation guid: (GUID fromString: '{c00212ad-f948-4123-8fb0-6de1c15d4068}')!
UMLParsedImplementation comment: ''!
!UMLParsedImplementation categoriesForClass!Unclassified! !
!UMLParsedImplementation methodsFor!

allMessageNodes
	| allNodes trackableNodes nodeTree |

	nodeTree := LookupTable new.
	allNodes := self allNodes select: [:each | each isMessage].

	trackableNodes := allNodes reject: [:each | self notTrackableSelectors includes: each selector].

	trackableNodes do: [:each | nodeTree at: each put: (MessageNodeCollector messagesSentBy: each)].

	^trackableNodes!

allNodes
	parsedCode ifNil: [^OrderedCollection new].

	^parsedCode allNodes!

argumentAt: index

	^self argumentNames at: index ifAbsent: ['arg']!

argumentNames
	^parsedCode argumentNames!

arguments

	^parsedCode arguments!

asTreeModelUpto: level count: count
	| treeModel sentMsgs allUMLImplementations |

	sentMsgs := OrderedCollection new.
	treeModel := TreeModel withRoots: (OrderedCollection with: self).
	(level = count) ifTrue: [^treeModel].
	allUMLImplementations := self defaultVirtualMachine allUMLImplementations.
	self sentMessagesForTree do: [:eachMsg | sentMsgs addAll: (allUMLImplementations select: [:each | each name = eachMsg])].
	sentMsgs := sentMsgs reject: [:each | each isTrait].
	sentMsgs do: [:each | treeModel addTree: (each asTreeModelUpto: level count: (count + 1) ) asChildOf: self].

	^treeModel!

classNameForImplementationList
	^self methodClass classNameForImplementationList!

fileOutAsXmlTo: aStream

	self fileOutWithAsXmlTo: aStream withCategories: self getCategories !

fileOutWithAllCategoriesAsXmlTo: aStream

	self fileOutWithAsXmlTo: aStream withCategories: self getAllCategoriesButVirtual !

fileOutWithAsXmlTo: aStream withCategories: anOrderedCollection

	aStream nextPutAll: '<Source><!![CDATA[', parsedCode source, ']]></Source>'.

	aStream nextPutAll: '<Categories>'.
	anOrderedCollection do: [:eachImpCat | 
		aStream nextPutAll: '<CategoryName>', eachImpCat name, '</CategoryName>'.
	].
	aStream nextPutAll: '</Categories>'.

	aStream nextPutAll: '<HideShowMessage>', (hideShowMessage ifNil: [''] ifNotNil: [:value | value]) ,'</HideShowMessage>'.
	
	aStream nextPutAll: '<Comments><!![CDATA[', comments , ']]></Comments>'.!

getAllCategoriesButVirtual

	^(methodClass getAllCategories reject: [:each | each isVirtual]) 
		select: [:each | each implementationsAsSortedCollection includes: self]


!

getCategories

	^(methodClass getAllCategories reject: [:each | each isVirtual or: [each isGUICategory]]) 
		select: [:each | each implementationsAsSortedCollection includes: self]


!

getImplementationAndGUICategories

	^(methodClass getAllCategories reject: [:each | each isVirtual]) 
		select: [:each | each implementationsAsSortedCollection includes: self]


!

getNodeAt: index
	"The receiver answer anUMLSequence node at <index> order "

	^parsedCode getNodeAt: index!

getNodes

	^parsedCode nodes!

hasArgumentNamed: aString 

	^parsedCode hasArgumentNamed: aString !

hasCompilationFailure
	^hasCompilationFailure!

hasCompilationFailure: anObject
	hasCompilationFailure := anObject!

hasInstanceVariableSendingAddRemoveIn: anUMLClass 
	"It is forbidden to send #add: or #remove: to an instance variable, because it can break the UML Model, adding anObject of class A to a collection that holds objects of class B. This should be done by: self add: XXX. Where a Trait is activated an perform the add operation using the UML Model."
	| messages allInstVar |

	messages := (MessageNodeCollector messagesSentBy: parsedCode) reject: [:each | each receiver isMessage].
	allInstVar := anUMLClass allAttributes collect: [:each | each getName asString].

	^(messages select: [:eachStMessageNode | 
		(allInstVar includes: eachStMessageNode receiver name) and: 
			[(eachStMessageNode selector = #add:) or: [eachStMessageNode selector = #remove:] ] ]) notEmpty

!

hasReferencesToClassName: className

	^parsedCode references: className

!

hasReferenceTo: implementationName

	^self sentMessages includes: implementationName
!

hasShowHideMessage

	^hideShowMessage notNil!

hideShowMessage
	^hideShowMessage!

hideShowMessage: anObject
	hideShowMessage := anObject!

icon

	hasCompilationFailure ifFalse: [^self class icon].

	^Error icon!

initialize

	super initialize.

	hasCompilationFailure := false!

isPrimitiveCall
	"Answer whether or not the receiver is a primitive call (has special handling)"

	^parsedCode allNodes isEmpty 
		ifTrue: [false] 
		ifFalse: [parsedCode allNodes last isPrimitive]!

nodes

	(parsedCode tag notNil and: [parsedCode tag isPrimitive]) ifTrue: [^OrderedCollection with: parsedCode tag].

	^parsedCode nodes!

parsedCode
	^parsedCode!

parsedCode: aStMethodNode

	parsedCode := aStMethodNode.

	methodName := aStMethodNode selector!

printHideShowMessage
	hideShowMessage ifNil: [^''].

	^hideShowMessage!

printMessage
	parsedCode ifNil: [^''].

	^parsedCode printString!

printParsedCode
	^parsedCode printString!

printSourceOn: fileStream

	fileStream nextPutAll: '<className>';
		nextPutAll: self className;	
		nextPutAll: '</className>';
		nextPutAll: '<source><!![CDATA[';
		nextPutAll: self printMessage;
		nextPutAll: ']]></source>'.
	fileStream nextPutAll: '<categories>'.
	self getImplementationAndGUICategories do: [:each | fileStream nextPutAll: ('<categoryName>', each name, '</categoryName>')].
	fileStream nextPutAll: '</categories>'.
	fileStream nextPutAll: ('<isMeta>', self isMeta printString, '</isMeta>')!

printTreeName

	^methodClass name, '.', self methodName!

referencedClasses

	^self umlModel umlClasses select: [:each | self hasReferencesToClassName: each name ]!

referencedClassesIn: anUMLModel

	^anUMLModel umlClasses select: [:each | self hasReferencesToClassName: each name ]!

selectFirstHaltNode
	^self nodes detect: [:each | each isDebugCall] ifNone: [nil]!

sentMessages

	^parsedCode sentMessages!

sentMessagesForTree

	^self sentMessages reject: [:each | #(#add: #mutualAdd: #remove: #mutualRemove: #includes: #do: #select: #reject: #anySatisfy: #allSatisfy: #any:satisfy: #all:satisfy: #detect:ifNone: #isEmpty #notEmpty #isNil #notNil #ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue: #whileFalse #whileFalse: #whileTrue #whileTrue: #new #newInstance #basicNew #or #or: #and: #= #== #> #< #<= #>= #not #copyWithoutDuplicates #value #value: #valueWithArguments:) includes: each]!

temporaries

	"^parsedCode temporaries"

	^parsedCode temporaryVariables!

temporaryVariables

	^parsedCode temporaryVariables! !
!UMLParsedImplementation categoriesFor: #allMessageNodes!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #allNodes!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #argumentAt:!public! !
!UMLParsedImplementation categoriesFor: #argumentNames!public! !
!UMLParsedImplementation categoriesFor: #arguments!public! !
!UMLParsedImplementation categoriesFor: #asTreeModelUpto:count:!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #classNameForImplementationList!public! !
!UMLParsedImplementation categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLParsedImplementation categoriesFor: #fileOutWithAllCategoriesAsXmlTo:!binary filing!public! !
!UMLParsedImplementation categoriesFor: #fileOutWithAsXmlTo:withCategories:!binary filing!public! !
!UMLParsedImplementation categoriesFor: #getAllCategoriesButVirtual!public! !
!UMLParsedImplementation categoriesFor: #getCategories!public! !
!UMLParsedImplementation categoriesFor: #getImplementationAndGUICategories!public! !
!UMLParsedImplementation categoriesFor: #getNodeAt:!public! !
!UMLParsedImplementation categoriesFor: #getNodes!public! !
!UMLParsedImplementation categoriesFor: #hasArgumentNamed:!public! !
!UMLParsedImplementation categoriesFor: #hasCompilationFailure!accessing!private! !
!UMLParsedImplementation categoriesFor: #hasCompilationFailure:!accessing!private! !
!UMLParsedImplementation categoriesFor: #hasInstanceVariableSendingAddRemoveIn:!public! !
!UMLParsedImplementation categoriesFor: #hasReferencesToClassName:!public! !
!UMLParsedImplementation categoriesFor: #hasReferenceTo:!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #hasShowHideMessage!public! !
!UMLParsedImplementation categoriesFor: #hideShowMessage!accessing!private! !
!UMLParsedImplementation categoriesFor: #hideShowMessage:!accessing!private! !
!UMLParsedImplementation categoriesFor: #icon!public! !
!UMLParsedImplementation categoriesFor: #initialize!public! !
!UMLParsedImplementation categoriesFor: #isPrimitiveCall!public! !
!UMLParsedImplementation categoriesFor: #nodes!public! !
!UMLParsedImplementation categoriesFor: #parsedCode!accessing!private! !
!UMLParsedImplementation categoriesFor: #parsedCode:!accessing!public!uml compile! !
!UMLParsedImplementation categoriesFor: #printHideShowMessage!public! !
!UMLParsedImplementation categoriesFor: #printMessage!public! !
!UMLParsedImplementation categoriesFor: #printParsedCode!public! !
!UMLParsedImplementation categoriesFor: #printSourceOn:!public! !
!UMLParsedImplementation categoriesFor: #printTreeName!public! !
!UMLParsedImplementation categoriesFor: #referencedClasses!public! !
!UMLParsedImplementation categoriesFor: #referencedClassesIn:!public! !
!UMLParsedImplementation categoriesFor: #selectFirstHaltNode!public! !
!UMLParsedImplementation categoriesFor: #sentMessages!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #sentMessagesForTree!public!uml msg tracking! !
!UMLParsedImplementation categoriesFor: #temporaries!public! !
!UMLParsedImplementation categoriesFor: #temporaryVariables!public! !

!UMLParsedImplementation class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'parser2.png'.
	"
	^Icon fromFile: 'icons/implementation02.ico'!

newWithCode: stringCode
	"The receiver create a new instance of itself with code <stringCode>"

	^super new initialize
		parsedCode: (self umlCompiler parseMethod: stringCode);
		yourself! !
!UMLParsedImplementation class categoriesFor: #icon!constants!public! !
!UMLParsedImplementation class categoriesFor: #newWithCode:!public! !

