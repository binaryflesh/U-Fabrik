﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIconSets
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIconSets guid: (IID fromString: '{0002449C-0000-0000-C000-000000000046}')!
ExcelIconSets comment: '<ExcelIconSets> is a wrapper class generated for the dispatch interface ''Excel.IconSets'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002449C-0000-0000-C000-000000000046), 
	helpcontext(0x00020132)
]
dispinterface IconSets {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		IDispatch* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
};
'!
!ExcelIconSets categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelIconSets methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver.
		IDispatch* _Default"

	^IDispatch attachInterface: (self getPropertyId: 0 item: index)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> value of the 'Item' property of the receiver.
		IDispatch* Item"

	^IDispatch attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelIconSets categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIconSets categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIconSets categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIconSets categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIconSets categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIconSets categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIconSets categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIconSets class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIconSets initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIconSets class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

