﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAddIns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAddIns guid: (IID fromString: '{00020858-0001-0000-C000-000000000046}')!
ExcelIAddIns comment: '<ExcelIAddIns> is a wrapper class for the COM interface ''Excel.IAddIns'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020858-0001-0000-C000-000000000046), 
	helpcontext(0x00020018), 
	hidden
]
interface IAddIns : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Filename,
		[in, optional]VARIANT CopyFile,
		[out, retval]AddIn** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]AddIn** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]AddIn** RHS);
};
'!
!ExcelIAddIns categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAddIns methodsFor!

_default: index
	"Answer the <ExcelAddIn> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelAddIn newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: filename
	"Answer the <ExcelAddIn> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: filename
		 copyFile: VARIANT unspecified!

add: filename copyFile: copyFile
	"Answer the <ExcelAddIn> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelAddIn newPointer.
	self
		Add: filename
		copyFile: copyFile asVariant
		rhs: answer.
	^answer asObject
!

Add: filename copyFile: copyFile rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Filename,
			[in, optional]VARIANT CopyFile,
			[out, retval]AddIn** RHS);"

	<virtual stdcall: hresult 11 bstr variant ExcelAddIn**>
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

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]AddIn** RHS);"

	<virtual stdcall: hresult 15 variant ExcelAddIn**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

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

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]AddIn** RHS);"

	<virtual stdcall: hresult 13 variant ExcelAddIn**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelAddIn> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelAddIn newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIAddIns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIAddIns categoriesFor: #add:copyFile:!**auto generated**!methods!public! !
!ExcelIAddIns categoriesFor: #Add:copyFile:rhs:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAddIns!private! !
!ExcelIAddIns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIAddIns categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIAddIns categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIAddIns class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAddIns'
		ExcelIAddIns defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:copyFile:rhs:
			argumentTypes: 'bstr variant ExcelAddIn**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelAddIn**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelAddIn**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAddIns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAddIns class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAddIns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

