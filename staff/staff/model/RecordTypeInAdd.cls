/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeInAdd Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeInAdd";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeInAddDefaultData">
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
<DataLocation>^staff.model.RecordTypeInAddD</DataLocation>
<DefaultData>RecordTypeInAddDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeInAddD</IdLocation>
<IndexLocation>^staff.model.RecordTypeInAddI</IndexLocation>
<StreamLocation>^staff.model.RecordTypeInAddS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
