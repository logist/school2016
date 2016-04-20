/// Created from: C:\InterSystems\root.xsd
Class staff.model.YesNo Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "YesNo";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="YesNoDefaultData">
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
<DataLocation>^staff.model.YesNoD</DataLocation>
<DefaultData>YesNoDefaultData</DefaultData>
<IdLocation>^staff.model.YesNoD</IdLocation>
<IndexLocation>^staff.model.YesNoI</IndexLocation>
<StreamLocation>^staff.model.YesNoS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
