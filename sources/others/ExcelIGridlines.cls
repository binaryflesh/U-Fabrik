﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIGridlines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIGridlines guid: (IID fromString: '{000208C3-0001-0000-C000-000000000046}')!
ExcelIGridlines comment: '<ExcelIGridlines> is a wrapper class for the COM interface ''Excel.IGridlines'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208C3-0001-0000-C000-000000000046), 
	helpcontext(0x00020083), 
	hidden
]
interface IGridlines : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIGridlines categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIGridlines methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 13 ExcelBorder**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 15 ExcelChartFormat**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Select: answer.
	^answer asObject
!

Select: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall! !
!ExcelIGridlines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIGridlines categoriesFor: #Delete:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IGridlines!private! !
!ExcelIGridlines categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIGridlines categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIGridlines categoriesFor: #Select:!**auto generated**!COM Interfaces-IGridlines!private! !

!ExcelIGridlines class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IGridlines'
		ExcelIGridlines defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIGridlines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIGridlines class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIGridlines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

