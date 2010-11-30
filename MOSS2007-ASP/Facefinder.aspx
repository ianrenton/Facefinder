<%@ Reference VirtualPath="~masterurl/custom.master" %>
<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:ListProperty Property="Title" runat="server"/> - 
	<SharePointWebControls:ListItemProperty Property="BaseName" MaxLength=40 runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<WebPartPages:WebPartZone runat="server" Title="loc:TitleBar" ID="TitleBar" AllowLayoutChange="false" AllowPersonalization="false"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
	<style type="text/css">
	Div.ms-titleareaframe {
	height: 100%;
	}
	.ms-pagetitleareaframe table {
	background: none;
	}
  </style>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePointWebControls:ProjectProperty Property="Description" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
	<div height=100% class="ms-pagemargin">
		<IMG SRC="blank.gif" width=10 height=1 alt=""></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
		<table cellpadding="4" cellspacing="0" border="0" width="100%">
				<tr>
				    <td valign="top" style="padding:0" colspan="3" width="100%">
				        <PublishingWebControls:RichHtmlField id="PageContent" FieldName="PublishingPageContent" runat="server"/>
				    </td>
				</tr>
				<tr>
					<td valign="top" style="padding:0">
						<table cellpadding="4" cellspacing="0" border="0" width="100%" height="100%">
							<tr>
								<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
								&nbsp;</td>
								<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
								<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Center%>" ID="CenterColumn"><ZoneTemplate>
								<WebPartPages:DataFormWebPart runat="server" ShowWithSampleData="False" AllowRemove="True" AllowHide="True" SuppressWebPartChrome="False" PartImageLarge="" ViewContentTypeId="" ExportMode="All" Dir="Default" MissingAssembly="Cannot import this Web Part." ID="g_028ef860_e888_4521_8123_edfc5e564c3d" DataSourceID="" IsIncludedFilter="" DetailLink="" AllowEdit="True" UseSQLDataSourcePaging="True" HelpMode="Modeless" IsIncluded="True" Description="" NoDefaultStyle="TRUE" FrameState="Normal" AllowConnect="True" ViewFlag="0" AllowZoneChange="True" AllowMinimize="True" Title=" " PartOrder="1" PageSize="-1" FrameType="Default" HelpLink="" PartImageSmall="" ConnectionID="00000000-0000-0000-0000-000000000000" ExportControlledProperties="True" IsVisible="True" __MarkupType="vsattributemarkup" __WebPartId="{4B401E37-7398-4356-813D-4EF676E1CB2D}" __AllowXSLTEditing="true" WebPart="true" Height="" Width=""><ParameterBindings>
									<ParameterBinding Name="dvt_apos" Location="Postback;Connection"/>
									<ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName"/>
									<ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate"/>
								</ParameterBindings>
