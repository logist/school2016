/// Created from: C:\InterSystems\root.xsd
Class staff.model.ExtendedData Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "ExtendedData";

Parameter XMLSEQUENCE = 1;

Property CitezenshipState As staff.model.Citizenship(XMLNAME = "CitezenshipState");

Property HasAuto As %Boolean(XMLNAME = "HasAuto");

Property HasChildren As %Boolean(XMLNAME = "HasChildren");

Property MarriageState As staff.model.Marriage(XMLNAME = "MarriageState");

Property Phone As %String(MAXLEN = "", XMLNAME = "Phone");

Storage Default
{
<Data name="ExtendedDataState">
<Value name="1">
<Value>CitezenshipState</Value>
</Value>
<Value name="2">
<Value>HasAuto</Value>
</Value>
<Value name="3">
<Value>HasChildren</Value>
</Value>
<Value name="4">
<Value>MarriageState</Value>
</Value>
<Value name="5">
<Value>Phone</Value>
</Value>
</Data>
<State>ExtendedDataState</State>
<StreamLocation>^staff.model.ExtendedDataS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
