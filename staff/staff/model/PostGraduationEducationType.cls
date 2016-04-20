/// Created from: C:\InterSystems\root.xsd
Class staff.model.PostGraduationEducationType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PostGraduationEducationType";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="PostGraduationEducationTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.PostGraduatEADAD</DataLocation>
<DefaultData>PostGraduationEducationTypeDefaultData</DefaultData>
<IdLocation>^staff.model.PostGraduatEADAD</IdLocation>
<IndexLocation>^staff.model.PostGraduatEADAI</IndexLocation>
<StreamLocation>^staff.model.PostGraduatEADAS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
