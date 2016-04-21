/// Справочник CTZ557: Классификатор гражданства
Class staff.model.Citizenship Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Citizenship";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");



Storage Default
{
<Data name="CitizenshipDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.CitizenshipD</DataLocation>
<DefaultData>CitizenshipDefaultData</DefaultData>
<IdLocation>^staff.model.CitizenshipD</IdLocation>
<IndexLocation>^staff.model.CitizenshipI</IndexLocation>
<StreamLocation>^staff.model.CitizenshipS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
