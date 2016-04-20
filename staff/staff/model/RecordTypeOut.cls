/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeOut Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeOut";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeOutDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ID</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.RecordTypeOutD</DataLocation>
<DefaultData>RecordTypeOutDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeOutD</IdLocation>
<IndexLocation>^staff.model.RecordTypeOutI</IndexLocation>
<StreamLocation>^staff.model.RecordTypeOutS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
