﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLegend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLegend guid: (IID fromString: '{000208CD-0000-0000-C000-000000000046}')!
ExcelLegend comment: '<ExcelLegend> is a wrapper class generated for the dispatch interface ''Excel.Legend'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208CD-0000-0000-C000-000000000046), 
	helpcontext(0x0002008c)
]
dispinterface Legend {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000092), hidden, propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x000000ad), helpcontext(0x000100ad)]
		IDispatch* LegendEntries(
			[in, optional]VARIANT Index);
[id(0x00000085), propget, helpcontext(0x00010085)]
		XlLegendPosition Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]XlLegendPosition arg1);
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x0000006f), helpcontext(0x0001006f)]
		VARIANT Clear();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
		VARIANT AutoScaleFont();
[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
		void AutoScaleFont(
			[in]VARIANT arg1);
[id(0x00000a58), propget, helpcontext(0x00010a58)]
		VARIANT_BOOL IncludeInLayout();
[id(0x00000a58), propput, helpcontext(0x00010a58)]
		void IncludeInLayout(
			[in]VARIANT_BOOL arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelLegend categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLegend methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoScaleFont
	"Answer the <variant> value of the 'AutoScaleFont' property of the receiver.
		VARIANT AutoScaleFont"

	^(self getPropertyId: 1525)
!

autoScaleFont: arg1
	"Set the 'AutoScaleFont' property of the receiver to the <variant> value of the argument.
		void AutoScaleFont"

	self setPropertyId: 1525 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

clear
	"Answer the <VARIANT> result of invoking the Clear() method of the COM object."

	^(self invokeId: 111)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver.
		ChartFillFormat* Fill"

	^ExcelChartFillFormat attachInterface: (self getPropertyId: 1663)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
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

includeInLayout
	"Answer the <varbool> value of the 'IncludeInLayout' property of the receiver.
		VARIANT_BOOL IncludeInLayout"

	^(self getPropertyId: 2648)
!

includeInLayout: arg1
	"Set the 'IncludeInLayout' property of the receiver to the <varbool> value of the argument.
		void IncludeInLayout"

	self setPropertyId: 2648 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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

legendEntries
	"Answer the <IDispatch> result of invoking the LegendEntries() method of the COM object.
	Default values are passed for all optional parameters."

	^self legendEntries: VARIANT unspecified!

legendEntries: index
	"Answer the <IDispatch> result of invoking the LegendEntries() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 173 with: index)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		XlLegendPosition Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <sdword> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver.
		VARIANT_BOOL Shadow"

	^(self getPropertyId: 103)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument.
		void Shadow"

	self setPropertyId: 103 value: arg1
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

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
! !
!ExcelLegend categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #border!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelLegend categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelLegend categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #font!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #format!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #height!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #includeInLayout!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #includeInLayout:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #left!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #legendEntries!**auto generated**!methods!public! !
!ExcelLegend categoriesFor: #legendEntries:!**auto generated**!methods!public! !
!ExcelLegend categoriesFor: #name!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #position!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #select!**auto generated**!methods!public! !
!ExcelLegend categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #top!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #width!**auto generated**!properties!public! !
!ExcelLegend categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelLegend class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLegend initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLegend class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

