/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeOutDel Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeOutDel";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="RecordTypeOutDelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ID</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Parent</Value>
</Value>
</Data>
<DataLocation>^staff.model.RecordTypeOutDelD</DataLocation>
<DefaultData>RecordTypeOutDelDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeOutDelD</IdLocation>
<IndexLocation>^staff.model.RecordTypeOutDelI</IndexLocation>
<StreamLocation>^staff.model.RecordTypeOutDelS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
