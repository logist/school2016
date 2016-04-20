/// Created from: C:\InterSystems\root.xsd
Class staff.model.QualificationCategory Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "QualificationCategory";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="QualificationCategoryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.Qualificati4CA6D</DataLocation>
<DefaultData>QualificationCategoryDefaultData</DefaultData>
<IdLocation>^staff.model.Qualificati4CA6D</IdLocation>
<IndexLocation>^staff.model.Qualificati4CA6I</IndexLocation>
<StreamLocation>^staff.model.Qualificati4CA6S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
