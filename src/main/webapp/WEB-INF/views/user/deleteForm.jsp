<div class="row">
  <div class="col-lg-12">
    <h2>Delete User</h2>
    <form:form action="${pageContext.request.contextPath}/user/delete"
      modelAttribute="userForm" class="form-horizontal">
      <div class="form-group">
        <label class="control-label">User Name</label>
        <div class="controls">${f:h(user.name)}</div>
      </div>
      <div class="form-group">
        <label class="control-label">E-mail</label>
        <div class="controls">${f:h(user.email)}</div>
      </div>
      <div class="form-group">
        <label class="control-label">User Birth</label>
        <div class="controls">
          <fmt:formatDate pattern="yyyy-MM-dd" value="${user.birth}"/>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label">User Password</label>
        <div class="controls">******</div>
      </div>
      <div class="form-actions">
        <form:hidden path="id" value="${f:h(user.id)}" />
        <form:hidden path="version" value="${f:h(user.version)}" />
        <input type="submit" class="btn btn-danger" name="delete"
          value="Delete" /> <input type="submit" class="btn btn-default"
          name="redirectToList" value="Back to List" />
      </div>
    </form:form>
  </div>
</div>