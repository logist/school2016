/// Created from: C:\InterSystems\root.xsd
Class staff.model.DocumentType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "DocumentType";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="DocumentTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.DocumentTypeD</DataLocation>
<DefaultData>DocumentTypeDefaultData</DefaultData>
<IdLocation>^staff.model.DocumentTypeD</IdLocation>
<IndexLocation>^staff.model.DocumentTypeI</IndexLocation>
<StreamLocation>^staff.model.DocumentTypeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
