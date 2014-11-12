<%@include file="/apps/foundation/global.jsp"%>

<div class="config" data-tab-heading="<%=properties.get("heading" , "[TBD]")%>"
     data-aem-panel-parsys="${resource.path}/par"
     data-aem-config="<%=resource.getPath().replaceAll("/" , "_").replaceAll(":", "_")%>">
    <cq:include path="start" resourceType="bootstrap/components/tab/panel/start"/>

    <span>&nbsp;</span>
    <cq:include path="par" resourceType="bootstrap/components/tab/panel/parsys"/>
    <cq:include path="end" resourceType="bootstrap/components/tab/panel/end"/>
</div>

<script>

    $(document).ready(function(){
        if(typeof(CQ) != "undefined"){
            CQ.WCM.onEditableReady('${resource.path}/par',function(e){
                var parsys = CQ.WCM.getEditable('${resource.path}/par');
                if(parsys){
                    parsys.hide();
                }

            });


        }
    });

</script>
