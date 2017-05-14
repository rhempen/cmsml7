// JavaScript Document
<!--//--><![CDATA[//><!--

/* Root-Verzeichnis des CMS aus dem pathname ermitteln
 * die Funktionen zum Ermitteln des Root- und MEDIA-Verzeichnisses
 * finden sich in der Datei pathfinder.js
 * */

    var cms      = splitPathname();
// var werte    = new werteListe(location.search);
// var mediadir = mediaDir(werte['dir']);
// var base_url = cms + mediadir;
//var main_css = cms + 'cmsadmin/css/cms_tinymce.css';
//alert(main_css);

tinyMCE.init ({
    selector: 'textarea:not(#shortxt)',
    height: 200,
    menubar: true,
    languages: "de",
    relative_urls : true,
    document_base_url: cms,
    plugins: [
        'advlist autolink lists link image charmap print preview anchor',
        'searchreplace visualblocks code fullscreen wordcount textcolor ',
        'insertdatetime media table contextmenu paste code imagetools'
    ],
    toolbar: '| undo redo | insert | bold italic | forecolor backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image |'
//    external_filemanager_path:"../filemanager/",
//    filemanager_title: "Filemanager",
//    external_plugins: { "filemanager" : "../filemanager/plugin.min.js" }
});
//--><!]]>