<DataFields>@diffgr:id,diffgr:id;@msdata:rowOrder,msdata:rowOrder;SIZE;RANK;PATH;TITLE;WRITE;FIRSTNAME;USERNAME;WORKEMAIL;LASTNAME;WORKPHONE;PICTUREURL;DESCRIPTION;</DataFields>
<DataSources>
<SharePointWebControls:SoapDataSource runat="server" SelectUrl="http://ukintranet/_vti_bin/search.asmx" InsertUrl="" UpdateUrl="" DeleteUrl="" SelectAction="http://microsoft.com/webservices/OfficeServer/QueryService/QueryEx" InsertAction="" UpdateAction="" DeleteAction="" SelectPort="QueryServiceSoap" InsertPort="" UpdatePort="" DeletePort="" SelectServiceName="QueryService" InsertServiceName="" UpdateServiceName="" DeleteServiceName="" AuthType="Windows" WsdlPath="http://ukintranet/_vti_bin/search.asmx?WSDL" XPath="" ID="SoapDataSource2"><SelectCommand><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><QueryEx xmlns="http://microsoft.com/webservices/OfficeServer/QueryService"><queryXml>_x003c__x003f_xml_x0020_version_x003d__x0022_1_x002e_0_x0022__x0020_encoding_x003d__x0022_utf_x002d_8_x0022__x0020__x003f__x003e__x003c_QueryPacket_x0020_xmlns_x003d__x0022_urn_x003a_Microsoft_x002e_Search_x002e_Query_x0022__x0020_Revision_x003d__x0022_1000_x0022__x003e__x003c_Query_x0020_domain_x003d__x0022_QDomain_x0022__x003e__x0020__x003c_SupportedFormats_x003e__x003c_Format_x003e_urn_x003a_Microsoft_x002e_Search_x002e_Response_x002e_Document_x002e_Document_x003c__x002f_Format_x003e__x003c__x002f_SupportedFormats_x003e__x0020__x003c_Context_x003e__x0020__x0020__x0020__x003c_QueryText_x0020_language_x003d__x0022_en_x002d_US_x0022__x0020_type_x003d__x0022_MSSQLFT_x0022__x003e__x003c__x0021__x005b_CDATA_x005b__x0020_SELECT_x0020_Size_x002c__x0020_Rank_x002c__x0020_Path_x002c__x0020_Title_x002c__x0020_Description_x002c__x0020_Write_x002c__x0020_LastName_x002c__x0020_FirstName_x002c__x0020_UserName_x002c__x0020_WorkPhone_x002c__x0020_PictureHeight_x002c__x0020_PictureURL_x002c__x0020_WorkEmail_x002c__x0020_PictureWidth_x0020_FROM_x0020_portal_x002e__x002e_scope_x0028__x0029__x0020_WHERE_x0020__x0020__x0028__x0020__x0028__x0022_SCOPE_x0022__x0020__x003d__x0020__x0027_People_x0027__x0029__x0020__x0029__x0020__x0020__x0020_ORDER_x0020_BY_x0020__x0022_Rank_x0022__x0020_DESC_x0020__x005d__x005d__x003e__x003c__x002f_QueryText_x003e__x0020__x003c__x002f_Context_x003e__x0020__x003c_Range_x003e__x003c_StartAt_x003e_1_x003c__x002f_StartAt_x003e__x003c_Count_x003e_2000_x003c__x002f_Count_x003e__x003c__x002f_Range_x003e__x0020__x003c_EnableStemming_x003e_false_x003c__x002f_EnableStemming_x003e__x0020__x003c_TrimDuplicates_x003e_true_x003c__x002f_TrimDuplicates_x003e__x0020__x003c_IgnoreAllNoiseQuery_x003e_true_x003c__x002f_IgnoreAllNoiseQuery_x003e__x0020__x003c_ImplicitAndBehavior_x003e_true_x003c__x002f_ImplicitAndBehavior_x003e__x0020__x003c_IncludeRelevanceResults_x003e_true_x003c__x002f_IncludeRelevanceResults_x003e__x0020__x003c_IncludeSpecialTermResults_x003e_true_x003c__x002f_IncludeSpecialTermResults_x003e__x003c_IncludeHighConfidenceResults_x003e_true_x003c__x002f_IncludeHighConfidenceResults_x003e__x003c__x002f_Query_x003e__x003c__x002f_QueryPacket_x003e_</queryXml></QueryEx></soap:Body></soap:Envelope></SelectCommand><InsertCommand></InsertCommand><UpdateCommand></UpdateCommand><DeleteCommand></DeleteCommand>
</SharePointWebControls:SoapDataSource>
</DataSources>
<Xsl>


