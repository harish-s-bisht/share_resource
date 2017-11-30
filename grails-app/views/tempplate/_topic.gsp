<div class="row">
    <div class="register_header">
        <span>Create Topic Popup</span>
    </div>
</div>
<div class="row border">
    <div class="col-md-12">
        <g:form controller="resourceHandler" action="topic" method="POST">
            <div class="row">
                <div class="col-md-3 m-t-10">
                    Name
                </div>
                <div class="col-md-3 m-t-10">
                    <g:textField name="name" id="name"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 m-t-10">
                    Visibility
                </div>
                <div class="col-md-3 m-t-10">
                    <select name="visibility">
                        <option value="public">Public</option>
                        <option value="private">Private</option>
                    </select>
                    <g:hiddenField name="user" value="${user.id}"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 col-md-offset-1 m-t-10">
                </div>
                <div class="col-md-3 m-t-10">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
                <div class="col-md-3 m-t-10">
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
            </div>
        </g:form>
    </div>
</div>