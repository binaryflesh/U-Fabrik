﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelEditBoxes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelEditBoxes guid: (IID fromString: '{00020884-0000-0000-C000-000000000046}')!
ExcelEditBoxes comment: '<ExcelEditBoxes> is a wrapper class generated for the dispatch interface ''Excel.EditBoxes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020884-0000-0000-C000-000000000046), 
	helpcontext(0x00020044), 
	hidden
]
dispinterface EditBoxes {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00010003), hidden, restricted]
		void _Dummy3();
[id(0x0000025a), helpcontext(0x0001025a)]
		VARIANT BringToFront();
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x000000d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x00000235), helpcontext(0x00010235)]
		VARIANT Cut();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x0000040f), helpcontext(0x0001040f)]
		IDispatch* Duplicate();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x0001000c), hidden, restricted]
		void _Dummy12();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x0001000f), hidden, restricted]
		void _Dummy15();
[id(0x00000254), hidden, propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), hidden, propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x00000269), propget, helpcontext(0x00010269)]
		VARIANT Placement();
[id(0x00000269), propput, helpcontext(0x00010269)]
		void Placement(
			[in]VARIANT arg1);
[id(0x0000026a), propget, helpcontext(0x0001026a)]
		VARIANT_BOOL PrintObject();
[id(0x0000026a), propput, helpcontext(0x0001026a)]
		void PrintObject(
			[in]VARIANT_BOOL arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select(
			[in, optional]VARIANT Replace);
[id(0x0000025d), helpcontext(0x0001025d)]
		VARIANT SendToBack();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x00010016), hidden, restricted]
		void _Dummy22();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x0000026e), propget, helpcontext(0x0001026e)]
		long ZOrder();
[id(0x000005f8), propget, helpcontext(0x000105f8)]
		ShapeRange* ShapeRange();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x000001f9), helpcontext(0x000101f9)]
		VARIANT CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0x00000268), propget, helpcontext(0x00010268)]
		VARIANT_BOOL LockedText();
[id(0x00000268), propput, helpcontext(0x00010268)]
		void LockedText(
			[in]VARIANT_BOOL arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x0000039a), propget, helpcontext(0x0001039a)]
		VARIANT_BOOL DisplayVerticalScrollBar();
[id(0x0000039a), propput, helpcontext(0x0001039a)]
		void DisplayVerticalScrollBar(
			[in]VARIANT_BOOL arg1);
[id(0x00000356), propget, helpcontext(0x00010356)]
		long InputType();
[id(0x00000356), propput, helpcontext(0x00010356)]
		void InputType(
			[in]long arg1);
[id(0x00010022), hidden, restricted]
		void _Dummy34();
[id(0x00000357), propget, helpcontext(0x00010357)]
		VARIANT_BOOL MultiLine();
[id(0x00000357), propput, helpcontext(0x00010357)]
		void MultiLine(
			[in]VARIANT_BOOL arg1);
[id(0x0000048a), propget, helpcontext(0x0001048a)]
		VARIANT_BOOL PasswordEdit();
[id(0x0000048a), propput, helpcontext(0x0001048a)]
		void PasswordEdit(
			[in]VARIANT_BOOL arg1);
[id(0x000000b5), helpcontext(0x000100b5)]
		EditBox* Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x0000002e), helpcontext(0x0001002e)]
		GroupObject* Group();
[id(0x000000aa), helpcontext(0x000100aa)]
		VARIANT Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelEditBoxes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelEditBoxes methodsFor!

_dummy12
	"Invoke the _Dummy12() method of the COM object."

	(self invokeId: 65548)
!

_dummy15
	"Invoke the _Dummy15() method of the COM object."

	(self invokeId: 65551)
!

_dummy22
	"Invoke the _Dummy22() method of the COM object."

	(self invokeId: 65558)
!

_dummy3
	"Invoke the _Dummy3() method of the COM object."

	(self invokeId: 65539)