<xsl:stylesheet xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ddw1="http://microsoft.com/webservices/OfficeServer/QueryService" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata" xmlns:msprop="urn:schemas-microsoft-com:xml-msprop" xmlns:diffgr="urn:schemas-microsoft-com:xml-diffgram-v1" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
									<xsl:param name="dvt_apos">'</xsl:param><xsl:variable name="dvt_1_automode">0</xsl:variable>
									<xsl:template match="/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ddw1="http://microsoft.com/webservices/OfficeServer/QueryService" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata" xmlns:msprop="urn:schemas-microsoft-com:xml-msprop" xmlns:diffgr="urn:schemas-microsoft-com:xml-diffgram-v1" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:SharePoint="Microsoft.SharePoint.WebControls">
										<xsl:call-template name="dvt_1"/>
	</xsl:template>
									<xsl:template name="dvt_1">
										<xsl:variable name="dvt_StyleName">2ColFrm</xsl:variable>
										<xsl:variable name="Rows" select="/soap:Envelope/soap:Body/ddw1:QueryExResponse/ddw1:QueryExResult/diffgr:diffgram/Results/RelevantResults[normalize-space(LASTNAME) != '' and normalize-space(FIRSTNAME) != '' and normalize-space(USERNAME) != '' and normalize-space(WORKEMAIL) != '' and not(starts-with(normalize-space(USERNAME), 'admin-'))]" />
										
										<xsl:variable name="dvt_RowCount" select="count($Rows)" />
										<xsl:variable name="IsEmpty" select="$dvt_RowCount = 0" />
										<table border="0" width="100%">
			<tr>
				<xsl:call-template name="dvt_1.body">
					<xsl:with-param name="Rows" select="$Rows" />
				</xsl:call-template>
											</tr>
		</table>
									</xsl:template>
									<xsl:template name="dvt_1.body">
										<xsl:param name="Rows" />
										<xsl:for-each select="$Rows">
											<xsl:sort select="TITLE" order="ascending" />
											<xsl:call-template name="dvt_1.rowview" />
											
										</xsl:for-each>
									</xsl:template>
									<xsl:template name="dvt_1.rowview">
		<td valign="top" width="20%" id="">
			<table border="0" cellspacing="10" width="100%">
				<tr id="">
					<td width="100%" class="ms-vb" align="center" id="">
						<xsl:choose>
							<xsl:when test="string-length(PICTUREURL) &gt; 0">
								<a href="{PATH}"><img src="{PICTUREURL}" height="150px" border="0"/></a>
							</xsl:when>
							<xsl:otherwise>
								<a href="{PATH}"><img src="./nopicture.gif" height="150px" border="0"/></a>
							</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
				<tr id="">
					<td width="100%" class="ms-vb" align="center" style="font-size:100%;" id="">
						<span>
							<xsl:if test="string-length(WORKEMAIL) &gt; 0">
								<img border="0" valign="middle" height="12" width="12" src="imnhdr.gif" onload="IMNRC('{WORKEMAIL}')" id="{generate-id()}" ShowOfflinePawn="0" />
							</xsl:if>
							<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime">&amp;nbsp;</xsl:text>
							<xsl:value-of select="TITLE" />
						</span>
					</td>
				</tr>
				<xsl:if test="$dvt_1_automode = '1'" ddwrt:cf_ignore="1">
					<tr>
						<td colspan="99" class="ms-vb">
							<span ddwrt:amkeyfield="" ddwrt:amkeyvalue="string($XPath)" ddwrt:ammode="view" />
						</td>
					</tr>
				</xsl:if>
			</table>
		</td>
										<xsl:if test="position() mod 5 = 0" ddwrt:cf_ignore="1">
											<xsl:text disable-output-escaping="yes">&lt;/tr&gt;</xsl:text>
											<xsl:if test="position() != last()" ddwrt:cf_ignore="1">
												<xsl:text disable-output-escaping="yes">&lt;tr&gt;</xsl:text>
											</xsl:if>
										</xsl:if>
										<xsl:if test="position() = last()" ddwrt:cf_ignore="1">
											<xsl:if test="position() mod 5 != 0" ddwrt:cf_ignore="1">
				<td>
					<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime">&amp;nbsp;</xsl:text>
												
												</td>
			</xsl:if>
										</xsl:if>
									</xsl:template>
								</xsl:stylesheet></Xsl>
</WebPartPages:DataFormWebPart>

</ZoneTemplate></WebPartPages:WebPartZone> </td>
								<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
								&nbsp;</td>
							</tr>
							<tr>
								<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top"> 
								&nbsp;</td>
							</tr>
						</table>
					</td>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
					&nbsp;</td>
				</tr>
				<script language="javascript">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</script>
		</table>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> <div class="breadcrumb"> 
	<asp:SiteMapPath ID="siteMapPath" Runat="server" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" RenderCurrentNodeAsLink="false" SkipLinkText="" CurrentNodeStyle-CssClass="breadcrumbCurrent" NodeStyle-CssClass="ms-sitemapdirectional"/> </div> </asp:Content>
