<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.html>
<div>
    <@l.logout />
    <span><a href="/user">User list</a></span>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<form method="post" action="filter">
    <input type="text" name="filter"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else>
No message
</#list>
</@c.html>
