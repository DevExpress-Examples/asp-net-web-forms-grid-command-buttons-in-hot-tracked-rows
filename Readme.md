<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535570/17.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T529995)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to show the command or custom button only for hovered rows
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t529995/)**
<!-- run online end -->


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


