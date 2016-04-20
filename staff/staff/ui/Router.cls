/// Класс, описывающий взаимодействие пользовательского интерфейса и Cache
Class staff.ui.Router Extends %CSP.REST
{

/// Описание всех возможных ответов сервера
XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>

<!-- Получить список всех записей справочника -->
<Route Url="/object/:className"                  Method="GET" Call="GetClassList"/>
<!-- Получить данные одной записи -->
<Route Url="/object/:className/:id"              Method="GET" Call="GetObjectData"/>
<!-- Сохранить существующую запись -->
<Route Url="/object/:className"                  Method="POST" Call="SaveObjectData"/>


<!-- Получить шаблон страницы -->
<Route Url="/template/:type/:className"          Method="GET" Call="GetTemplate"/>

<!-- Получить тестовый ответ -->
<Route Url="/test"          Method="GET" Call="GetTest"/>


</Routes>
}

/// Получить список всех записей справочника
ClassMethod GetClassList(codeTableName)
{
	set list=[]
	set Statement=##class(%SQL.Statement).%New()
	set className="staff.model."_codeTableName
	$$$QuitOnError(Statement.%PrepareClassQuery(className,"Extent"))
	set Rs=Statement.%Execute()
	while Rs.%Next() {
		set id=Rs.%Get("ID")
		set obj=$classmethod(className,"%OpenId",id)
		set jsonObj=##class(%Object).$new()
		do obj.%ToDynamicObject(jsonObj)
		if jsonObj.ID="" set jsonObj.ID=obj.%Id()
		do list.$push(jsonObj)
	}
	write list.$toJSON()
	quit $$$OK
}

/// Получить данные одной записи
ClassMethod GetObjectData(codeTableName, id)
{
	set className="staff.model."_codeTableName
	set obj=$classMethod(className,"%OpenId",id)
	set jsonObj=##class(%Object).$new()
	do obj.%ToDynamicObject(jsonObj)
	if jsonObj.ID="" set jsonObj.ID=obj.%Id()
	write jsonObj.$toJSON()
	quit $$$OK
}

/// Сохранить данные одной записи
ClassMethod SaveObjectData(codeTableName)
{
	set className="staff.model."_codeTableName
	set content=$zcvt(%request.Content.Read(),"I","UTF8")

	// Создаем динамический объект из переданного потока JSON данных
	set newObj=##class(%Object).$new()
	set newObj=newObj.$fromJSON(content)
    
	// Создаем или открываем хранимый объект
	set obj=$classMethod(className,"%OpenId",newObj.ID)
	if 'obj set obj=$classMethod(className,"%New")

	
	// Переносим данные из динамического в хранимый объект
	do newObj.$compose(obj)

 	// Подгружаем хранимые объекты
 	do ..SwizzlePersistent(newObj,obj)

 	// Сохраняем
	$$$QuitOnError(obj.%Save())
	quit $$$OK
}

/// Загрузить хранимые объекты
ClassMethod SwizzlePersistent(obj,target)
{
	set iterator=obj.$getIterator()
    while iterator.$getNext(.key,.value) {
        if $IsObject(value),value.%IsA("%Object"),value.$get("$CLASSNAME")'="" {
        	set $property(target,key)=$classMethod(value.$get("$CLASSNAME"),"%OpenId",value.$get("$REFERENCE"))
        } elseif $IsObject(value),value.%IsA("%Object") {
        	do ..SwizzlePersistent(value,$property(target,key))
        }
    }
 }


/// Получить шаблон страницы
ClassMethod GetTemplate(type, className)
{
	set fullClassName="staff.ui."_className
	if '##class(%Dictionary.CompiledClass).%ExistsId(fullClassName) {
		&html<Шаблон не существует>
	}
	if type="edit" do $classMethod(fullClassName,"GetEditTemplate")
	if type="list" do $classMethod(fullClassName,"GetListTemplate")
	quit $$$OK
}

/// Получить тестовый ответ
ClassMethod GetTest()
{
	write "Работает!"
	quit $$$OK
}

/* Пример метода GetInfo
/// Получить информацию о приложении
ClassMethod GetInfo()
{
	set info=##class(%Object).$new()
	set info.author="Семен Семеныч"
	set info.uptime=$zh
	write info.$toJSON()
	quit $$$OK
}
*/

}
