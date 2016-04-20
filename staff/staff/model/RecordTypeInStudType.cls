/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeInStudType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeInStudType";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeInStudTypeDefaultData">
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
<DataLocation>^staff.model.RecordTypeIA494D</DataLocation>
<DefaultData>RecordTypeInStudTypeDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeIA494D</IdLocation>
<IndexLocation>^staff.model.RecordTypeIA494I</IndexLocation>
<StreamLocation>^staff.model.RecordTypeIA494S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
