<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx](./VB/Default.aspx))
<!-- default file list end -->
# ASPxGridView - How to show the command or custom button only for hovered rows


This example demonstrated how to show the command button or a custom button placed inside the DataItem template only for the hovered rows when the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewBehaviorSettings_EnableRowHotTracktopic">ASPxGridView.SettingsBehavior.EnableRowHotTrack</a> property is enabled. <br>


<h3>Description</h3>

The main idea is that it is necessary to hide the required button using CSS. For example:<br>
<code lang="css">.hottrackButton {
    visibility: hidden;
}</code>
<br>
<code lang="aspx">&lt;SettingsCommandButton&gt;
    &lt;EditButton RenderMode="Image" Image-IconID="edit_edit_32x32"&gt;
        &lt;Styles&gt;
            &lt;Style CssClass="hottrackButton"&gt;&lt;/Style&gt;
        &lt;/Styles&gt;
    &lt;/EditButton&gt;
    ...&lt;/NewButton&gt;
&lt;/SettingsCommandButton&gt;</code>
<p>or:</p>
<code lang="aspx">&lt;DataItemTemplate&gt;
    ...
 &lt;dx:ASPxButton ID="btDelete" runat="server" ... CssClass="hottrackButton"&gt;
  ...
 &lt;/dx:ASPxButton&gt; 
&lt;/DataItemTemplate&gt;</code>
Then, add the custom CSS class to the&nbsp;RowHotTrack property:<br>
<code lang="aspx">&lt;Styles&gt;
    &lt;RowHotTrack CssClass="hottrackRow"&gt;&lt;/RowHotTrack&gt;
&lt;/Styles&gt;</code>
This way, you will be able to show the required buttons only when they are hovered:<br>
<code lang="css">.hottrackRow .hottrackButton {
    visibility: visible;
}</code>

<br/>


