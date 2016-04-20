/// Created from: C:\InterSystems\root.xsd
Class staff.model.DocumentData Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "DocumentData";

Parameter XMLSEQUENCE = 1;

Property INN As %String(MAXLEN = "", XMLNAME = "INN");

Property IssueDate As %TimeStamp(XMLNAME = "IssueDate");

Property Issued As %String(MAXLEN = "", XMLNAME = "Issued");

Property Number As %String(MAXLEN = "", XMLNAME = "Number");

Property SNILS As %String(MAXLEN = "", XMLNAME = "SNILS");

Property Serie As %String(MAXLEN = "", XMLNAME = "Serie");

Property TabelNumber As %String(MAXLEN = "", XMLNAME = "TabelNumber");

Property Type As staff.model.DocumentType(XMLNAME = "Type");

Storage Default
{
<Data name="DocumentDataDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>INN</Value>
</Value>
<Value name="3">
<Value>IssueDate</Value>
</Value>
<Value name="4">
<Value>Issued</Value>
</Value>
<Value name="5">
<Value>Number</Value>
</Value>
<Value name="6">
<Value>SNILS</Value>
</Value>
<Value name="7">
<Value>Serie</Value>
</Value>
<Value name="8">
<Value>TabelNumber</Value>
</Value>
<Value name="9">
<Value>Type</Value>
</Value>
</Data>
<Data name="DocumentDataState">
<Value name="1">
<Value>INN</Value>
</Value>
<Value name="2">
<Value>IssueDate</Value>
</Value>
<Value name="3">
<Value>Issued</Value>
</Value>
<Value name="4">
<Value>Number</Value>
</Value>
<Value name="5">
<Value>SNILS</Value>
</Value>
<Value name="6">
<Value>Serie</Value>
</Value>
<Value name="7">
<Value>TabelNumber</Value>
</Value>
<Value name="8">
<Value>Type</Value>
</Value>
</Data>
<DataLocation>^staff.model.DocumentDataD</DataLocation>
<DefaultData>DocumentDataDefaultData</DefaultData>
<IdLocation>^staff.model.DocumentDataD</IdLocation>
<IndexLocation>^staff.model.DocumentDataI</IndexLocation>
<State>DocumentDataState</State>
<StreamLocation>^staff.model.DocumentDataS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
