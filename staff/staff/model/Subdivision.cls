/// Created from: C:\InterSystems\root.xsd
Class staff.model.Subdivision Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Subdivision";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="SubdivisionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Parent</Value>
</Value>
</Data>
<DataLocation>^staff.model.SubdivisionD</DataLocation>
<DefaultData>SubdivisionDefaultData</DefaultData>
<IdLocation>^staff.model.SubdivisionD</IdLocation>
<IndexLocation>^staff.model.SubdivisionI</IndexLocation>
<StreamLocation>^staff.model.SubdivisionS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
