/// Created from: C:\InterSystems\root.xsd
Class staff.model.GeneralData Extends (%SerialObject, %XML.Adaptor) [ CompileAfter = staff.q6.SexEnum, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GeneralData";

Parameter XMLSEQUENCE = 1;

Property Birthdate As %TimeStamp(XMLNAME = "Birthdate");

Property Deathdate As %TimeStamp(XMLNAME = "Deathdate");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Patroname As %String(MAXLEN = "", XMLNAME = "Patroname");

Property Sex As staff.q6.SexEnum(XMLNAME = "Sex");

Property Surname As %String(MAXLEN = "", XMLNAME = "Surname");

Storage Default
{
<Data name="GeneralDataState">
<Value name="1">
<Value>Birthdate</Value>
</Value>
<Value name="2">
<Value>Deathdate</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Patroname</Value>
</Value>
<Value name="5">
<Value>Sex</Value>
</Value>
<Value name="6">
<Value>Surname</Value>
</Value>
</Data>
<State>GeneralDataState</State>
<StreamLocation>^staff.model.GeneralDataS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
