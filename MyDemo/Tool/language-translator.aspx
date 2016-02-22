﻿<%@ Page Title="Language Translator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="language-translator.aspx.cs" Inherits="Kong.ApiExpert.Web.Tool.language_translator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<form role="form" name="myForm">
<div class=row>
    <div class = "col-sm-4">
        <div class="input-group">
          <span class="input-group-addon"><label class="control-label" for="ddlLanguageFrom">From</label></span>
          <select id="ddlLanguageFrom" class="form-control">
                <option value="af-ZA">Afrikaans</option>
                <option value="sq-AL">Albanian</option>
                <option value="am-ET">Amharic</option>
                <option value="ar-SA">Arabic</option>
                <option value="hy-AM">Armenian</option>
                <option value="az-AZ">Azerbaijani</option>
                <option value="bjs-BB">Bajan</option>
                <option value="rm-RO">Balkan Gipsy</option>
                <option value="eu-ES">Basque</option>
                <option value="fr-BE">Belgian French</option>
                <option value="bem-ZM">Bemba</option>
                <option value="bn-IN">Bengali</option>
                <option value="be-BY">Bielarus</option>
                <option value="bi-VU">Bislama</option>
                <option value="bs-BA">Bosnian</option>
                <option value="br-FR">Breton</option>
                <option value="bg-BG">Bulgarian</option>
                <option value="my-MM">Burmese</option>
                <option value="ca-ES">Catalan</option>
                <option value="cb-PH">Cebuano</option>
                <option value="ch-GU">Chamorro</option>
                <option value="zh-CN" selected="selected" >Chinese (Simplified)</option>
                <option value="zh-TW">Chinese Traditional</option>
                <option value="zdj-KM">Comorian (Ngazidja)</option>
                <option value="cop-EG">Coptic</option>
                <option value="aig-AG">Creole English (Antigua and Barbuda)</option>
                <option value="bah-BS">Creole English (Bahamas)</option>
                <option value="gcl-GD">Creole English (Grenadian)</option>
                <option value="gyn-GY">Creole English (Guyanese)</option>
                <option value="jam-JM">Creole English (Jamaican)</option>
                <option value="svc-VC">Creole English (Vincentian)</option>
                <option value="vic-US">Creole English (Virgin Islands)</option>
                <option value="ht-HT">Creole French (Haitian)</option>
                <option value="acf-LC">Creole French (Saint Lucian)</option>
                <option value="crs-SC">Creole French (Seselwa)</option>
                <option value="pov-GW">Creole Portuguese (Upper Guinea)</option>
                <option value="hr-HR">Croatian</option>
                <option value="cs-CZ">Czech</option>
                <option value="da-DK">Danish</option>
                <option value="nl-NL">Dutch</option>
                <option value="dz-BT">Dzongkha</option>
                <option value="en-GB" selected="selected">English</option>
                <option value="eo-EU">Esperanto</option>
                <option value="et-EE">Estonian</option>
                <option value="fn-FNG">Fanagalo</option>
                <option value="fo-FO">Faroese</option>
                <option value="fi-FI">Finnish</option>
                <option value="fr-FR">French</option>
                <option value="gl-ES">Galician</option>
                <option value="ka-GE">Georgian</option>
                <option value="de-DE">German</option>
                <option value="el-GR">Greek</option>
                <option value="grc-GR">Greek (Classical)</option>
                <option value="gu-IN">Gujarati</option>
                <option value="ha-NE">Hausa</option>
                <option value="haw-US">Hawaiian</option>
                <option value="he-IL">Hebrew</option>
                <option value="hi-IN">Hindi</option>
                <option value="hu-HU">Hungarian</option>
                <option value="is-IS">Icelandic</option>
                <option value="id-ID">Indonesian</option>
                <option value="kl-GL">Inuktitut (Greenlandic)</option>
                <option value="ga-IE">Irish Gaelic</option>
                <option value="it-IT">Italian</option>
                <option value="ja-JA">Japanese</option>
                <option value="jw-ID">Javanese</option>
                <option value="kea-CV">Kabuverdianu</option>
                <option value="kab-DZ">Kabylian</option>
                <option value="ka-IN">Kannada</option>
                <option value="kk-KZ">Kazakh</option>
                <option value="km-KM">Khmer</option>
                <option value="rw-RW">Kinyarwanda</option>
                <option value="rn-RN">Kirundi</option>
                <option value="ko-KR">Korean</option>
                <option value="ku-TR">Kurdish</option>
                <option value="ku-TR">Kurdish Sorani</option>
                <option value="ky-KG">Kyrgyz</option>
                <option value="lo-LA">Lao</option>
                <option value="la-VA">Latin</option>
                <option value="lv-LV">Latvian</option>
                <option value="lt-LT">Lithuanian</option>
                <option value="lb-LU">Luxembourgish</option>
                <option value="mk-MK">Macedonian</option>
                <option value="mg-MG">Malagasy</option>
                <option value="ms-MY">Malay</option>
                <option value="dv-MV">Maldivian</option>
                <option value="mt-MT">Maltese</option>
                <option value="gv-IM">Manx Gaelic</option>
                <option value="mi-NZ">Maori</option>
                <option value="mh-MH">Marshallese</option>
                <option value="men-SL">Mende</option>
                <option value="mn-MN">Mongolian</option>
                <option value="mfe-MU">Morisyen</option>
                <option value="ne-NP">Nepali</option>
                <option value="niu-NU">Niuean</option>
                <option value="no-NO">Norwegian</option>
                <option value="ny-MW">Nyanja</option>
                <option value="ur-PK">Pakistani</option>
                <option value="pau-PW">Palauan</option>
                <option value="pa-IN">Panjabi</option>
                <option value="pap-PAP">Papiamentu</option>
                <option value="ps-PK">Pashto</option>
                <option value="fa-IR">Persian</option>
                <option value="pis-SB">Pijin</option>
                <option value="pl-PL">Polish</option>
                <option value="pt-PT">Portuguese</option>
                <option value="pot-US">Potawatomi</option>
                <option value="qu-PE">Quechua</option>
                <option value="ro-RO">Romanian</option>
                <option value="ru-RU">Russian</option>
                <option value="sm-WS">Samoan</option>
                <option value="sg-CF">Sango</option>
                <option value="gd-GB">Scots Gaelic</option>
                <option value="sr-RS">Serbian</option>
                <option value="sn-ZW">Shona</option>
                <option value="si-LK">Sinhala</option>
                <option value="sk-SK">Slovak</option>
                <option value="sl-SI">Slovenian</option>
                <option value="so-SO">Somali</option>
                <option value="st-LS">Sotho, Southern</option>
                <option value="es-ES">Spanish</option>
                <option value="srn-SR">Sranan Tongo</option>
                <option value="sw-SZ">Swahili</option>
                <option value="sv-SE">Swedish</option>
                <option value="de-CH">Swiss German</option>
                <option value="syc-TR">Syriac (Aramaic)</option>
                <option value="tl-PH">Tagalog</option>
                <option value="tg-TJ">Tajik</option>
                <option value="tmh-DZ">Tamashek (Tuareg)</option>
                <option value="ta-LK">Tamil</option>
                <option value="te-IN">Telugu</option>
                <option value="tet-TL">Tetum</option>
                <option value="th-TH">Thai</option>
                <option value="bo-CN">Tibetan</option>
                <option value="ti-TI">Tigrinya</option>
                <option value="tpi-PG">Tok Pisin</option>
                <option value="tkl-TK">Tokelauan</option>
                <option value="to-TO">Tongan</option>
                <option value="tn-BW">Tswana</option>
                <option value="tr-TR">Turkish</option>
                <option value="tk-TM">Turkmen</option>
                <option value="tvl-TV">Tuvaluan</option>
                <option value="uk-UA">Ukrainian</option>
                <option value="ppk-ID">Uma</option>
                <option value="uz-UZ">Uzbek</option>
                <option value="vi-VN">Vietnamese</option>
                <option value="wls-WF">Wallisian</option>
                <option value="cy-GB">Welsh</option>
                <option value="wo-SN">Wolof</option>
                <option value="xh-ZA">Xhosa</option>
                <option value="yi-YD">Yiddish</option>
                <option value="zu-ZU">Zulu</option>
            </select>  
            </div>
        </div>
        <br class=visible-xs />
        <div class = "col-sm-4">
        <div class="input-group">
          <span class="input-group-addon"><label class="control-label" for="ddlLanguageTo">To</label></span>
          <select id="ddlLanguageTo" class="form-control">
                       <option value="af-ZA">Afrikaans</option>
                <option value="sq-AL">Albanian</option>
                <option value="am-ET">Amharic</option>
                <option value="ar-SA">Arabic</option>
                <option value="hy-AM">Armenian</option>
                <option value="az-AZ">Azerbaijani</option>
                <option value="bjs-BB">Bajan</option>
                <option value="rm-RO">Balkan Gipsy</option>
                <option value="eu-ES">Basque</option>
                <option value="fr-BE">Belgian French</option>
                <option value="bem-ZM">Bemba</option>
                <option value="bn-IN">Bengali</option>
                <option value="be-BY">Bielarus</option>
                <option value="bi-VU">Bislama</option>
                <option value="bs-BA">Bosnian</option>
                <option value="br-FR">Breton</option>
                <option value="bg-BG">Bulgarian</option>
                <option value="my-MM">Burmese</option>
                <option value="ca-ES">Catalan</option>
                <option value="cb-PH">Cebuano</option>
                <option value="ch-GU">Chamorro</option>
                <option value="zh-CN" selected="selected" >Chinese (Simplified)</option>
                <option value="zh-TW">Chinese Traditional</option>
                <option value="zdj-KM">Comorian (Ngazidja)</option>
                <option value="cop-EG">Coptic</option>
                <option value="aig-AG">Creole English (Antigua and Barbuda)</option>
                <option value="bah-BS">Creole English (Bahamas)</option>
                <option value="gcl-GD">Creole English (Grenadian)</option>
                <option value="gyn-GY">Creole English (Guyanese)</option>
                <option value="jam-JM">Creole English (Jamaican)</option>
                <option value="svc-VC">Creole English (Vincentian)</option>
                <option value="vic-US">Creole English (Virgin Islands)</option>
                <option value="ht-HT">Creole French (Haitian)</option>
                <option value="acf-LC">Creole French (Saint Lucian)</option>
                <option value="crs-SC">Creole French (Seselwa)</option>
                <option value="pov-GW">Creole Portuguese (Upper Guinea)</option>
                <option value="hr-HR">Croatian</option>
                <option value="cs-CZ">Czech</option>
                <option value="da-DK">Danish</option>
                <option value="nl-NL">Dutch</option>
                <option value="dz-BT">Dzongkha</option>
                <option value="en-GB">English</option>
                <option value="eo-EU">Esperanto</option>
                <option value="et-EE">Estonian</option>
                <option value="fn-FNG">Fanagalo</option>
                <option value="fo-FO">Faroese</option>
                <option value="fi-FI">Finnish</option>
                <option value="fr-FR">French</option>
                <option value="gl-ES">Galician</option>
                <option value="ka-GE">Georgian</option>
                <option value="de-DE">German</option>
                <option value="el-GR">Greek</option>
                <option value="grc-GR">Greek (Classical)</option>
                <option value="gu-IN">Gujarati</option>
                <option value="ha-NE">Hausa</option>
                <option value="haw-US">Hawaiian</option>
                <option value="he-IL">Hebrew</option>
                <option value="hi-IN">Hindi</option>
                <option value="hu-HU">Hungarian</option>
                <option value="is-IS">Icelandic</option>
                <option value="id-ID">Indonesian</option>
                <option value="kl-GL">Inuktitut (Greenlandic)</option>
                <option value="ga-IE">Irish Gaelic</option>
                <option value="it-IT">Italian</option>
                <option value="ja-JA">Japanese</option>
                <option value="jw-ID">Javanese</option>
                <option value="kea-CV">Kabuverdianu</option>
                <option value="kab-DZ">Kabylian</option>
                <option value="ka-IN">Kannada</option>
                <option value="kk-KZ">Kazakh</option>
                <option value="km-KM">Khmer</option>
                <option value="rw-RW">Kinyarwanda</option>
                <option value="rn-RN">Kirundi</option>
                <option value="ko-KR">Korean</option>
                <option value="ku-TR">Kurdish</option>
                <option value="ku-TR">Kurdish Sorani</option>
                <option value="ky-KG">Kyrgyz</option>
                <option value="lo-LA">Lao</option>
                <option value="la-VA">Latin</option>
                <option value="lv-LV">Latvian</option>
                <option value="lt-LT">Lithuanian</option>
                <option value="lb-LU">Luxembourgish</option>
                <option value="mk-MK">Macedonian</option>
                <option value="mg-MG">Malagasy</option>
                <option value="ms-MY">Malay</option>
                <option value="dv-MV">Maldivian</option>
                <option value="mt-MT">Maltese</option>
                <option value="gv-IM">Manx Gaelic</option>
                <option value="mi-NZ">Maori</option>
                <option value="mh-MH">Marshallese</option>
                <option value="men-SL">Mende</option>
                <option value="mn-MN">Mongolian</option>
                <option value="mfe-MU">Morisyen</option>
                <option value="ne-NP">Nepali</option>
                <option value="niu-NU">Niuean</option>
                <option value="no-NO">Norwegian</option>
                <option value="ny-MW">Nyanja</option>
                <option value="ur-PK">Pakistani</option>
                <option value="pau-PW">Palauan</option>
                <option value="pa-IN">Panjabi</option>
                <option value="pap-PAP">Papiamentu</option>
                <option value="ps-PK">Pashto</option>
                <option value="fa-IR">Persian</option>
                <option value="pis-SB">Pijin</option>
                <option value="pl-PL">Polish</option>
                <option value="pt-PT">Portuguese</option>
                <option value="pot-US">Potawatomi</option>
                <option value="qu-PE">Quechua</option>
                <option value="ro-RO">Romanian</option>
                <option value="ru-RU">Russian</option>
                <option value="sm-WS">Samoan</option>
                <option value="sg-CF">Sango</option>
                <option value="gd-GB">Scots Gaelic</option>
                <option value="sr-RS">Serbian</option>
                <option value="sn-ZW">Shona</option>
                <option value="si-LK">Sinhala</option>
                <option value="sk-SK">Slovak</option>
                <option value="sl-SI">Slovenian</option>
                <option value="so-SO">Somali</option>
                <option value="st-LS">Sotho, Southern</option>
                <option value="es-ES">Spanish</option>
                <option value="srn-SR">Sranan Tongo</option>
                <option value="sw-SZ">Swahili</option>
                <option value="sv-SE">Swedish</option>
                <option value="de-CH">Swiss German</option>
                <option value="syc-TR">Syriac (Aramaic)</option>
                <option value="tl-PH">Tagalog</option>
                <option value="tg-TJ">Tajik</option>
                <option value="tmh-DZ">Tamashek (Tuareg)</option>
                <option value="ta-LK">Tamil</option>
                <option value="te-IN">Telugu</option>
                <option value="tet-TL">Tetum</option>
                <option value="th-TH">Thai</option>
                <option value="bo-CN">Tibetan</option>
                <option value="ti-TI">Tigrinya</option>
                <option value="tpi-PG">Tok Pisin</option>
                <option value="tkl-TK">Tokelauan</option>
                <option value="to-TO">Tongan</option>
                <option value="tn-BW">Tswana</option>
                <option value="tr-TR">Turkish</option>
                <option value="tk-TM">Turkmen</option>
                <option value="tvl-TV">Tuvaluan</option>
                <option value="uk-UA">Ukrainian</option>
                <option value="ppk-ID">Uma</option>
                <option value="uz-UZ">Uzbek</option>
                <option value="vi-VN">Vietnamese</option>
                <option value="wls-WF">Wallisian</option>
                <option value="cy-GB">Welsh</option>
                <option value="wo-SN">Wolof</option>
                <option value="xh-ZA">Xhosa</option>
                <option value="yi-YD">Yiddish</option>
                <option value="zu-ZU">Zulu</option>
            </select>  
        </div>
        </div>
        <br class=visible-xs />
        <div class = "col-sm-4">
        <button type="button" class="btn btn-success" id=btnTranslate>Translate</button>
        </div>
</div>
<br />
<div class=row>
    <div class ="col-sm-12 text-info">
         <small>Max 400 characters</small>
    </div>
    <div class ="col-sm-12">
        <textarea id="txtWords" class="form-control" placeholder="Enter your words..." rows=6 autofocus></textarea>
    </div>
</div>
<br />
<div class="row text-info">
    <div class ="col-sm-6">
       Powered by <a href="https://mymemory.translated.net/" target=_blank>MyMemory API</a>
    </div>
    <div class="col-sm-6 text-right" id=resultInfo>
    </div>
    <div class ="col-sm-12">
    <div id="divTranslatedWords" class="alert alert-success" style="display: none">
    </div>
    </div>
</div>
</form>
</div>
<input type=hidden id=hidActiveMenu value="hypTool" />
  <input type=hidden id=hidRoot value="../" />

</asp:Content>
<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/LanguageTranslator") %>
</asp:Content>
