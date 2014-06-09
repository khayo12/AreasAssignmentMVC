<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Areas.ContactDetails.Models.ContactDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ContactDetails</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.FirstName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FirstName) %>
            <%: Html.ValidationMessageFor(model => model.FirstName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LastName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LastName) %>
            <%: Html.ValidationMessageFor(model => model.LastName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