!

_dummy34
	"Invoke the _Dummy34() method of the COM object."

	(self invokeId: 65570)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: left top: top width: width height: height
	"Answer the <ExcelEditBox> result of invoking the Add() method of the COM object."

	^ExcelEditBox attachInterface: (self invokeId: 181 withArguments:
			((Array new: 4)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: 602)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^ExcelCharacters attachInterface: (self getPropertyId: 603
		 withArguments: ((Array new: 2)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				yourself)
		)
!

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	^(self invokeId: 505 withArguments:
			((Array new: 4)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				yourself))
!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551)
!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	^(self invokeId: 213 with: appearance with: format)
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

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	^(self invokeId: 565)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver.
		VARIANT_BOOL DisplayVerticalScrollBar"

	^(self getPropertyId: 922)
!

displayVerticalScrollBar: arg1
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument.
		void DisplayVerticalScrollBar"

	self setPropertyId: 922 value: arg1
!

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1039)
!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: 600)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: 600 value: arg1
!

group
	"Answer the <ExcelGroupObject> result of invoking the Group() method of the COM object."

	^ExcelGroupObject attachInterface: (self invokeId: 46)
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

inputType
	"Answer the <sdword> value of the 'InputType' property of the receiver.
		long InputType"

	^(self getPropertyId: 854)
!

inputType: arg1
	"Set the 'InputType' property of the receiver to the <sdword> value of the argument.
		void InputType"

	self setPropertyId: 854 value: arg1
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <VARIANT> result of invoking the Item() method of the COM object."

	^(self invokeId: 170 with: index)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

lockedText
	"Answer the <varbool> value of the 'LockedText' property of the receiver.
		VARIANT_BOOL LockedText"

	^(self getPropertyId: 616)
!

lockedText: arg1
	"Set the 'LockedText' property of the receiver to the <varbool> value of the argument.
		void LockedText"

	self setPropertyId: 616 value: arg1
!

multiLine
	"Answer the <varbool> value of the 'MultiLine' property of the receiver.
		VARIANT_BOOL MultiLine"

	^(self getPropertyId: 855)
!

multiLine: arg1
	"Set the 'MultiLine' property of the receiver to the <varbool> value of the argument.
		void MultiLine"

	self setPropertyId: 855 value: arg1
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver.
		BSTR OnAction"

	^(self getPropertyId: 596)
!

onAction: arg1
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument.
		void OnAction"

	self setPropertyId: 596 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

passwordEdit
	"Answer the <varbool> value of the 'PasswordEdit' property of the receiver.
		VARIANT_BOOL PasswordEdit"

	^(self getPropertyId: 1162)
!

passwordEdit: arg1
	"Set the 'PasswordEdit' property of the receiver to the <varbool> value of the argument.
		void PasswordEdit"

	self setPropertyId: 1162 value: arg1
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver.
		VARIANT Placement"

	^(self getPropertyId: 617)
!

placement: arg1
	"Set the 'Placement' property of the receiver to the <variant> value of the argument.
		void Placement"

	self setPropertyId: 617 value: arg1
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver.
		VARIANT_BOOL PrintObject"

	^(self getPropertyId: 618)
!

printObject: arg1
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument.
		void PrintObject"

	self setPropertyId: 618 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235 with: replace)
!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	^(self invokeId: 605)
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver.
		ShapeRange* ShapeRange"

	^ExcelShapeRange attachInterface: (self getPropertyId: 1528)
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver.
		long ZOrder"

	^(self getPropertyId: 622)
! !
!ExcelEditBoxes categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #_dummy34!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #group!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #height!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #inputType!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #inputType:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelEditBoxes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #left!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #multiLine!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #multiLine:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #passwordEdit!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #passwordEdit:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #select!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelEditBoxes categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #text!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #top!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #width!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelEditBoxes categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelEditBoxes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelEditBoxes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelEditBoxes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

