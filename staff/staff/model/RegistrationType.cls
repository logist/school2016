/// Классификатор типа регистрационного учета
Class staff.model.RegistrationType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RegistrationType";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RegistrationTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.RegistrationTypeD</DataLocation>
<DefaultData>RegistrationTypeDefaultData</DefaultData>
<IdLocation>^staff.model.RegistrationTypeD</IdLocation>
<IndexLocation>^staff.model.RegistrationTypeI</IndexLocation>
<StreamLocation>^staff.model.RegistrationTypeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
