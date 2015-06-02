
(function() {
    $(function() {
        var collapseMyMenu, expandMyMenu, hideMenuTexts, showMenuTexts, collapsePageContent, expandPageContent;
        expandMyMenu = function() {
            return $("nav.sidebar").removeClass("sidebar-menu-collapsed").addClass("sidebar-menu-expanded");
        };
        collapseMyMenu = function() {
            return $("nav.sidebar").removeClass("sidebar-menu-expanded").addClass("sidebar-menu-collapsed");
        };
        showMenuTexts = function() {
            return $("nav.sidebar ul a span.expanded-element").show();
        };
        hideMenuTexts = function() {
            return $("nav.sidebar ul a span.expanded-element").hide();
        };
        collapsePageContent = function() {
            return $("#page-content-wrapper").animate({"margin-left": "0px"});
        };
        expandPageContent = function() {
            return $("#page-content-wrapper").animate({"margin-left": "230px"}, "fast");
        };
        return $("#justify-icon").click(function(e) {
            if ($(this).parent("nav.sidebar").hasClass("sidebar-menu-collapsed")) {
                expandMyMenu();
                showMenuTexts();
                expandPageContent();
                $(this).css({
                    color: "#000"
                });
            } else if ($(this).parent("nav.sidebar").hasClass("sidebar-menu-expanded")) {
                collapseMyMenu();
                hideMenuTexts();
                collapsePageContent();
                $(this).css({
                    color: "#FFF"
                });
            }
            return false;
        });
    });

}).call(this);
