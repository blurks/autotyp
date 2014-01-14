<%inherit file="../${context.get('request').registry.settings.get('clld.app_template', 'app.mako')}"/>
<%namespace name="util" file="../util.mako"/>
<%! active_menu_item = "languages" %>


<h2>${_('Language')} ${ctx.name}</h2>

${request.get_datatable('values', h.models.Value, language=ctx).render()}

<%def name="sidebar()">
    ${util.codes()}
    <div style="clear: right;"> </div>
    % if ctx.latitude is not None:
    <%util:well>
        ${request.map.render()}
        ${h.format_coordinates(ctx)}
    </%util:well>
    % endif
</%def>
