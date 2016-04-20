/// Created from: C:\InterSystems\root.xsd
Class staff.model.EducationType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "EducationType";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="EducationTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.EducationTypeD</DataLocation>
<DefaultData>EducationTypeDefaultData</DefaultData>
<IdLocation>^staff.model.EducationTypeD</IdLocation>
<IndexLocation>^staff.model.EducationTypeI</IndexLocation>
<StreamLocation>^staff.model.EducationTypeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
