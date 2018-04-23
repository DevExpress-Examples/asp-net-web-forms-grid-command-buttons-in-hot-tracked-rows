<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .hottrackButton {
            visibility: hidden;
        }

        .hottrackRow .hottrackButton {
            visibility: visible;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False" KeyFieldName="ID" ClientInstanceName="gridView"
            OnRowDeleting="Grid_RowDeleting" OnRowInserting="Grid_RowInserting" OnRowUpdating="Grid_RowUpdating" Width="800">
            <SettingsCommandButton>
                <EditButton RenderMode="Image" Image-IconID="edit_edit_32x32">
                    <Styles>
                        <Style CssClass="hottrackButton"></Style>
                    </Styles>
                </EditButton>
                <NewButton Image-IconID="actions_additem_32x32" RenderMode="Image"></NewButton>
            </SettingsCommandButton>
            <SettingsBehavior EnableRowHotTrack="true" />
            <Styles>
                <RowHotTrack CssClass="hottrackRow"></RowHotTrack>
            </Styles>
            <Columns>
                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataColumn FieldName="C1" />
                <dx:GridViewDataSpinEditColumn FieldName="C2" />
                <dx:GridViewDataTextColumn FieldName="C3" />
                <dx:GridViewDataCheckColumn FieldName="C4" />
                <dx:GridViewDataDateColumn FieldName="C5">
                    <DataItemTemplate>
                        <table width="100%">
                            <tr>
                                <td style="width: 100%">
                                    <%# Container.Text %>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="btDelete" runat="server" Text="" RenderMode="Link" ClientSideEvents-Click='<%# string.Format("function(s, e){{ gridView.DeleteRow({0}); }}", Container.VisibleIndex) %>'
                                        CssClass="hottrackButton" ToolTip="Delete row" AutoPostBack="false">
                                        <Image IconID="edit_delete_32x32"></Image>
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </DataItemTemplate>
                </dx:GridViewDataDateColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
