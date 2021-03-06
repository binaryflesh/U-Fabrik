﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotItems guid: (IID fromString: '{00020877-0001-0000-C000-000000000046}')!
ExcelIPivotItems comment: '<ExcelIPivotItems> is a wrapper class for the COM interface ''Excel.IPivotItems'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020877-0001-0000-C000-000000000046), 
	helpcontext(0x00020037), 
	hidden
]
interface IPivotItems : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]PivotField** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIPivotItems categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotItems methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	| answer |
	answer := IUnknown newPointer.
	self _NewEnum: answer.
	^answer asObject
!

_NewEnum: rhs
	"Private - Invoke the _NewEnum() method of the COM object.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

add: name
	"Invoke the Add() method of the COM object."

	^self Add: name
!

Add: name
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name);"

	<virtual stdcall: hresult 11 bstr>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 10 ExcelPivotField**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 13 variant IDispatch**>
	^self invalidCall!

parent
	"Answer the <ExcelPivotField> value of the 'Parent' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIPivotItems categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIPivotItems categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIPivotItems categoriesFor: #Add:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPivotItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotItems categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPivotItems categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIPivotItems categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IPivotItems!private! !
!ExcelIPivotItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIPivotItems class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotItems'
		ExcelIPivotItems defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #Add:
			argumentTypes: 'bstr';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotItems class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

