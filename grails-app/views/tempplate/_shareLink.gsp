<div class="recent_post_header">
  Share Link (Pop Up)
</div>
<div class="register-box">
    <g:form method="post" controller="resourceHandler" action="createlink">
        <div class="row">
            <div class="col-md-3 p-t-10">
                Link

            </div>
            <div class="col-md-3 p-t-10">
                <g:textField name="url" value="${url}"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 p-t-10">
                Description
            </div>
            <div class="col-md-3 p-t-10">
                <g:textArea rows="5" cols="20" name="description" value="${descrition}"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 p-t-10">
                Topic
            </div>
            <div class="col-md-3 p-t-10">
                <select class="select w-187" name="topic">
                    <option value="0">--Topic--</option>
                    <g:each in="${topicList}" var="topics">
                        <option value="${topics.id}">${topics.name}</option>
                    </g:each>
                </select>
            </div>
            <g:hiddenField  name="createdBy" value="${user.id}"/>
        </div>
        <div class="row">
            <div class="col-md-3 p-t-10">
                <button class="btn btn-primary">Share</button>

            </div>
            <div class="col-md-3 p-t-10">
                <button class="btn btn-default">Cancel</button>
            </div>
        </div>
    </g:form>
</div>
