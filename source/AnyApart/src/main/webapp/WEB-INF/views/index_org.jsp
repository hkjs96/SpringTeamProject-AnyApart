<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>AnyApart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/js/main/css/front_20200803.css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/js/main/img/favicon/favicon.ico">
    <script src="${pageContext.request.contextPath }/js/main/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/main/js/jquery.appear.js"></script>
    <script src="${pageContext.request.contextPath }/js/main/js/front.js"></script>
<style type="text/css">
embed[height="200"][width="175"], embed[width="100%"][height="100"], embed[width="160"][height="600"], embed[width="200"][height="400"], embed[width="240"][height="400"], embed[width="250"][height="250"], embed[width="300"][height="250"], embed[width="468"][height="60"], embed[width="500"][height="100"], embed[width="728"][height="90"], iframe[width="100%"][height="120"], iframe[width="200"][height="240"], iframe[width="200"][height="300"], iframe[width="240"][height="350"], iframe[width="240"][height="400"], iframe[width="300"][height="250"], iframe[width="468"][height="60"], iframe[width="600"][height="90"], iframe[width="728"][height="90"], iframe[width="980"][height="90"], img[width="240px"][height="400px"], img[width="460"][height="60"], img[width="468"][height="60"], img[width="600"][height="90"], img[width="720"][height="90"], img[width="728"][height="90"], object[height="120"][width="120"], object[height="200"][width="100%"], object[height="80"][width="100%"], object[width="100%"][height="300"], object[width="100%"][height="60"], object[width="120"][height="60"], object[width="120"][height="600"], object[width="150"][height="150"], object[width="160"][height="600"], object[width="175"][height="200"], object[width="200"][height="100"], object[width="200"][height="150"], object[width="200"][height="300"], object[width="240"][height="240"], object[width="240"][height="400"], object[width="250"][height="250"], object[width="300"][height="250"], object[width="300"][height="300"], object[width="468"][height="60"], object[width="469"][height="70"], object[width="500"][height="100"], object[width="600"][height="90"], object[width="728"][height="90"], object[width="760"][height="90"], .ad-disclaimer-container, iframe[src^="//tempest.services.disqus.com/ads-iframe/"], #content_ad_container, #interads, .ad-container--leaderboard, #videopageadblock, #floatingAdContainer, .ad_w300i, .adsbygoogle, .ad-300, .commercial-unit-mobile-bottom, .mobile-instream-ad-holder-single, #ad_wp_base, #adxtop, #ad_728h, #ad_336_singlebt, .tjads, topadblock, #ad-fullbanner2-billboard-outer, .loop_google_ad, .amp_ad_wrapper, .commercial-unit-mobile-top, div[id*="ScriptRootN"], .b_ad, .ad-engage, #gads_middle, .add_300x250, .ContentAd, a[href^="https://join3.bannedsextapes.com/track/"], .puFloatLine > #puFloatDiv, .td-a-rec, a[href*=".ufinkln.com/"], body > #overover[style="position:fixed;width:100%;height:100%;background:silver;z-index: 2;opacity: 0.1;"], body > #overover[style="position:fixed;width:100%;height:100%;background:silver;z-index: 2;opacity: 0.1;"] ~ #obrazek, a[href*="/fdh/wth.php?"], .BetterJsPopOverlay, div[id^="M"][id*="Composite"], .wpcnt > .wpa, #ad_300X250, #banner-top-right, #bannerfloat22, #bp_banner, #campaign-banner, #footer-banner, #topBanners, #total_banner, .SC_TBlock, .b-header-banner, .banner_header, .banners-middle, .banners_block, .innerBanner, .menu-ads, .post-ads, .reclamTable, .sidebar-ads-container, .special-ads, .top-banners, a[href*="//sub2.bubblesmedia.ru/"], div[id^="google_ads_iframe_"], img[title^="advertisement"], #ADPlaceholder, #ADSLOT_1, #ADSPACE02, #ADSPACE03, #ADSPACE04, #ADVERTISE_RECTANGLE1, #ADVERTISE_RECTANGLE2, #AD_CONTROL_28, #AD_G, #AD_L, #AD_Top, #AD_banner, #AD_banner_bottom, #AD_google, #Ad-Container, #Ad728x90, #AdArea, #AdAreaH, #AdBanner, #AdBar, #AdBillboard, #AdBox2, #AdBox300, #AdContainer, #AdContainerTop, #AdDiv, #AdHeader, #AdImage, #AdLayer1, #AdLayer2, #AdRectangleBanner, #AdSense1, #AdSense2, #AdSense3, #AdServer, #AdTop, #AdTopLeader, #Ad_Center1, #Adbanner, #Adrectangle, #AdsContent, #AdsDiv, #AdsRight, #Ads_BA_CAD, #Ads_BA_CAD2, #Ads_BA_FLB, #Ads_BA_SKY, #AdsenseBottom, #AdsenseTop, #AdvContainer, #AdvHeader, #AdvertisingLeaderboard, #BANNER_728x90, #BB1-ad, #Banner728x90, #BannerAd, #BigBoxAd, #BodyTopAds, #BottomAds, #BottomRightAdWrapper, #ContentAd, #DFM-adPos-leader, #DFP_in_article_mpu, #DFP_top_leaderboard, #DivAd2, #DivTopAd, #DividerAd, #DotnAd_300x250_atf, #GOOGLEADS_BOT, #GoogleAd, #HP1-ad, #HP2-ad, #HeaderAD, #HeaderAd, #HeroAd, #HomepageAd1, #HomepageAd2, #HomepageAd3, #HouseAd, #IC1-ad, #IC2-ad, #IC3-ad, #IM_AD, #LeftAd, #MultiTextAd, #NavAD, #OAS_posRight, #PageLeaderAd, #ServerAd, #SitenavAdslot, #SponsorBarWrap, #SponsoredAd, #Tadspacefoot, #Tadspacehead, #Top-ad, #Top1AdWrapper, #TopAd, #TopAdvert, #TopBannerAd, #TopRightRadvertisement, #WNAd41, #WNAd43, #WNAd46, #WNAd52, #WarningCodecBanner, #ad--article-top, #ad--sidebar, #ad-0, #ad-1, #ad-10, #ad-11, #ad-12, #ad-13, #ad-14, #ad-15, #ad-16, #ad-160, #ad-17, #ad-18, #ad-19, #ad-197, #ad-2, #ad-2-160x600, #ad-20, #ad-21, #ad-213, #ad-22, #ad-23, #ad-24, #ad-25, #ad-250, #ad-250x300, #ad-26, #ad-27, #ad-28, #ad-29, #ad-3, #ad-300, #ad-300x250, #ad-300x250-1, #ad-300x250-2, #ad-32, #ad-4, #ad-5, #ad-6, #ad-7, #ad-728, #ad-728-90, #ad-728x90-1, #ad-8, #ad-9, #ad-970, #ad-a, #ad-anchor, #ad-area, #ad-article, #ad-background, #ad-ban, #ad-banner, #ad-banner-1, #ad-banner-top, #ad-banner_atf-label, #ad-bar, #ad-bg, #ad-billboard, #ad-billboard-bottom, #ad-block, #ad-bottom, #ad-box, #ad-box-1, #ad-box-2, #ad-box1, #ad-box2, #ad-code, #ad-column, #ad-container, #ad-container-1, #ad-container-2, #ad-container-inner, #ad-container-overlay, #ad-desktop-footer, #ad-display-ad, #ad-flex-top, #ad-footer, #ad-fullbanner2, #ad-gpt-bottomrightrec, #ad-gpt-leftrec, #ad-gpt-rightrec, #ad-halfpage, #ad-header, #ad-header-1, #ad-header-2, #ad-header-3, #ad-header-mobile, #ad-header-mobile-contener, #ad-holder, #ad-horizontal, #ad-horizontal-header, #ad-horizontal-top, #ad-img, #ad-inner, #ad-inserter-1, #ad-jack, #ad-label, #ad-large-header, #ad-lead, #ad-leader, #ad-leaderboard, #ad-leaderboard-1, #ad-leaderboard-2, #ad-leaderboard-bottom, #ad-leaderboard-top, #ad-left, #ad-lrec, #ad-main-top, #ad-manager, #ad-mid-rect, #ad-middle, #ad-mpu, #ad-mpu2, #ad-mrec, #ad-north, #ad-north-base, #ad-one, #ad-output, #ad-overlay, #ad-panel, #ad-placement, #ad-pushdown, #ad-rect, #ad-rectangle, #ad-rectangle1, #ad-rectangle1-outer, #ad-rectangle2, #ad-rectangle3, #ad-right, #ad-right-3, #ad-right-sidebar, #ad-right-top, #ad-right2, #ad-righttop, #ad-secondary-sidebar-1, #ad-side, #ad-sidebar, #ad-sidebar-1, #ad-sidebar-2, #ad-sidebar-3, #ad-sidebar-4, #ad-sidebar-5, #ad-sidebar-6, #ad-sidebar1, #ad-sidebar2, #ad-skin, #ad-sky, #ad-skyscraper, #ad-skyscraper1-outer, #ad-slot--header-banner, #ad-slot--leaderboard-bottom, #ad-slot--leaderboard-top, #ad-slot-1, #ad-slot-2, #ad-slot-mpu-1-desktop, #ad-slot-right, #ad-slot-top, #ad-slot1, #ad-slot2, #ad-slot4, #ad-slug-wrapper, #ad-space, #ad-special, #ad-standard-wrap, #ad-stickers, #ad-sticky-footer-container, #ad-text, #ad-top, #ad-top-banner, #ad-top-lock, #ad-top-wrapper, #ad-tower, #ad-tower1, #ad-unit-search-right-bottom, #ad-unit-search-right-top, #ad-unit-search-top, #ad-video, #ad-wrap, #ad-wrap-2, #ad-wrapper, #ad-zone-1, #ad01, #ad02, #ad1-placeholder, #ad11, #ad160, #ad180, #ad250, #ad300, #ad300250top, #ad300x250, #ad300x600, #ad31, #ad32, #ad468, #ad468x60, #ad6, #ad600, #ad728, #ad72890, #ad728x90, #ad90, #ad97090, #adATF300x250, #adBTF300x250, #adBanner, #adBanner1, #adBanner10, #adBanner2, #adBanner3, #adBanner4, #adBanner9, #adBannerBottom, #adBottom, #adBox, #adBox11, #adBrandingStation, #adCarousel, #adChannel, #adChoicesLogo, #adColumn, #adContent, #adDiv, #adDiv1, #adFooter, #adFrame, #adHeader, #adHolder, #adIframe, #adInhouse, #adLayer, #adLayout, #adLeaderboard, #adLeft, #adLink, #adLink1, #adLocation-1, #adLrec, #adMain, #adMessage, #adRight, #adRight1, #adSection, #adSense, #adSide, #adSidebar, #adSidebarSpecial, #adSkinLeft, #adSkinRight, #adSkyscraper, #adSlider, #adSlot1, #adSlot2, #adSlot3, #adSlot4, #adSlot_center, #adSpace, #adSpacer, #adSqb, #adStrip, #adTakeOverLeft, #adTakeOverRight, #adTeaser, #adText, #adTile, #adTop, #adTower, #adUnit, #adValue, #adWrap, #adWrapper, #ad_0, #ad_02, #ad_03, #ad_04, #ad_1, #ad_160x600, #ad_190x90, #ad_2, #ad_3, #ad_300x100, #ad_300x100_m_c, #ad_300x250, #ad_300x250_1, #ad_300x250_2, #ad_300x250_3, #ad_300x250_m_c, #ad_4, #ad_468_60, #ad_5, #ad_6, #ad_7, #ad_728, #ad_728_90, #ad_728x90, #ad_8, #ad_9, #ad_984, #ad_C2, #ad_DisplayAd1, #ad_DisplayAd2, #ad_Feature_Middlebar_468x60, #ad_Header_768x90, #ad_LargeRec01, #ad_anchor, #ad_area, #ad_banner, #ad_banner_top, #ad_bar, #ad_bg, #ad_billboard, #ad_billboard2, #ad_block, #ad_block_0, #ad_block_300x250, #ad_board_after_forums, #ad_bottom, #ad_box, #ad_btmslot, #ad_center, #ad_channel, #ad_close, #ad_cont2, #ad_container, #ad_content, #ad_dfp_premiumrec, #ad_div, #ad_foot, #ad_footer, #ad_frame, #ad_global_above_footer, #ad_global_header1, #ad_global_header2, #ad_header, #ad_holder, #ad_home, #ad_houseslot_a, #ad_houseslot_b, #ad_hy_01, #ad_hy_02, #ad_hy_03, #ad_hy_04, #ad_hy_05, #ad_hy_06, #ad_hy_07, #ad_hy_08, #ad_img, #ad_layer, #ad_layer1, #ad_layer2, #ad_lead1, #ad_leader, #ad_leaderboard, #ad_leaderboard_flex, #ad_leaderboard_top, #ad_left, #ad_left_1, #ad_left_2, #ad_left_3, #ad_leftslot, #ad_link, #ad_lnk, #ad_lrec, #ad_main, #ad_main_top_01, #ad_main_top_05, #ad_main_top_08, #ad_middle, #ad_middle_122, #ad_middle_2, #ad_middle_bottom, #ad_mobile, #ad_mpu, #ad_mpuslot, #ad_mrec1, #ad_mrec2, #ad_overlay, #ad_overlay_content, #ad_overlay_countdown, #ad_panel, #ad_panorama_top, #ad_ph_1, #ad_placeholder, #ad_rec_01, #ad_rectangle, #ad_right, #ad_right3, #ad_right_1, #ad_right_box, #ad_right_rail_flex, #ad_rightslot, #ad_row, #ad_sidebar, #ad_sidebar_1, #ad_skin, #ad_sky, #ad_skyscraper, #ad_skyscraper_1, #ad_skyscraper_right, #ad_slot, #ad_slot_bottom, #ad_slot_right_bottom, #ad_slot_right_top, #ad_space, #ad_sticky_wrap, #ad_text:not(textarea), #ad_thread1_1, #ad_thread_first_post_content, #ad_thread_last_post_content, #ad_top, #ad_top_banner, #ad_topbanner, #ad_topslot, #ad_topslot_b, #ad_unit, #ad_unit_slot2, #ad_unit_slot3, #ad_unit_slot4, #ad_wide, #ad_wrapper, #ad_wrapper2, #adb_bottom, #adbanner, #adbanner-container, #adbanner1, #adbar, #adbdiv, #adblock, #adblock1, #adblock2, #adbottom, #adbottomleft, #adbottomright, #adbox, #adbox1, #adbox2, #adbox_right, #adcenter, #adchoices-icon, #adclose, #adcode, #adcode4, #adcolumn, #adcontainer, #adcontainer1, #adcontainer2, #adcontainer3, #adcontainsm, #adcontent, #adfloat, #adfooter, #adform_leaderboard, #adframe:not(frameset), #adhead, #adheader, #adhesion, #adholder, #adhome, #adid2161, #adimg, #adimg1, #adjs_id, #adkit_mrec1, #adkit_mrec2, #adkit_rectangle, #adlabel, #adlabelfooter, #adlabelheader, #adleaderboard, #adleft, #admain, #admasthead, #admid, #admpufoot, #admputop, #admsg, #adnet, #adnote, #adprovider-default, #adrig, #adright, #adrightbottom, #adriver_top, #adrow, #ads-1, #ads-300-250, #ads-468, #ads-5, #ads-B1, #ads-E1, #ads-banner, #ads-banner-top, #ads-bar, #ads-blog, #ads-bot, #ads-bottom, #ads-by-google, #ads-container, #ads-content, #ads-content-double, #ads-footer, #ads-header, #ads-horizontal, #ads-leaderboard, #ads-link, #ads-menu, #ads-middle, #ads-outer, #ads-position-header-desktop, #ads-post-468, #ads-post10, #ads-right, #ads-right-bottom, #ads-sidebar, #ads-sticky, #ads-submit, #ads-top, #ads-vertical, #ads-wrap, #ads-wrapper, #ads1, #ads120_600-widget-2, #ads125, #ads160_600-widget-3, #ads1_box, #ads2, #ads2_box, #ads3, #ads336x280, #ads4, #ads50, #ads7, #adsBottom, #adsCTN, #adsContainer, #adsContent, #adsHeader, #adsID, #adsPanel, #adsRight, #adsSuperCTN, #adsTop, #adsZone2, #ads_120x60_block, #ads_3, #ads_300x250, #ads_banner, #ads_block, #ads_bottom, #ads_box, #ads_box1, #ads_box2, #ads_central, #ads_container, #ads_content, #ads_expand, #ads_footer, #ads_header, #ads_lb, #ads_left, #ads_line, #ads_page_top, #ads_right, #ads_right_sidebar, #ads_right_top, #ads_superbanner1, #ads_superior, #ads_text, #ads_top, #ads_top_container, #ads_wide, #ads_wrapper, #adsbottom, #adsbox, #adsbox1, #adsbox3, #adscontainer, #adscontainer_background_back_index1100_all, #adscontainer_banner_new_bottom_index_1060, #adscontainer_banner_new_second_index_1060, #adscontainer_banner_new_top_index_1060_2, #adsdiv, #adsense-2, #adsense-bottom, #adsense-middle, #adsense-new, #adsense-right, #adsense-sidebar, #adsense-top, #adsense1, #adsense2, #adsenseHeader, #adsense_top, #adsground, #adside, #adsiframe, #adskyscraper, #adslider, #adslot, #adslot1, #adslot2, #adslot3, #adslot300x250ATF, #adslot300x250BTF, #adslot4, #adslot5, #adslot6, #adslot7, #adspace, #adspace_top, #adspacer, #adsplace1, #adsplace2, #adsplace4, #adsplash, #adspot-300x250-pos-2, #adspot-300x250-pos1, #adspot-300x250-pos3, #adspot-728x90-pos1, #adsquare, #adsright, #adss, #adstop, #adswidget1-quick-adsense, #adswidget2-quick-adsense, #adswidget2-quick-adsense-reloaded-2, #adtagfooter, #adtagheader, #adtagrightcol, #adtext, #adtext-top-content, #adtop, #adtopcenter, #adunit, #adv-Scrollable, #adv-Top, #adv-banner, #adv-box, #adv-container, #adv-gpt-box-container1, #adv-gpt-masthead-leaderboard-container1, #adv-halfpage, #adv-left, #adv-right, #adv-scrollable, #adv-servers-com-1, #adv-top, #adv-x36, #adv-x37, #adv-x38, #adv-x39, #adv-x40, #advCard1, #advTop, #advWrapper, #adv_5, #adv_728x90, #adv_BoxBottom, #adv_Inread, #adv_IntropageOvl, #adv_LdbMastheadPush, #adv_Skin, #adv_adsense_300_dx, #adv_adsense_300_m, #adv_config, #adv_halfpage, #adv_id, #adv_network, #adv_right, #adv_sky, #adv_top, #adver, #advert-1, #advert-2, #advert-banner, #advert-block, #advert-leaderboard, #advert-posterad, #advert-skyscraper, #advert-top, #advert1, #advert2, #advertMarkerHorizontalConatiner, #advertRight, #advert_05, #advert_1, #advertise, #advertise-here, #advertise2, #advertisement-detail1, #advertisement-detail2, #advertisement1, #advertisement2, #advertisement3, #advertisement_banner, #advertisement_box, #advertising-container, #advertising-right, #advertising-top, #advertising2, #advertisingTop, #advertising_1, #advertising_2, #advertising_300, #advertising_300_under, #advertising_300x105, #advertising_320, #advertising_728, #advertorial, #adverts, #adverts_base, #adverttop, #advetisement_300x250, #advtext, #advtop, #adwallpaper, #adwin, #adwrapper, #adx_ad, #adzone-halfpage_1, #adzone-leaderboard_1, #adzone-leaderboard_2, #adzone-mpu_1, #adzone-mpu_2, #adzone-wallpaper, #adzone_content, #after-dfp-ad-mid1, #after-dfp-ad-mid2, #after-dfp-ad-mid3, #after-dfp-ad-mid4, #after-dfp-ad-top, #all-ads, #amazon-ads, #amzn_assoc_ad_div_adunit0_0, #anchor-ad, #article-ad, #article_ad, #aside_ad, #atwAdFrame0, #atwAdFrame1, #atwAdFrame2, #atwAdFrame3, #atwAdFrame4, #aw-ad-container, #background-ad-cover, #banner-300x250-area, #banner-300x600-area, #banner-728x90, #banner-728x90-area, #banner-ad, #banner-ads, #banner-advert-container, #banner-skyscraper, #banner300x250, #banner468, #banner728, #banner728x90, #bannerAd, #bannerAd_ctr, #bannerAd_rdr, #bannerGoogle, #banner_ads, #bannerad, #bannerads, #banneradspace, #baseMedRec, #bbccom_leaderboard, #bbccom_mpu, #bbccom_sponsor_section, #bbo_ad1, #bgad, #bigAd, #big_ad, #bigbox-ad, #billboard_ad, #bl11adv, #block-dfp-billboard-leaderboard, #block-dfp-mpu-1, #block-dfp-mpu-2, #block-ltadvertising-ltadvertising, #blogads, #body_ad, #bot_ad, #botad, #bottom-ad, #bottom-ad-banner, #bottom-ad-wrapper, #bottom-ads, #bottom-ads-bar, #bottom-ads-container, #bottomAd, #bottomAds, #bottomDDAd, #bottomLeftAd, #bottomRightAd, #bottomRightPanelAdContainer, #bottom_ad, #bottom_ad_area, #bottom_ad_container, #bottom_ad_wrapper, #bottom_ads, #bottomad, #bottomadbanner, #bottomads, #box_ad, #boxad, #boxad1, #boxad2, #boxad3, #boxad4, #boxad5, #boxes-box-ad_300x250_1, #boxes-box-ad_728x90_1, #branding_click, #btmad, #budget_adDiv, #buysellads, #c_wdt_ads_2, #carbonads-container, #catad, #chartAdWrap, #cmn_ad_tag_head, #commentTopAd, #companionAd, #content-ad, #content-left-ad, #contentAd, #contentAdSense, #content_ad, #content_ad_2, #content_ads, #content_ads_footer, #contentad, #contentad-adsense-getfile-1, #contentad-adsense-getfile-top-1, #contentad-adsense-homepage-1, #contentad-commercial-1, #contentad-content-box-1, #contentad-footer-tfm-1, #contentad-last-medium-rectangle-1, #contentad-lower-medium-rectangle-1, #contentad-story-bottom-1, #contentad-story-middle-1, #contentad-storyad-1, #contentad-superbanner-1, #contentad-superbanner-2, #contentad-superbanner-3, #contentad-top-adsense-1, #contentad-topbanner-1, #coverads, #crt-adblock-b, #cubeAd, #custom-advert-leadboard-spacer, #daumAd, #desktop-ad-btf, #dfp-ad-1, #dfp-ad-billboard_leaderboard, #dfp-ad-billboard_leaderboard-wrapper, #dfp-ad-leaderboard, #dfp-ad-leaderboard-wrapper, #dfp-ad-mpu_1, #dfp-ad-mpu_1-wrapper, #dfp-ad-mpu_2, #dfp-ad-mpu_2-wrapper, #dfp-ad-right1, #dfp-ad-right2, #dfp-ad-right3, #dfp-ad-top, #dfp-ad-top-wrapper, #dfp-article-mpu, #dfp-tlb, #dfp-wallpaper-wrapper, #dfp_container, #dfp_leaderboard, #dfrads-widget-6, #display_ad, #display_ads_footer, #display_ads_footer_last, #displayad_carousel, #displayad_rectangle, #div-ad-bottom, #div-ad-inread, #div-ad-leaderboard, #div-ad-r, #div-ad-r1, #div-ad-top, #div-ad-top_banner, #div-gpt-ad-300-inline1, #div-gpt-ad-300-right, #div-gpt-mrec, #div-insticator-ad-1, #div-insticator-ad-2, #div-social-ads, #div-vip-ad-banner, #divAd, #divAdBox, #divAdLeft, #divAdRight, #divAds, #divAdvertisement, #divExoLayerWrapper, #divTopAd, #div_ad_float, #div_advt_right, #div_belowAd, #dotnAd-988x90-custom, #download-leaderboard-ad-bottom, #download-leaderboard-ad-top, #download_ad, #dsk-banner-ad-a, #dsk-banner-ad-b, #dsk-box-ad-d, #dv-gpt-ad-bigbox-wrap, #em_ad_superbanner, #exoAd, #fav-advert, #fav-advertwrap, #feed_links_ad_container, #first-adframe, #fixedAd, #floatAD_l, #floatAD_r, #floatads, #floatingAd, #floating_ads_bottom_textcss_container, #footAd, #footad, #footer-ad, #footer-ad-wrapper, #footer-ads, #footerAd, #footerAdDiv, #footerAdd, #footerAds, #footer_ad, #footer_ad_modules, #footer_adcode, #footer_ads, #footer_adspace, #footerad, #footerads, #fpad2, #frnAdSky, #frnBannerAd, #gAds, #gStickyAd, #gad300x250, #gad728x90, #gallery-ad, #gallery-ad-container, #gallery_ad, #gf-mrecs-ads, #gg_ad, #global_header_ad, #google-ad, #google-ads, #google-ads-5, #google-ads-container1, #google-adsense, #google-adwords, #google-top-ads, #googleAd, #googleAds, #google_ad, #google_ad_inline, #google_ads, #google_adsense, #googlead, #googlead2, #googleadleft, #googleads, #googleadsense, #gpt-ad-1, #gpt-ad-slot-regwall, #gwd-ad, #hd_ad, #head-ad, #head-ad-space, #head-banner468, #headAd, #head_ad, #head_ads, #headad, #header-ad, #header-ad-1, #header-ad-container, #header-ad-wrapper, #header-ads, #header-advert, #header-banner-ad, #headerAd, #headerAds, #headerAdv, #header_ad, #header_ad_container, #header_adcode, #header_ads, #header_adv, #header_right_ad, #headerad, #headerads, #hideAds, #hideads, #home-ad, #homeSideAd, #homead, #homepage_top_ad, #iframe-ad, #im_popupDiv, #im_popupFixed, #in_ad_col_a, #index-ad, #index_ad, #infinite-adslot-1, #influads_block, #inlineAd, #inlineads, #inner-ad, #inner-advert-row, #innerad, #insticator-container, #interstitialAdContainer, #interstitial_ad, #intro_ad_1, #iqadtile1, #iqadtile2, #iqadtile3, #iqadtile4, #iqadtile5, #iqadtile8, #iqadtile9, #iqd_align_Ad, #iqd_mainAd, #iqd_rightAd, #iqd_topAd, #js-image-ad-mpu, #jsid-ad-container-post_above_comment, #kbbAdsMainCenterAd, #layer_ad, #layerad, #layout-header-ad-wrapper, #lblAds, #leaderBoardAd, #leaderboard-ad, #leaderboard-ad-1, #leaderboard-ad-bottom, #leaderboard-ad-container, #leaderboardAd, #leaderboard_728x90, #leaderboard_bottom_ad, #leaderboard_top_ad, #left-ad, #left-bottom-ad, #leftAd_fmt, #leftAd_rdr, #leftAds, #left_ad, #left_ads, #left_adv, #left_float_ad, #left_skyscraper_ad, #leftad, #leftads, #leftframeAD, #leftrail_dynamic_ad_wrapper, #li-right-geobooster-oas, #linkads, #locked-footer-ad-wrapper, #logo_ad, #lower-ads, #lowerads, #lsadvert-left_menu_1, #lsadvert-left_menu_2, #lsadvert-top, #main-ad, #mainAd, #main_ad, #main_top_ad, #masterad, #masthead_ad, #mediumRectangleAd, #medrec_bottom_ad, #medrec_top_ad, #menu-ads, #menuad, #midAD, #middle-ad, #middleAd, #middle_ad, #middle_ads, #middle_mpu, #middleads, #middleads2, #mobile-ad-container, #mobileAd_holder, #mochila-column-right-ad-300x250-1, #mod-ad-gemini-rm-1, #mod-tafad, #modal-ad, #moreads, #mpu-sidebar, #mpu2, #mrt-node-Col2-1-AdBlockPromo, #mu_2_ad, #mvp-foot-ad-wrap, #mvp-post-bot-ad, #my-ads, #my-adsFPAD, #my-adsFPL, #my-adsFPT, #my-adsHPSPON-base, #my-adsLREC, #my-adsLREC2, #my-adsLREC4-base, #my-adsMAST, #myAd, #native_ad2, #ng-ad, #oas_Middle, #oas_Middle1, #oas_Middle2, #oas_Right1, #oas_Top, #oas_Top1, #oba_message, #origami-ad-container, #overlay-ad-bg, #overlay_ad, #overlayad, #p-advert, #p-googleadsense-portletlabel, #page_top_ad, #paidlistingAds, #panel-ad, #perm_ad, #personalization_ads, #pinned_advert_top, #pinned_advert_top_wrapper, #player-ads, #player-advertising, #playerAd, #player_ad, #player_ads, #playerads, #polar-sidebar-sponsored, #popupAd, #post-ad, #postAd, #post_advert, #pr_ad, #pre-adv, #premiumAdTop, #premium_ad, #preroll_ads, #pub728x90, #publicidad, #publicidad-video, #pushDownAd, #pushdown_ad, #quads-ad1_widget, #quads-ad2, #quads-ad2_widget, #quads-ad4, #r-ad-tag, #refine-ad, #reklam_buton, #reklam_center, #reklama, #related-ads, #related_ads, #responsive_ad, #richad, #right-ad, #right-ad-1, #right-ad-block, #right-adds, #right-ads, #right-ads-rail, #rightAD, #rightAd, #rightAd1, #rightAd300x250, #rightAd300x250Lower, #rightAd_rdr, #rightAds, #rightSideAd, #right_ad, #right_ads, #right_advert, #right_top_ad, #rightad, #rightad1, #rightad2, #rightads, #rightrail-ad, #rightsideadstop, #rladvt, #rn_ad_native_ppkpu, #rr_ad, #scroll_ad, #search-ad, #searchAd, #searchAdSenseBox, #second_ad_div, #section-ad, #sector-widget__tiny-ad, #sgAdScGp160x600, #show-ad, #show-sticky-ad, #showAd, #showads, #side-ad, #side-ads, #sideAD, #sideAd, #sideAd1, #sideAd2, #sideAds, #side_ad, #side_ads, #sidead, #sideadvert, #sidebar-ad, #sidebar-ad-1, #sidebar-ad-2, #sidebar-ads, #sidebar-adv, #sidebar-advertisement, #sidebar-feed-ad, #sidebar-main-ad, #sidebarAd, #sidebarAdSense, #sidebarAds, #sidebar_ad, #sidebar_ad_1, #sidebar_ad_2, #sidebar_ad_container, #sidebar_ads, #sidebarad, #simple_ads_manager_widget-3, #singleADS, #singlead, #skin-ad, #skin-ad-left-rail-container, #skin-ad-right-rail-container, #sky-left, #sky-right, #skyscraper-ad, #skyscraperAd, #skyscraper_ad, #skyscrapper-ad, #slide_ad, #slider_ad, #smallBannerAdboard, #snippet--ads_bottom, #snippet--ads_menu, #snippet--ads_mobile, #snippet--ads_sides, #specialAd, #sponsor-links, #sponsorAdDiv, #sponsorBar, #sponsorText, #sponsor_ad, #sponsor_bar, #sponsor_header, #sponsor_link, #sponsored-links, #sponsored-listings, #sponsored-products, #sponsored-widget, #sponsoredAd, #sponsoredBottom, #sponsoredContentTile_midCol, #sponsoredContentTile_rightCol, #sponsoredProducts2_feature_div, #sponsoredProducts_feature_div, #sponsoredResults, #sponsoredTop, #sponsored_content, #sponsored_game_row_listing, #sponsored_links, #sponsoredlinks, #sponsoredwellcontainerbottom, #spotadvert2, #spotadvert3, #spotadvert5, #square-ad, #squareAds, #srp_adsense-top, #sticky-ad, #sticky-ad-bottom, #sticky-ad-container, #sticky-ad-header, #sticky-rail-ad, #stickyAd, #sticky_ad_bar, #stickyad, #stickyads, #story-ad-2-wrapper, #story-ad-3-wrapper, #story-ad-7-wrapper, #strip_adv, #stripadv, #td_adunit1, #td_adunit1_wrapper, #td_adunit2, #td_sponsorAd, #text-ad, #text-ads, #text-link-ads, #textAd, #text_ad, #text_ads, #textad, #textlink_ads_placeholder, #tgt1-Col2-0-ComboAd-Proxy, #theAd, #thirdPartySponsorLinkAds, #tobsideAd, #top-ad, #top-ad-area, #top-ad-banner, #top-ad-container, #top-ad-desktop, #top-ad-slot-1, #top-ad-wrapper, #top-ads, #top-advert, #top-banner-ad, #top-banner-ad-browser, #top-not-ads, #top-right-ad, #topAD, #topAd, #topAd728x90, #topAdArea, #topAdBanner, #topAdContainer, #topAdDiv, #topAdHolder, #topAds, #topAdv, #topBannerAd, #topImgAd, #top_AD, #top_ad, #top_ad_banner, #top_ad_container, #top_ad_wrapper, #top_add, #top_ads, #top_ads_box, #top_ads_container, #top_adspace, #top_adv, #top_advert, #top_mpu, #top_right_ad, #top_wide_ad, #topad, #topad1, #topad2, #topad728, #topadbanner, #topadblock, #topads-wrapper, #topadzone, #topbannerad, #towerad, #tp-header-ad, #tp-sidebar-ad, #tvd-ad-top, #txtads, #underPlayerAd, #vc-maincontainer-ad, #vc-maincontainer-midad, #video-ad, #video-adv, #video-advert, #videoAd, #videoAdContainer, #video_ads_overdiv, #video_adv, #video_advert3, #video_reklamy, #videoad, #videoads, #vz_im_ad, #watch7-sidebar-ads, #wd-sponsored, #wide_ad_unit, #wpladbox1, #wpladbox2, #yandex_ad, .AD-POST, .AD300, .AD300x250, .ADBAR, .ADBox, .ADInfo, .ADTop, .AD_2, .AD_Leaderboard, .AD_area, .Ad--empty, .Ad-Container, .Ad-label, .Ad-leaderboard, .Ad300x250, .AdBar, .AdBox, .AdContainer-Sidebar, .AdHere, .AdHolder, .AdMod, .AdModule, .AdPanel, .AdSense, .AdSidebar, .AdSlot, .AdSticky, .AdTitle, .AdTop, .AdUnit, .AdWidget_ImageWidget, .Ad_300x250, .Ads-leaderboard, .Ads-slot, .AdsRec, .Ads_4, .Adsense, .Adv300x250, .Advert-label, .AdvertisementText, .Advrt, .ArticleAd, .Banner300x250, .BannerAd, .BottomAd-container, .Cheat__top-ad, .DisplayAd, .FooterAd, .GRVAd, .GalleryViewerAdSuppress, .GoogleAd, .GoogleDfpAd, .HeaderAd, .HomeAds, .LeftAd, .ListingAd-container, .ModeLayout-ad, .NavBarAd, .OcelotAdModule, .OcelotAdModule-ad, .PageTopAd, .PcSideBarAd, .Post__ad, .ProductAd, .RC-AD, .RelatedAds, .ResponsiveAd, .RightAd, .RightAdWrapper, .RightRailAd, .SideAd, .SideAds, .SimpleAd, .SponsorAds, .SponsoredContentWidget, .SponsorshipText, .SummaryPage-HeaderAd, .TextAd, .TopAd, .TopAdContainer, .TopBannerAd, .TopRightRadvertisement, .V7-advert, .VideoAd, .WPBannerizeWidget, ._SummaryPageHeaderAdView, ._SummaryPageSidebarStickyAdView, .__hub--ad, ._bannerAds, .a-ad, .a160x600, .a300x250, .a468x60, .a728x90, .a970x250_1_ad_label, .aa_AdAnnouncement, .aa_ad-728x15, .aalb-pa-ad-unit, .aarpe-ad-wrapper, .aarpe-fixed-ad, .abovead, .ac_adbox, .ac_adbox_inner, .acm_ad_zones, .ad--300, .ad--300x250, .ad--728x90, .ad--BANNER, .ad--MAIN, .ad--b, .ad--bottom, .ad--bottom-label, .ad--c, .ad--centered, .ad--container, .ad--desktop, .ad--footer, .ad--google, .ad--header, .ad--horseshoe__content, .ad--in-article, .ad--inner, .ad--large, .ad--leaderboard, .ad--marker-inner, .ad--mid-content, .ad--mobile, .ad--mpu, .ad--rail, .ad--rectangle, .ad--right, .ad--sidebar, .ad--sponsor-content, .ad--stroer, .ad--top, .ad-01, .ad-02, .ad-1, .ad-125, .ad-160, .ad-160-600, .ad-160x600, .ad-2, .ad-250, .ad-250x250, .ad-3, .ad-300-2, .ad-300-250, .ad-300-600, .ad-300x100, .ad-300x250, .ad-300x600, .ad-336x280, .ad-350, .ad-4, .ad-468, .ad-5, .ad-728, .ad-728-90, .ad-728x90, .ad-8, .ad-88x31, .ad-970, .ad-970-90, .ad-970x90, .ad-BANNER, .ad-LREC, .ad-PENCIL, .ad-TOPPER, .ad-a, .ad-above-header, .ad-after-content, .ad-anchor, .ad-area, .ad-article-wrapper, .ad-atf, .ad-atf-medRect, .ad-b, .ad-background, .ad-banner, .ad-banner-bottom-container, .ad-banner-container, .ad-banner-image, .ad-banner-label, .ad-banner-leaderboard, .ad-banner-top, .ad-banner-wrapper, .ad-banners, .ad-bar, .ad-below, .ad-bg, .ad-big, .ad-bigbox, .ad-billboard, .ad-block, .ad-block-300, .ad-block-section, .ad-block-wrapper, .ad-block__inner, .ad-bnr, .ad-board, .ad-body, .ad-border, .ad-bot, .ad-bottom, .ad-box-title, .ad-box-wrapper, .ad-box1, .ad-box2, .ad-boxrr-wrapper, .ad-break, .ad-breakout, .ad-btn, .ad-button, .ad-buttons, .ad-callout, .ad-caption, .ad-card, .ad-card-container, .ad-cat, .ad-cell, .ad-center, .ad-centered, .ad-choices, .ad-close-button, .ad-cluster, .ad-code, .ad-codes, .ad-col, .ad-column, .ad-comment, .ad-contain, .ad-container-728, .ad-container-bottom, .ad-container-header, .ad-container-left, .ad-container-responsive, .ad-container-right, .ad-container-top, .ad-container__ad-slot, .ad-content, .ad-content-area, .ad-cover, .ad-desktop, .ad-disclaimer, .ad-display, .ad-div, .ad-dt, .ad-element, .ad-entity-container, .ad-ex, .ad-expand, .ad-field, .ad-first, .ad-fix, .ad-fixed, .ad-flag, .ad-flex, .ad-footer, .ad-frame, .ad-full, .ad-full-width, .ad-google, .ad-gpt, .ad-grid, .ad-grid-container, .ad-group, .ad-head, .ad-header, .ad-header-container, .ad-heading, .ad-hero, .ad-hide-mobile, .ad-hideable, .ad-hint, .ad-holder, .ad-homepage, .ad-horizontal, .ad-housepromo-d-wrapper, .ad-hpto, .ad-icon, .ad-identifier, .ad-iframe, .ad-img, .ad-in-post, .ad-index, .ad-inline, .ad-inner, .ad-inner-container, .ad-insert, .ad-inserter, .ad-integrated-display, .ad-interstitial, .ad-item, .ad-label, .ad-last, .ad-layer, .ad-lazy, .ad-lb, .ad-leader, .ad-leader-bottom, .ad-leader-plus-top, .ad-leader-top, .ad-leaderboard, .ad-leaderboard-container, .ad-leaderboard-splitter, .ad-leaderboard-top, .ad-leaderboard-wrapper, .ad-left, .ad-line, .ad-link, .ad-link-label, .ad-links, .ad-loaded, .ad-location, .ad-lrec, .ad-main, .ad-manager-ad, .ad-marker, .ad-masthead, .ad-masthead-1, .ad-masthead-left, .ad-mb, .ad-med-rec, .ad-medium, .ad-medium-rectangle, .ad-message, .ad-microsites, .ad-mobile, .ad-mobile-banner, .ad-mod, .ad-module, .ad-mpu, .ad-mpu-bottom, .ad-mpu-middle, .ad-mpu-placeholder, .ad-mpu-plus-top, .ad-mpu__aside, .ad-mrec, .ad-native, .ad-new, .ad-new-box, .ad-no-notice, .ad-note, .ad-notice, .ad-on-top, .ad-one, .ad-output-middle, .ad-overlay, .ad-padding, .ad-page-leader, .ad-panel, .ad-panel-wrap, .ad-panorama, .ad-place, .ad-placeholder, .ad-placeholder-leaderboard, .ad-placement, .ad-point, .ad-popup, .ad-popup-content, .ad-position, .ad-position-1, .ad-position-2, .ad-post, .ad-post-footer, .ad-promo, .ad-promoted-game, .ad-promotion-native, .ad-pub, .ad-pushdown, .ad-r, .ad-rail, .ad-reader, .ad-reader-con-item, .ad-rect, .ad-rectangle, .ad-rectangle-container, .ad-refresh, .ad-region, .ad-region__top, .ad-responsive-slot, .ad-right, .ad-right-txt, .ad-root, .ad-row, .ad-s, .ad-scroll, .ad-scrollpane, .ad-search-grid, .ad-section, .ad-sense, .ad-sense-ad, .ad-sep, .ad-showcase, .ad-side, .ad-side-top, .ad-sidebar, .ad-size-leaderboard, .ad-size-medium-rectangle-flex, .ad-sky, .ad-sky-left, .ad-sky-right, .ad-sky-wrap, .ad-skyscraper, .ad-slider, .ad-slot, .ad-slot-banner, .ad-slot-container, .ad-slot-container-1, .ad-slot-sidebar, .ad-slot__label, .ad-slug, .ad-source, .ad-sp, .ad-space, .ad-space-container, .ad-spacer, .ad-span, .ad-splash, .ad-sponsor, .ad-sponsors, .ad-spot, .ad-square, .ad-sticky, .ad-sticky-container, .ad-stickyhero, .ad-strip, .ad-style2, .ad-subtitle, .ad-superbanner, .ad-t, .ad-table, .ad-tag, .ad-text, .ad-text-label, .ad-text-link, .ad-thanks, .ad-tile, .ad-title, .ad-top, .ad-top-banner, .ad-top-billboard, .ad-top-billboard-init, .ad-top-leaderboard, .ad-top-mpu, .ad-top-wrapper, .ad-topbanner, .ad-topper, .ad-tower, .ad-tower-container, .ad-two, .ad-txt, .ad-type, .ad-type-cube, .ad-type-flex-leaderboard, .ad-type2, .ad-type3, .ad-unit, .ad-unit-container, .ad-unit-text, .ad-unit-wrapper, .ad-v, .ad-v2, .ad-vertical, .ad-warning, .ad-watermark, .ad-wgt, .ad-wide, .ad-widget, .ad-wireframe, .ad-wireframe-wrapper, .ad-wrap, .ad-wrap--leaderboard, .ad-wrapper, .ad-wrapper__ad-slug, .ad-x10x20x30, .ad-zone, .ad-zone-container, .ad.inner, .ad.item, .ad.module, .ad01, .ad02, .ad03, .ad04, .ad10, .ad100, .ad1000, .ad120, .ad125, .ad125x125, .ad140, .ad160, .ad160_l, .ad160_r, .ad160x600, .ad180, .ad19, .ad1x1, .ad200, .ad234, .ad240, .ad250, .ad250x250, .ad250x300, .ad300, .ad300250, .ad300_2, .ad300w, .ad300x100, .ad300x250, .ad300x250Module, .ad300x600, .ad320x50, .ad336, .ad336x280, .ad350, .ad350r, .ad360, .ad400, .ad468, .ad468x60, .ad600, .ad728, .ad72890, .ad728_cont, .ad728cont, .ad728x90, .ad90, .ad960, .ad970x90, .ad980, .adAboveSiteHeader, .adActive, .adAlert, .adArea, .adAreaNative, .adAreaNativeDmm, .adAreaTopTitle, .adBanner, .adBanner300x250, .adBar, .adBillboard, .adBlock, .adBox, .adBox1, .adBox2, .adBtm, .adCaptionText, .adCenter, .adChoice, .adChrome, .adClose, .adColumn, .adCont, .adContainerNewsLeadMid, .adContainerSide, .adContent, .adDiv, .adDrawer, .adElement, .adFrame, .adFrameCnt, .adFull, .adGroup, .adHalfPage, .adHead, .adHeader, .adHeadline, .adHolder, .adHolderStory, .adHoldert, .adImg, .adInContent, .adInfo, .adInner, .adItem, .adLabel, .adLeaderboard, .adLeft, .adLine, .adLink, .adLoader, .adLocation, .adMarker, .adMediumRectangle, .adMessage, .adMgsBanner, .adMiddle, .adMod, .adModule, .adNone, .adNote, .adNotice, .adNotification, .adOuterContainer, .adOverlay, .adPanel, .adPlaceholder, .adPlacement, .adPod, .adPosition, .adPremium, .adRectangle, .adRectangleBanner, .adResponsive, .adResult, .adRight, .adRotator, .adRow, .adRowTopWrapper, .adSection, .adSense, .adSide, .adSizer, .adSkin, .adSky, .adSkyscraper, .adSlide, .adSlot, .adSlotContainer, .adSpace, .adSpacer, .adSpec, .adSponsor, .adSpot, .adSquare, .adTab, .adTag, .adText, .adTextWrap, .adTile, .adTitle, .adTop, .adTopWrapper, .adTower, .adTxt, .adUnit, .adVertical, .adVideo, .adWidget, .adWrap, .adWrapper, .adZone, .ad_0, .ad_1, .ad_160x600, .ad_2, .ad_200, .ad_240, .ad_250, .ad_3, .ad_300, .ad_300250, .ad_300_250, .ad_300_600, .ad_300x250, .ad_300x600, .ad_320x50, .ad_336, .ad_336x280, .ad_4, .ad_468, .ad_468x60, .ad_728, .ad_72890, .ad_728_90, .ad_728_top, .ad_728x90, .ad_90, .ad_960, .ad__caption, .ad__centered, .ad__container, .ad__content, .ad__create, .ad__disclosure, .ad__header, .ad__inline, .ad__item, .ad__label, .ad__leaderboard, .ad__placeholder, .ad__sticky-desktop, .ad__superbanner, .ad__wrapper, .ad__wrapper-element, .ad_a, .ad_adInfo, .ad_ad_300, .ad_amazon, .ad_area, .ad_background, .ad_banner, .ad_banner2, .ad_banner_468, .ad_bar, .ad_bg, .ad_bigbox, .ad_blk, .ad_block, .ad_bn, .ad_body, .ad_border, .ad_bottom, .ad_bottom_space, .ad_box, .ad_box2, .ad_box_2, .ad_btn, .ad_c, .ad_caption, .ad_center, .ad_choice, .ad_choices, .ad_cl, .ad_click, .ad_code, .ad_col, .ad_column, .ad_cont, .ad_container, .ad_content, .ad_content_img, .ad_deferrable, .ad_desktop, .ad_disclaimer, .ad_div, .ad_filler, .ad_float, .ad_footer, .ad_frame, .ad_global_header, .ad_google, .ad_google_shhide, .ad_grein_botn, .ad_group, .ad_halfpage, .ad_head, .ad_header, .ad_headline, .ad_holder, .ad_horizontal, .ad_hover_href, .ad_image, .ad_img, .ad_item, .ad_l, .ad_label, .ad_large, .ad_leader_bottom, .ad_leader_plus_top, .ad_leaderboard, .ad_left_cell, .ad_line, .ad_link, .ad_link1, .ad_long, .ad_lt, .ad_main, .ad_margin, .ad_medium_rectangle, .ad_middle, .ad_mobile, .ad_module, .ad_mpu, .ad_mpu_top, .ad_msg, .ad_note, .ad_notice, .ad_panel, .ad_pic, .ad_placeholder, .ad_placement, .ad_position, .ad_r, .ad_rec, .ad_rect, .ad_rectangle, .ad_rhs, .ad_right, .ad_right_cell, .ad_row, .ad_side, .ad_sidebar, .ad_sidebar_bigbox, .ad_size_160x600, .ad_sky, .ad_skyscraper, .ad_slot, .ad_slug_table, .ad_small, .ad_space, .ad_space_730, .ad_spacer, .ad_spot, .ad_square, .ad_stream_hd, .ad_strip_noline, .ad_tag, .ad_text, .ad_text_w, .ad_title, .ad_top, .ad_top_1, .ad_top_2, .ad_top_banner, .ad_under, .ad_unit, .ad_unit_wrapper, .ad_url, .ad_warn, .ad_widget, .ad_widget_image, .ad_widget_title, .ad_word, .ad_wrap, .ad_wrapper, .ad_zone, .adace-adi-popup-wrapper, .adarea, .adb-top, .adbanner, .adbar, .adblock-main, .adborder, .adbordertop, .adbot, .adbottom, .adbox-border-desk, .adbox-rectangle, .adbox-title, .adbox1, .adbox2, .adbox_310x400, .adboxid, .adbreak, .adbttm_right_300, .adbttm_right_label, .adbutler-div-large-banner, .adbutton, .adcard, .adcenter, .adchoices, .adclass, .adcode, .adcolumn, .adcomment, .adcont, .adcontenttop, .adcopy, .adctr, .add-position-right, .add300, .add300x250, .addbanner, .addisclaimer, .addiv, .addtitle, .addvert, .adfeedback, .adfoot, .adfooter, .adframe, .adfree, .adg-rects, .adg_cell, .adg_row, .adg_table, .adg_table_cell, .adg_table_row, .adhead, .adheader, .adhesion-block, .adhide, .adhint, .adholder, .adholder2, .adiframe, .adinfo, .adinjwidget, .adinner, .adintext, .adkingprobanner, .adkit, .adline, .adlink, .adlinks, .adlist, .adloaded, .adloc-is-banner, .admain, .admania_themead, .admarker, .admiddle, .administer-ad, .admz, .adnSpot, .adname, .adnl_zone, .adnotice, .adnotification, .adpic, .adplace, .adplacement, .adpost, .adrechts, .adrect, .adright, .adriverBanner, .adrotate-sponsor, .adrotate_widgets, .adrow, .adrrr, .ads--desktop, .ads--full, .ads--menu-principal, .ads--no-preload, .ads--sidebar, .ads--square, .ads--top, .ads-1, .ads-2, .ads-3, .ads-300, .ads-300-250, .ads-300x250, .ads-300x250-sidebar, .ads-300x600, .ads-336x280, .ads-728, .ads-728-90, .ads-728x90, .ads-970x90, .ads-ad, .ads-area, .ads-article-right, .ads-aside, .ads-banner, .ads-below-view-content.center, .ads-bg, .ads-bing-belly, .ads-bing-bottom, .ads-bing-top, .ads-block, .ads-block-bottom-wrap, .ads-block-panel-tipo-1, .ads-border, .ads-bottom, .ads-bottom-center, .ads-bottom-center-pagination, .ads-box, .ads-by, .ads-callback, .ads-card, .ads-cnt, .ads-code, .ads-col, .ads-content, .ads-custom, .ads-div, .ads-flow, .ads-footer, .ads-fr, .ads-full, .ads-google, .ads-google-bottom, .ads-google-top, .ads-half, .ads-header, .ads-header-desktop, .ads-here, .ads-holder, .ads-horizontal, .ads-iframe, .ads-image, .ads-in-content, .ads-inarticle, .ads-inline, .ads-inner, .ads-interlinks, .ads-item, .ads-label, .ads-large, .ads-leaderboard, .ads-left, .ads-line, .ads-link, .ads-list, .ads-loaded, .ads-long, .ads-main, .ads-margin, .ads-middle, .ads-module, .ads-mpu, .ads-narrow, .ads-one, .ads-panel, .ads-placment, .ads-post, .ads-rail, .ads-rect, .ads-rectangle, .ads-relatedbottom, .ads-right, .ads-section, .ads-side, .ads-sidebar, .ads-single, .ads-skyscraper, .ads-small, .ads-square, .ads-text, .ads-title, .ads-tittle, .ads-top, .ads-top-center, .ads-top-right, .ads-two, .ads-txt, .ads-wide, .ads-widget, .ads-widget-content, .ads-widget-content-wrap, .ads-wrap, .ads-wrapper, .ads-zone, .ads.widget, .ads01, .ads1, .ads10, .ads11, .ads12, .ads160, .ads160-600, .ads160_600-widget, .ads160x600, .ads2, .ads250, .ads3, .ads300, .ads300-250, .ads300x250, .ads300x250-thumb, .ads300x600, .ads4, .ads600, .ads728, .ads728x90, .ads970, .adsArea, .adsBanner, .adsBlock, .adsBottom, .adsBox, .adsDiv, .adsFull, .adsHeader, .adsRight, .adsRow, .adsSlot300600, .adsSpacing, .adsText, .adsTop, .adsTopCont, .adsTxt, .adsWidget, .ads_1, .ads_120x60, .ads_180, .ads_2, .ads_3, .ads_300, .ads_300x250, .ads_300x600, .ads_468, .ads_468x60, .ads_728, .ads_728x90, .ads__horizontal, .ads__sidebar, .ads_ad_box, .ads_ad_box2, .ads_after, .ads_after_more, .ads_amazon, .ads_area, .ads_banner, .ads_before, .ads_bg, .ads_block, .ads_box, .ads_box_type1, .ads_by, .ads_center, .ads_code, .ads_column, .ads_container, .ads_container_top, .ads_content, .ads_css, .ads_der, .ads_div, .ads_footer, .ads_google, .ads_header, .ads_horizontal, .ads_item, .ads_label, .ads_lb, .ads_left, .ads_middle, .ads_place, .ads_place_160, .ads_player, .ads_post, .ads_prtext, .ads_r, .ads_rectangle, .ads_right, .ads_side, .ads_sidebar, .ads_single_center, .ads_single_top, .ads_text, .ads_title, .ads_top, .ads_top_nav, .ads_tr, .ads_unit, .ads_wide, .ads_widget, .ads_wrapper, .adsafp, .adsanity-group, .adsanity-single, .adsarea, .adsbar, .adsblock, .adsborder, .adsbottom, .adsbox970x90, .adsbyadop, .adsbymahimeta, .adsc, .adscontainer, .adsdiv, .adsection, .adsens, .adsense-336, .adsense-ad, .adsense-area, .adsense-block, .adsense-box, .adsense-code, .adsense-container, .adsense-content, .adsense-csa, .adsense-header, .adsense-left, .adsense-links, .adsense-module, .adsense-post, .adsense-right, .adsense-slot, .adsense-title, .adsense-top, .adsense-unit, .adsense-widget, .adsense1, .adsenseBannerArea, .adsenseBlock, .adsenseContainer, .adsenseWrapper, .adsense_336_280, .adsense_ad, .adsense_block, .adsense_bottom, .adsense_container, .adsense_right, .adsense_sidebar, .adsense_single, .adsense_top, .adsense_unit, .adsense_wrapper, .adsenvelope, .adsep, .adserving, .adset, .adsghori, .adsh, .adshome, .adside, .adsidebar, .adsinfo, .adsitem, .adsize728, .adsizewrapper, .adsleft, .adslider, .adslink, .adslist, .adslogan, .adslot, .adslot-area, .adslot-banner, .adslot-feature, .adslotMid, .adslot_1, .adslot_2, .adslot_3, .adslot_4, .adslot__ad-container, .adslot__ad-wrapper, .adslug, .adsmall, .adsmessage, .adsns, .adsonofftrigger, .adsoptimal-slot, .adspace, .adspace-widget, .adspacer, .adspost, .adspot, .adspot-title, .adsright, .adss, .adss-rel, .adstext, .adstextpad, .adstitle, .adstop, .adstrip, .adstyle, .adszone, .adtable, .adtag, .adtc, .adtech, .adtop, .adtxt, .adunit, .adunit-container, .adunit-middle, .adunit-parent, .adunit-title, .adunit-wrap, .adunit-wrapper, .adunit300x250, .adunitContainer, .adunit_leaderboard, .adunit_rectangle, .adv-300, .adv-300-600, .adv-300x250, .adv-300x250-generic, .adv-4, .adv-970, .adv-980x60, .adv-ad, .adv-banner, .adv-block, .adv-border, .adv-bottom, .adv-box, .adv-carousel, .adv-center, .adv-comments, .adv-cont, .adv-container, .adv-header, .adv-label, .adv-lb, .adv-list, .adv-overlay, .adv-phone, .adv-right, .adv-sidebar, .adv-sidelabel, .adv-slide-block-wrapper, .adv-text, .adv-top, .adv1, .adv300, .adv300x100, .adv300x250, .adv728, .adv728_90, .advBox, .advRightBig, .advText, .adv_1, .adv_2, .adv_300, .adv__text, .adv_banner, .adv_box, .adv_cnt, .adv_display, .adv_here, .adv_img, .adv_info_text, .adv_left, .adv_link, .adv_right, .adv_standard_d, .adv_td, .adv_title, .adv_top, .adv_txt, .advads-widget, .advart, .adver, .adver-block, .adver-text, .advert--banner-wrap, .advert--fallback, .advert--header, .advert--inline, .advert--leaderboard, .advert--mpu, .advert-728-90, .advert-autosize, .advert-banner, .advert-block, .advert-bottom, .advert-box, .advert-card, .advert-center, .advert-col, .advert-container, .advert-content, .advert-dfp, .advert-double-mpu, .advert-footer, .advert-image, .advert-info, .advert-label, .advert-leaderboard, .advert-mpu, .advert-mrec, .advert-placeholder, .advert-right, .advert-section, .advert-sidebar, .advert-skyscraper, .advert-spot-container, .advert-stub, .advert-text, .advert-title, .advert-top, .advert-txt, .advert-unit, .advert-wrap, .advert-wrapper, .advert.mpu, .advert.skyscraper, .advert1, .advert2, .advert4, .advert5, .advertBox, .advertContainer, .advertContent, .advertIframe, .advertLink, .advertMpu, .advertSlot, .advertText, .advertWrapper, .advert__container, .advert_area, .advert_block, .advert_container, .advert_div, .advert_header, .advert_img, .advert_label, .advert_text, .advert_top, .advert_wrapper, .advertbox, .advertise-box, .advertise-here, .advertise-link, .advertise-top, .advertiseContainer, .advertiseText, .advertise_verRight, .advertisement-300, .advertisement-300-250, .advertisement-300x250, .advertisement-banner, .advertisement-block, .advertisement-box, .advertisement-card, .advertisement-cell, .advertisement-container, .advertisement-content, .advertisement-header, .advertisement-image, .advertisement-label, .advertisement-leaderboard, .advertisement-text, .advertisement-title, .advertisement-top, .advertisement-wrapper, .advertisement1, .advertisementBlock, .advertisementCenterer, .advertisementContainer, .advertisementLabel, .advertisementSection, .advertisementText, .advertisement_300x250, .advertisement_728x90, .advertisement__label, .advertisement__title, .advertisement_above_footer, .advertisement_box, .advertisement_container, .advertisements-link, .advertiser, .advertiser-disclosure-banner, .advertising--desktop, .advertising--mobile, .advertising--tablet, .advertising-banner, .advertising-block, .advertising-content, .advertising-header, .advertising-iframe, .advertising-notice, .advertising-top, .advertising728, .advertisingFooterXL, .advertisingRight, .advertisingTop, .advertising_banner, .advertising_block, .advertisment, .advertisment-label, .advertismentContainer, .advertleft, .advertorial, .adverts, .adverttop, .advr, .advrst, .advt, .advt-block, .advtext, .advtitle, .advtop, .advv_box, .adwide, .adwidget, .adwobs, .adwords, .adwords_in_content, .adwrap, .adwrap-widget, .adx-wrapper-middle, .adz-horiz-ext, .adzone, .affiliate-link, .afs_ads, .after-post-ads, .afw_ad, .ajax_ad, .ajdg_bnnrwidgets, .ajdg_grpwidgets, .alt_ad_block, .am-bazaar-ad, .amazon_ad, .amp-ads, .app_ad_unit, .app_advertising_skyscraper, .arcAdsBox, .arcAdsContainer, .archive-ads, .areaAd, .area_ad, .artAd, .article-ad, .article-ad-970x90, .article-ad-left, .article-ad-placeholder, .article-ads, .article-adv-right-sideBar, .article-advert, .article-aside-ad, .article-body__suppl_content--inline-cta-ad, .article-inline-ad, .article-sponsor, .article-top-ad, .article-view__footer-ad, .articleADbox, .articleAds, .article__adv, .article_ad, .article_ad_text, .articlead, .artnet-ads-ad, .aside-ad, .aside-ads, .aside_ad, .asinf-admedia, .avert-text, .b-ad, .b-ad-main, .b-adv, .b-adv-mobi, .b_adLastChild, .b_ads, .background-adv, .badge-style-type-ad, .banner-300, .banner-300-250, .banner-300x250, .banner-300x600, .banner-468, .banner-468x60, .banner-728, .banner-728x90, .banner-ad, .banner-ad-container, .banner-ad-row, .banner-ad-wrapper, .banner-ads, .banner-adsense, .banner-adv, .banner-advert, .banner-adverts, .banner-sidebar-300x250, .banner160, .banner160x600, .banner300, .banner350, .banner468, .banner728, .banner728-container, .banner728x90, .bannerAd, .bannerAdContainer, .bannerAdSearch, .bannerAdWrap, .bannerAds, .banner_160x600, .banner_300_250, .banner_300x250, .banner_300x600, .banner_468x60, .banner_728_90, .banner_728x90, .banner_ad, .banner_ad_container, .banner_ad_link, .banner_ads, .banner_ads_home_inner, .banner_adv, .banner_altervista_300X250, .bannerad, .bannerads, .bannergoogle, .banners_ad, .bannervcms, .base-ad-slot, .bb-md-adv7, .bbccom_advert, .before-header-ad, .below-next-nativeads, .belt-ad, .betteradscontainer, .bg-ads, .bg_ad, .big-ad, .big-box-ad, .bigAd, .big_ad, .bigad, .bigads, .bigbox-ad, .billboard-ad, .billboard-ads, .billboardAd, .billboard_ad, .billboard_ad_desktop, .blk_advert, .block--advertising, .block--advertising-header, .block-ad, .block-ads, .block-ads-yahoo, .block-ads3, .block-adsense, .block-adsense_managed, .block-adv, .block-advert, .block-advertisement, .block-advertising, .block-dfp, .block-google-admanager, .block-google_admanager, .block-heremedia-ads, .block-module-ad, .block-mps, .block-openads, .block-openx, .block-pt-ads, .block-simpleads, .block-yt-ads, .block1--ads, .block__advertising, .block__advertising-content, .block__advertising-header, .block_ad, .block_ads, .block_adv, .blockad, .blog-ad, .blogroll-ad-img, .body-ad, .body-top-ads, .body_ad, .bomAd, .bonnier-ad, .bottom-ad, .bottom-ad--bigbox, .bottom-ad-banner, .bottom-ad-box, .bottom-ad-container, .bottom-ad-desktop, .bottom-ad-wrapper, .bottom-ads, .bottom-ads-wrapper, .bottom-adv, .bottom-left-ad, .bottomAd, .bottomAdContainer, .bottomAds, .bottomAdvert, .bottom_ad, .bottom_ad_responsive, .bottom_ads, .bottom_banner_ad, .bottomad, .bottomads, .bottomadtag, .bottomadvert, .bottomgooglead, .box-ad, .box-ads, .box-advert, .boxAd, .boxAds, .box_ad, .box_ads, .box_adv, .boxad, .boxad1, .boxads, .br-ad, .br-ad-wrapper, .brand_ad, .break-ads, .breaker-ad, .bsaProContainer, .bsac, .bsac-container, .bt_ad, .btm_ad, .btn-ad, .btn_ad, .bullet-sponsored-links-gray, .bunyad-ad, .button-ad, .button-ads, .button_ad, .buttonad, .buttonads, .bxad, .c-ad, .c-ad--rectangle, .c-ad--unlabeled, .c-ad-size2, .c-ad-size3, .c-adcontainer, .c-adv3__inner, .c-advert, .c-advertisement, .c-advertisement--leaderboard, .c-advertisement--rectangle, .c-advertisement--rectangle-float, .c-advertising, .c-res-ad, .cactus-header-ads, .can_ad_slug, .carbonad, .card-ad, .category-ad, .category-advertorial, .categoryMosaic-advertising, .categoryMosaic-advertisingText, .catfish_ad, .cbd_ad_manager, .cbs-ad-unit, .cbs-ad-unit-wrapper, .cc-adv-label, .cc-adv-wrapper, .cct-tempskinad, .center-ad, .centerAd, .center_ad, .center_ads, .centerad, .centered-ad, .centralizer-adx, .channel_ad_2016, .channel_brand_ad, .chitika-ad, .cl-ad-inpager, .cldt-ad-top, .clickforceads, .client-ad, .client-ad-container, .cls_placeholder_adimg, .cmam_responsive_ad_widget_class, .cmc-sidebar-ad, .cnAdDiv, .cnbc_badge_banner_ad_area, .cns-ads-stage, .codeneric_ultimate_ads_manager_ad_wrapper, .col-ad, .col-has-ad, .col_ad, .colombiaAd, .column-ad, .comment-ad, .comment_ad, .companion-ad, .companionAd, .companyAdsSquare, .complex-ad, .complex-ad-wrapper, .component--google-ad-manager, .component-header-sticky-ad, .container--ad, .container--ads, .container-lower-ad, .container_ad, .content-ad, .content-ad-left, .content-ads, .content-footer-ad, .content-kuss-ads, .content-single__block_top_ad, .contentAd, .contentAds, .content_ad, .content_ad_side, .content_ads, .content_adsense, .contentad, .contentadleft, .cpp-text-ad, .criteo-ad, .css-live-widget_googleAdBlock, .cta-ad, .ctg-ad, .ctn_ads_rhs, .ctn_ads_rhs_organic, .ctpl-duplicated-ad, .cube-ad, .custom-ad, .custom-ad-container, .custom-ad-one, .custom-ads, .customAd, .custom_ad, .custom_ads, .custom_banner_ad, .customadvert, .dac__banner__wrapper, .dac__mpu-card, .dac__stream-mpu-card, .dart-advertisement, .dart_ad, .dc-banner, .dcmads, .default-teaser__adv, .desktop-ad, .desktop-ads, .desktop-advert, .desktop_ad, .desktopads, .desktoponlyad, .detail-ad, .detail-ads, .detail_ad, .dex-adlabel, .dfad, .dfad_pos_1, .dfad_pos_2, .dfad_pos_3, .dfad_pos_4, .dfad_pos_5, .dfad_pos_6, .dfads-javascript-load, .dfp-ad, .dfp-ad-container, .dfp-ad-hideempty, .dfp-ad-tags, .dfp-ad-unit, .dfp-adspot, .dfp-banner, .dfp-banner-slot, .dfp-leaderboard, .dfp-slot, .dfp-tag-wrapper, .dfp-wrapper, .dfpAdvert, .dfp_ad, .dfp_ad_unit, .dfp_slot, .dfp_unit, .dfp_unit-ad_container, .dfpad, .dfrads, .dianomi-ad, .dikr-responsive-ads-slot, .display-ad, .display-ad-block, .displayAd, .displayAds, .display_adv_show, .display_advrst, .div-gpt-ad, .divAd, .div_adv300, .divads, .dm_ad-container, .double-ad, .double-ads, .doubleClickAd, .doubleclick-ad, .download-ad, .download_ad, .download_adv_text_video, .download_link_sponsored, .e-ad, .e-advertise, .earAdv, .easyAdsBox, .easyAdsSinglePosition, .ec-ads, .element--ad, .em_ads_box_dynamic_remove, .embed-ad, .embeddedAd, .empty-ad, .end-of-article-ads, .eng_ads, .entry-ad, .entry-ads, .entryad, .et-single-post-ad, .etad, .eu-advertisment1, .exo-native-widget, .external-ad, .ezAdsense, .ezo_ad, .ezoic-ad, .ezoic-floating-bottom, .f-ad, .f-item-ad, .f_Ads, .fa-google-ad, .facebook-ad, .fbs-ad--top-wrapper, .fd-ad, .featureAd, .featured-ad, .featured-ads, .featuredAds, .featured_ad, .feed-ad, .firefly-sidebar-ad, .first-ad, .first_ad, .first_post_ad, .firstad, .firstpost_advert, .firstpost_advert_container, .fist-advertise-box, .fixedRightAd, .fixed_ad, .flashad, .flex-ad, .flexAd, .flexContentAd, .floatad, .flyercity-ads, .following-ad, .following-ad-container, .foot-ad, .footad, .footer-ad, .footer-ad-labeling, .footer-ad-section, .footer-ad-unit, .footer-ad-wrap, .footer-ads, .footer-ads-wrapper, .footer-advert, .footer-advertisement, .footer-advertisements, .footer-advertising, .footerAd, .footerAds, .footerPageAds, .footerTextAd, .footer__advert, .footer_ad, .footer_ads, .footer_adv, .footer_advertisement, .footerad, .footerads, .fortune-ad-tag__leaderboard, .frn_contAdHead, .frn_placeholder_google_ads, .fs_ads, .ft-ad, .full-ad, .full-bleed-ad, .full-width-ad, .full-width-ad-container, .full-width-ads, .full_ad, .g-ad, .g-adver, .g1-advertisement, .gAds, .gAdsBlock, .g_ad, .g_adv, .gabfire_ad, .gabfire_simplead_widget, .gad-right1, .gad-right2, .gad_container, .gallery-ad, .gallery-ad-container, .gallery-ad-lazyload-placeholder, .gallery_ad, .galleryads, .game-ads, .game-category-ads, .gc-deck--is-ad, .general-adv-container, .generic-ad-module, .gfp-banner, .goAdverticum, .googad, .google-2ad, .google-ad, .google-ad-160-600, .google-ad-block, .google-ad-container, .google-ad-iframe, .google-ad-manager__slot, .google-ad-placeholder, .google-ad-space, .google-ads, .google-ads-container, .google-ads-widget, .google-adsense, .google-advertisement, .google-dfp-ad-caption, .google-dfp-ad-label, .google-dfp-ad-wrapper, .google-right-ad, .google-user-ad, .google728x90, .googleAd, .googleAd300x250, .googleAdContainer, .googleAdSense, .googleAdd, .googleAds, .googleAdsense, .googleAdv, .googleLeftSkyScrapper, .google_ad, .google_ads, .google_adsense, .google_adsense_footer, .googlead, .googleadcontainer, .googleads, .googleadsense, .googlepublisherads, .gpAdBox, .gpAdFooter, .gpt-ad, .gpt-ads, .gpt-billboard, .gr-ads, .grey-ad, .grid-ad, .grid-advertisement, .gujAd, .h-ad, .h-adver, .half-page-ad-1, .has-ad, .hb__ad, .hbi-ad-advertiser, .head-ad, .head-ads, .head-banner468, .headAd, .head_ad, .head_ads, .head_adv, .headad, .header-ad, .header-ad-area, .header-ad-container, .header-ad-desktop, .header-ad-slot, .header-ad-space, .header-ad-wrap, .header-ad-wrapper, .header-adcode, .header-ads, .header-ads-container, .header-ads-wrap, .header-adv, .header-advert, .header-advert-wrapper, .header-advertisement, .header-banner-ads, .header-sponsor, .header-top-ad, .headerAd, .headerAdContainer, .headerAdSpacing, .headerAds, .headerTopAd, .header__ad, .header__ads, .header__advertisement, .header_ad, .header_ads, .header_advert, .headerad, .headerads, .headline_advert, .heatmapthemead_ad_widget, .herald-ad, .hero-ad, .hidden-ad, .hide-ad, .hidePauseAdZone, .hide_ad, .hl-ad-row__1p-link, .hl-ad-row__mrec, .home-ad, .home-ad-region-1, .home-ads, .home-features-ad, .home-top-ad, .home-top-right-ads, .homeAd, .homeAd2, .homePageAds, .home_ad, .home_adholder, .homead, .homeadwrapper, .homepage-ad, .homepage__ad, .hor_ad, .horizontal-ads, .horizontal-advert-container, .horizontalAd, .horizontalAdText, .horizontal_ad, .horizontal_ads, .house-ad, .houseAd, .hp_textlink_ad, .hss-ad, .ht_ad_widget, .html-advertisement, .hyad, .iAdserver, .ic-ads, .iconAdChoices, .id-Article-advert, .idGoogleAdsense, .idgGoogleAdTag, .ie-adtext, .iframe-ad, .iframe-ads, .iframead, .image-advertisement, .image-viewer-ad, .imageAd, .imagead, .images-adv, .img_ad, .imgad, .in-ad, .in-article-ad, .in-content-ad, .in_article_ad, .in_content_advert, .index-adv, .index-content-ad-wrapper, .index_ad, .indexad, .info-ads, .injected-ad, .injectedAd, .inline-ad, .inline-ad-placeholder, .inline-ad-wrap, .inline-ad-wrapper, .inline-display-ad, .inline-panorama-ad, .inlineAd, .inlineAdInner, .inlinePageAds, .inline_ad, .inlinead, .inner-ad, .inner-adv, .innerAdWrapper, .innerAds, .innerContentAd, .inner_adv, .innerad, .insert-post-ads, .insertad, .inside-post-ad, .interAd, .internal-ad, .internalAd, .interstitial-ad, .ipsAd, .ipsAdvertisement, .iqadlinebottom, .is-sponsored, .is24-adplace, .isAd, .island-ad, .item-ad, .item-ads, .item-advertising, .item_ads, .iw-leaderboard-ad, .jLinkSponsored, .jg-ad-970, .jquery-adi, .jquery-script-ads, .js-ad, .js-ad-banner-container, .js-ad-container, .js-ad-hideable, .js-ad-imu, .js-ad-konvento, .js-ad-prepared, .js-ad-primary, .js-ad-slot, .js-ad-wrapper, .js-ad_iframe, .js-ad_iframe_wrap, .js-ads, .js-advert, .js-advert-upsell-popup, .js-dfp-ad, .js-googleAdSuperHeader-wrapper, .js-header-ad-wrapper, .js-native-ad, .js-results-ads, .js-right-ad-block, .js-slide-right-ad, .js-slide-top-ad, .js-sticky-ad, .js-stream-ad, .jsMPUSponsor, .jsOneAd, .jw-ad, .jw-ad-media-container, .kopa-ads-widget, .l-ad, .label-ad, .largeAd, .large_ad, .lastads, .latest-ad, .layout-ad, .layout__top-ad, .lazy-ad, .lazy-adv, .lazyad, .lazyadslot, .lazyload_ad, .lb-ad, .lb-item-ad, .lbl-advertising, .lead-ad, .lead-ads, .leader-ad, .leaderAdvert, .leaderBoardAdWrapper, .leaderBoardAdvert, .leader_ad, .leaderad, .leaderboard-ad, .leaderboard-ad-component, .leaderboard-ad-container, .leaderboard-ad-dummy, .leaderboard-ad-module, .leaderboard-ads, .leaderboard-advert, .leaderboardAd, .leaderboard_ad, .leaderboard_ad_container, .leaderboard_ads, .leaderboardad, .left-ad, .left-ads, .left-advert, .leftAd, .leftAds, .leftAdsFix, .leftAdsFix1, .left_ad, .left_ad_box, .left_ads, .left_adv, .leftad, .leftadd, .ligatus, .linead, .link_ad, .linkads, .list-ad, .list-ads, .list-feature-ad, .listad, .listing-item-ad, .listings-ad-block, .lite-page-ad, .literatumAd, .logo-ad, .logo_AdChoices, .logoad, .longBannerAd, .longform-ad, .lower-ad, .lqm_ad, .lr-ad, .lv-Adunit, .lyad, .m-ad, .m-ad-region, .m-advert, .m-advertisement, .m-block-ad, .m-gallery-overlay--ad-top, .m-header-ad, .m-header-ad--slot, .m-in-content-ad, .m-in-content-ad--slot, .m-in-content-ad-row, .m-sponsored, .macad, .main-ad, .main-ads, .main-advertising, .main-google-ad-container, .main-news__ad, .main-right-ads, .main__top-ad, .main_ad, .mal-ad-unit, .mapped-ad, .margin0-ads, .marginalContentAdvertAddition, .market-ad, .markplace-ads, .match-ad, .me-rtm, .media-network-ad, .medium-rectangle-ad, .mediumRectangleAd, .medium_ad, .medrect_ad, .menu-ad, .menuAd, .metaRedirectWrapperBottomAds, .metaRedirectWrapperTopAds, .meta_ad, .mg_box_ads, .mid-post-ad, .midAd, .midAdv-cont, .midAdv-cont2, .mid_ad, .midad, .middle-ad, .middle-ads, .middleAd, .middleAds, .middle_ad, .middlead, .mini-ad, .mini-ads, .mini_ads, .miniad, .mj-floating-ad-wrapper, .mks_ads_widget, .mm-banner970-90-ad, .mmads, .mntl-gpt-adunit, .mobads, .mobile-ad, .mobile-ad-container, .mobile-footer__ad, .mobileadunit, .mod-ad, .mod-ad-300x250, .mod-ads, .mod_ad, .mod_ad_text, .mod_index_ad, .mod_r_ad, .mod_r_ad1, .modal-ad, .module--ad, .module-ad, .module-ads, .module1colAds, .moduleAd, .moduleAdSpot, .moduleAdvert, .module_ad, .module_home_ads, .module_single_ads, .moduletableadvert, .modulo-publicidade, .mom-ad, .momizat-ads, .mp-ad, .mpu-ad, .mpu-holder, .mpu-title, .mpu-wrap, .mpu-wrapper, .mpuAd, .mpuAdvert, .mpuContainer, .mpu_ad, .mpu_container, .mpu_placeholder, .mpuads, .mrec-ads, .mrecAds, .ms-slide-ads, .msg-ad, .msgad, .mslo-ad-holder, .msw-js-advert, .mt_adv, .mtop_adfit, .mts_ad_300_widget, .mtv-adv, .multiad2, .mvp-ad-label, .mvp-feat1-list-ad, .mvp-widget-ad, .mvp-widget-feat2-side-ad, .mvp_ad_widget, .my-ads, .myAds, .naMediaAd, .native-ad, .native-ad-article, .native-ad-container, .native-ad-item, .native-adv, .native-leaderboard-ad, .native-sidebar-ad, .nativeAd, .native_ad, .nativead, .nativeadasideplaceholder, .nativeadserversidecontentmodule, .nav-ad, .nav_ad, .navad, .navbar-header-ad, .nested-ad, .netshelter-ad, .newad, .news-ad, .news-ad-block-a, .news-ad-square-a, .news-ad-square-box, .newsAd, .news_imgad, .newsad, .nexusad, .ng-ad-banner, .ng-ad-container-300-250, .node-ad, .non-empty-ad, .normalad, .ntv-ad, .o-ad-container, .o-ads, .o-ads--center, .o-advert, .o-story-content__ad, .oasad, .ob_ads_header, .ob_dual_right > .ob_ads_header ~ .odb_div, .offer-ad, .oio-banner-zone, .on_player_ads, .onad_desktop, .one-ad, .onf-ad, .online-ad, .open-ad-container-mobile, .openx, .openx-ad, .openx_ad, .outer-ad-container, .outer-ad-unit-wrapper, .outerAds, .outeradcontainer, .overlay-ad, .overlay-ad-container, .p-ad, .p-post-ad, .pads2, .page-ad, .page-ad-container, .page-ads, .page-box-ad, .page-header-ad, .page-pencil-ad-container-bottom, .pageAdSkinUrl, .page_ad, .pagead, .pagebuilder_ad, .pagefair-acceptable, .pane-ads, .pane-adv-manager, .pane-advertorials-homepage-advertorial-rotator, .pane-dfp-ad-unit, .pane-openx, .pane-tgx-ad, .pane_ad_wide, .panel-ad, .panel-body-adsense, .parade-ad-container, .paragraphs-item-advertisement, .partner-ad, .partner-overlay-top-ad, .paszone_container, .patronad, .pb-ad, .pb-ad-curated, .pb-f-ad-flex, .pb-f-ads-ad, .pb-f-ads-arcads, .pb-f-advert-dfp-double-mpu, .pc-ad, .penci-ad-box, .penci-ad-image, .penci-google-adsense-1, .penci-google-adsense-2, .penci_list_banner_widget, .pencil-ad, .pencil-ad-section, .pg-adnotice, .pg-adtarget, .pgevoke-story-rightrail-ad1, .pgevoke-story-topads, .ph-ad, .photo-ad, .photoAd, .phpads_container, .pkad, .placeholder-ad, .placeholderAd, .plainAd, .play-page-ads, .playAds1, .playAds2, .player-ad, .player-ads, .player-leaderboard-ad-wrapper, .player-under-ad, .playerAd, .player_ad, .player_ad2, .player_ad_box, .player_hide_ad, .player_hover_ad, .player_page_ad_box, .plistaList > .itemLinkPET, .plugin-ad, .pm-ad-unit, .pm-ad-zone, .pm-ads-banner, .popup-ad, .popup_ad, .post-ad, .post-advertisement, .post-pick-ad, .post-sponsored, .post__ad, .post__article-top-ad-wrapper, .post__inarticle-ad-template, .post_ad, .post_ads, .postad, .postads, .postbit_adcode, .poster-ad-asset-module, .powerinbox, .ppb_ads, .pr-widget, .premium-ad, .primary-ad, .pro_ad_adzone, .pro_ad_system_ad_container, .pro_ad_zone, .prod_grid_ad, .product-ads, .promo-ad, .promoAd, .promo_ads, .promo_border, .promoboxAd, .proper-ad-unit, .ps-ad, .pubDesk, .publicidad_horizontal, .publicidade, .publicity-box, .puff-advertorials, .purchad, .qm-ad, .quads-ad1_widget, .quads-location, .question_page_ad, .queue_ad, .r-ad, .r_ad, .r_ads, .rad_container, .rail-ad, .rail__ad, .railad, .rd_header_ads, .recent-ad, .recipeFeatureAd, .rect-ad, .rect_ad, .rectad, .rectangle-ad, .rectangle-ad-container, .rectangle.ad, .rectangleAd, .rectangle_ad, .rectanglead, .red-adv, .refreshAds, .refreshInarticleAd, .region-ad-right, .region-ad-top, .region-header-ad, .region-header-ads, .region-top-ad, .reklam, .reklam-block, .reklam-kare, .reklam2, .reklama, .reklama-content-1, .reklama-content-2, .reklama1, .reklamka, .related-ad, .related-ads, .remove-ads, .removeAdsStyle, .responsive-ad, .responsive-ads, .responsiveAdHiding, .result-ad, .resultAd, .results-ads, .reviews-display-ad, .rg-ad, .rgt-ad, .rgt_ad, .rhs-ad, .rhsad, .right-ad, .right-ad-block, .right-ad-container, .right-ad2, .right-ads, .right-adv, .right-advert, .right-col-ad, .right-column-ad, .right-rail-ad, .right-side-ad, .right-video-dvertisement, .rightAD, .rightAd, .rightAd1, .rightAd_bottom_fmt, .rightAd_top_fmt, .rightAds, .rightAdsFix, .rightAdsFix1, .rightAdverts, .rightColAd, .rightColumnAd, .right_ad, .right_ad_box, .right_ad_top, .right_ads, .right_adv, .right_advert, .right_col_ad, .right_side_ads, .rightad, .rightadd, .rightads, .rightadv, .rightcol-block-ads, .rightcolumndesktopad160x600, .rightmenu_ad, .rightsideAd, .rmp-ad-container, .rotating-ads, .rotatingBannerWidget, .row--gh-ad, .row-ad, .rowAd, .rt-ad, .rt-ad-body, .rt_ad, .runner-ad, .s-ad, .s-ads, .s_ad, .sa-mainad, .sagreklam, .sal-adv-gpt, .salty-bottom-ad, .sam-ad, .sam-pro-ad, .sam-pro-container, .sam_ad, .sb-ad, .sc-ad, .sc_ad, .scad, .sdc-advert__top-1, .search-ad, .search-results-ad, .search-sponsor, .searchAd, .searchCenterBottomAds, .searchCenterTopAds, .searchResultAd, .searchRightBottomAds, .searchRightMiddleAds, .searchad, .sec-ad, .section-ad, .section-ad2, .section-ads, .section-adv, .section-advert-banner, .section-advertisement, .section-front__side-bar-ad, .section-sponsor, .section_AD, .section_ad, .serp-adv-item, .serp-adv__head, .serviceAd, .set_ad, .sfsp_adadvert, .sgAd, .sh-section-ad, .showAd, .showads, .shunno-sidebar-advert, .side-ad, .side-ad-container, .side-ad-panel, .side-ad-top, .side-ads, .side-ads-container, .side-ads_sticky-group, .side-advert, .side-adverts, .side-mod-preload-big-ad-switch, .sideAd, .sideAdv, .sideAdv-wrapper, .sideBarAd, .sideBoxMiddleAd, .side_ad, .side_ad2, .side_ad300, .side_ad_top, .side_ads, .side_adsense, .side_adv, .sidead, .sideads, .sideadvert, .sideadverts, .sidebar-ad, .sidebar-ad-a, .sidebar-ad-c, .sidebar-ad-cont, .sidebar-ad-container, .sidebar-ad-slot, .sidebar-ad-wrap, .sidebar-ad-wrapper, .sidebar-adbox, .sidebar-ads, .sidebar-ads-wrap, .sidebar-advert, .sidebar-advertisement, .sidebar-bottom-ad, .sidebar-skyscraper-ad, .sidebar-sponsors, .sidebar-top-ad, .sidebarAd, .sidebar__ad, .sidebar__item-spacer--advert-top, .sidebar_ad, .sidebar_ad_1, .sidebar_ad_2, .sidebar_ad_3, .sidebar_ad_container, .sidebar_ads, .sidebar_advert, .sidebar_right_ad, .sidebarad, .sidebaradbox, .sidebarads, .sidebaradsense, .sidebox-ad, .simple_ads_manager_block_widget, .simple_ads_manager_widget, .simplead-container, .simpleads-item, .single-ad, .single-ads, .single-post-ad, .single-top-ad, .singleAd, .single_ad, .singlead, .singleads, .sister-ads, .site-ads, .site-footer__ad-area, .site-head-ads, .site-top-ad, .site_ad, .site_ads, .sky-ad, .skyAd, .skyAdvert, .skyscraper-ad, .skyscraper-ad-container, .skyscraperAd, .skyscraper_ad, .slide-ad, .slide-advert, .slide-advert_float, .slideAd, .slidead, .slideshow-ad, .slideshow-ad-wrapper, .slideshow-vaop-ad, .sm-ad, .sm-widget-ad-holder, .small-ad, .small-ads, .smallAd, .small_ad, .small_ads, .smallad, .social-ad, .sovrn_ad_unit, .sp-ad, .spLinks, .sp_ad, .spinAdvert, .sponsor-ad, .sponsor-ads, .sponsor-area, .sponsor-block, .sponsor-bottom, .sponsor-box, .sponsor-btns, .sponsor-inner, .sponsor-link, .sponsor-link-text, .sponsor-links, .sponsor-logo, .sponsor-text, .sponsorAd, .sponsorArea, .sponsorBlock, .sponsorBox, .sponsorLink, .sponsorText, .sponsorTitle, .sponsor_ad, .sponsor_ad2, .sponsor_area, .sponsor_block, .sponsor_image, .sponsor_label, .sponsor_logo, .sponsorad, .sponsored-ad, .sponsored-add, .sponsored-ads, .sponsored-container, .sponsored-container-bottom, .sponsored-content, .sponsored-display-ad, .sponsored-features, .sponsored-header, .sponsored-headlines, .sponsored-link, .sponsored-links, .sponsored-post, .sponsored-results, .sponsored-slot, .sponsored-tag, .sponsored-text, .sponsored-title, .sponsored-top, .sponsoredAds, .sponsoredContent, .sponsoredItem, .sponsoredLabel, .sponsoredLink, .sponsoredLinks, .sponsoredListing, .sponsoredProduct, .sponsoredTop, .sponsored_ad, .sponsored_by, .sponsored_content, .sponsored_link, .sponsored_links, .sponsored_post, .sponsoredby, .sponsoredlink, .sponsoredlinks, .sponsorlink, .sponsors-box, .sponsors-footer, .sponsors-widget, .sponsorship-container, .sponsorship_ad, .sponsorshipbox, .spotlight-ad, .square-ad, .square-ad-container, .square-ads, .squareAd, .squareAds, .square_ad, .square_ad_big, .square_ad_small, .squaread, .squareads, .sr_google_ad, .standard-ad, .start__advertising_container, .static-ad, .ste-ad, .sticky-ad, .sticky-ad-bottom, .sticky-ad-container, .sticky-ad-unit-default, .sticky-ad-wrapper, .sticky-sidebar-ad, .stickyRailAd, .stickyad, .stickyadv, .story-ad, .story-header-ad, .storyadHolderAfterLoad, .strawberry-ads, .stream-ad, .strip-ad, .sub-ad, .subAdBannerArea, .subAdBannerHeader, .subad, .submenu_ad, .sugarad, .suitcase-ad, .sun-col-2--is-ad, .supernews-ad-widget, .support_ad, .sweet-deals-ad, .tAd, .tAds, .tabAd, .tab_ad, .table-ad, .tb-ad, .tbboxad, .tc_ad, .td-a-ad, .td-a-rec-id-custom_ad_1, .td-a-rec-id-custom_ad_2, .td-a-rec-id-custom_ad_3, .td-a-rec-id-custom_ad_4, .td-a-rec-id-custom_ad_5, .td-ad, .td-adspot-title, .td-header-ad-wrap, .td-header-sp-ads, .td_ad, .teaser-ad, .teaser-advertisement, .teaser-sponsor, .teaserAdContainer, .teaserAdHeadline, .teaser_adtiles, .teaser_advert_content, .text-ad-300, .text-ad-links2, .text-ad-top, .text-advertisement, .text-g-advertisement, .text-g-group-short-rec-ad, .text-g-net-group-news-half-page-ad-300x600-or-300x250, .text-g-net-grp-google-ads-article-page, .text-g-nn-web-group-ad-halfpage, .text-g-sponsored-ads, .text-g-sponsored-links, .textAd3, .textAdBG, .textAdBlock, .textAdBlwPgnGrey, .textAdBox, .textAdMinimum, .textAds, .textLinkAd, .textSponsor, .text_ad_description, .text_ad_title, .text_ad_website, .text_ads_2, .text_linkad_wrapper, .textad, .textad_headline, .textadlink, .textads, .textadtext, .textlinkads, .tge-ad, .thb_ad_before_header, .theads, .themidad, .themonic-ad2, .third-party-ad, .thirdPartySponsorLink, .thirdPartySponsorLink__ad, .thirdPartySponsorLink__ads, .thread-ad, .three-ads, .thumb-ads, .thumb_ad, .thumbs-adv, .ticket-ad, .tile-ad, .tile_ad, .title-ad, .tl-ad, .tm-ad, .tm-ad-mrec, .tm-ads, .tm_topads_468, .tmsads, .tncms-region-ads, .tnt-ads-container, .toaster-ad, .today-ad-imu, .toolbar-ad, .top-ad, .top-ad-728, .top-ad-anchor, .top-ad-area, .top-ad-block, .top-ad-container, .top-ad-content, .top-ad-desktop, .top-ad-multiplex, .top-ad-space, .top-ad-wrap, .top-ad-wrapper, .top-ad1, .top-ad__sticky-wrapper, .top-ads, .top-ads-wrapper, .top-adsense, .top-adsense-banner, .top-adspace, .top-adv, .top-advert, .top-advertisement, .top-banner-ad, .top-banner-ad-container, .top-content-adplace, .top-fixed-ad, .top-header-ad, .top-leaderboard-ad, .top-nav-ad, .top-right-ad, .top-side-advertisement, .top-topics__ad, .topAD, .topAd, .topAd728x90, .topAdBanner, .topAdBar, .topAdCenter, .topAdContainer, .topAdWrap, .topAdWrapper, .topAdd, .topAds, .topAdvBox, .topAdvert, .topAdvertisement, .topArtAd, .topBannerAd, .topBarAd, .topRailAdSlot, .top_ad, .top_ad1, .top_ad_728_90, .top_ad_banner, .top_ad_big, .top_ad_holder, .top_ad_inner, .top_ad_list, .top_ad_long, .top_ad_post, .top_ad_responsive, .top_ad_short, .top_ad_wrapper, .top_adbox2, .top_adh, .top_ads, .top_adsense, .top_adv, .top_advert, .top_bar_ad, .top_header_ad, .top_right_ad, .top_sponsor, .topad-area, .topad-bar, .topad1, .topad2, .topadbar, .topadblock, .topadbox, .topadrow, .topads, .topads-spacer, .topadsection, .topadspace, .topadtxt, .topadtxt120, .topadtxt300, .topadtxt728, .topadvert, .topadvertisementsegment, .topbannerAd, .tourFeatureAd, .tower-ad, .towerAd, .towerAds, .towerad, .tpd-box-ad-d, .tpd-box-ad-e, .trafficAdSpot, .trb_ar_sponsoredmod, .trb_header_adBanner_combo, .trb_masthead_adBanner, .trb_pageAdHolder, .trb_soh, .trc-content-sponsored, .trc-content-sponsoredUB, .treeAdBlockWithBanner_right, .trend-card-advert__title, .tribal-ad, .ts-ad, .ts-ad-leaderboard, .ts-ad-wrapper, .ts-featured_ad, .ts-sponsored-links, .ts-top-most-ads, .tsfrm-sponsor-logo-content, .tsm-ad, .tsmAd, .tt_ads, .ttlAdsensel, .tucadtext, .tv-ad-aside, .tvs-mpu, .twitter-ad, .twoColumnAd, .two_ads, .twoadcoll, .twp-ad, .twp-ad-section, .txt-ads, .txtAd, .txtAd5, .txtAds, .txt_ad, .txt_ads, .txtad_area, .txtadvertise, .type-ad, .type_adscontainer, .type_promoads, .tz_ad300_widget, .tz_ad_widget, .uds-ad, .uds-ads, .ui-ad, .ui-ads, .ui-advertising__container, .ui-advertising_position1, .ukAds, .ukn-banner-ads, .ukn-inline-advert, .ult_vp_videoPlayerAD, .unSponsored, .under-header-ad, .under-player-ads, .under_ads, .uniAdBox, .uniAds, .unireg-ad-narrow, .unit-ad, .universalboxADVBOX01, .universalboxADVBOX04a, .unspoken-adplace, .upcomingMob_2nd_adv_blk, .upper-ad-box, .upper-ad-space, .urban-ad-rect, .useful_banner_manager_banners_rotation, .useful_banner_manager_rotation_widget, .useful_banner_manager_widget, .uvs-ad-full-width, .v5rc_336x280ad, .vAds, .v_ad, .vadvert, .variable-ad, .variableHeightAd, .vbox-verticalad, .vce-ad-below-header, .vce-ad-container, .vce-header-ads, .vce_adsense_expand, .vce_adsense_widget, .vce_adsense_wrapper, .ve2_post_adsense, .vert-ad, .vert-ad-ttl, .vert-ads, .vert-adsBlock, .vertad, .vertical-ad, .vertical-ads, .verticalAd, .verticalAdText, .vertical_ad, .vertical_ads, .verticalad, .verysmallads, .vhs_small_ad, .vi-lb-placeholder[title="ADVERTISEMENT"], .vidadtext, .video-about-ad, .video-ad, .video-ad-bottom, .video-ad-content, .video-ad-short, .video-ads, .video-ads-container, .video-ads-wrapper, .video-adtech-mpu-ad, .video-adv, .video-archive-ad, .video-innerAd-320x250, .video-player-ad-center, .video-right-ad, .video-right-ads, .video-side__adv_title, .videoAd-wrapper, .videoAd300, .videoBoxAd, .videoSideAds, .video_ad, .video_ad_fadein, .video_ads, .video_ads_overdiv, .video_ads_overdiv2, .video_advertisement_box, .video_footer_advertisement, .video_top_ad, .videoad2, .videoadbox, .videos-ad, .videos-ad-wrap, .view-Advertisment, .view-ad, .view-ads-sidebar-block, .view-ads-under-the-slider, .view-advertisements, .view-advertisements-300, .view-adverts, .view-advt-story-bottom, .view-article-inner-ads, .view-custom-advertisement, .view-display-id-ads_all, .view-homepage-center-ads, .view-id-ad, .view-id-ads_under_the_slider, .view-id-advertisements, .view-id-advertisements_300, .view-id-advt_story_bottom, .view-id-custom_advertisement, .view-id-topheader_ad, .view-image-ads, .view-promo-mpu-right, .view-simpleads-advertisements, .view-site-ads, .view-topheader-ad, .view-video-advertisements, .view_ad, .view_ads_advertisements, .view_ads_bottom_bg, .view_ads_bottom_bg_middle, .view_ads_content_bg, .view_ads_top_bg, .view_ads_top_bg_middle, .view_rig_ad, .views-field-field-ad, .views-field-field-adbox-1, .views-field-field-adbox-2, .views-field-field-advertisement-image, .views-field-field-image-ad, .vip-club-ad, .virgin-mpu, .visibleAd, .visor-breaker-ad, .visuaAD400, .visuaAD900, .vitee-ad, .vjs-ad-iframe, .vjs-ad-overlay, .vjs-ima3-ad-container, .vl-ad-item, .vlog-ad, .vmp-ad, .voc-advertising, .vod_ad, .vrfadzone, .vs-advert-300x250, .vs_dfp_standard_postbit_ad, .vsw-ads, .vswAdContainer, .vt_h1_ad, .vuukle-ad-block, .vuukle-ads, .vw-header-ads-leader-board, .vw-header-ads-wrapper, .vw-single-header-ads, .vxp_ad300x250, .vxp_adContainer, .w-Ads-small, .w-ad-box, .w-content--ad, .wAdvert, .w_AdExternal, .w_ad, .wa_adsbottom, .wahAd, .wahAdRight, .wallAd, .wall_ad, .wall_ad_hd, .wallad, .wantads, .waterfall-ad-anchor, .wazi-ad-link, .wcAd, .wcfAdLocation, .wd-adunit, .wd_ads, .wdca_ad_item, .wdca_custom_ad, .wdp_ad, .wdp_adDiv, .wdt_ads, .weather-ad-wrapper, .weather-sponsor-ad, .weather-sponsorDiv, .weatherAdSpot, .weather_ad, .weatherad, .web-result-sponsored, .webad-cnt, .webad_link, .webads336x280, .webadvert-container, .webit-ads, .webpart-wrap-advert, .well-ad, .wfb-ad, .wg-ad-square, .wh_ad, .white-ad-block, .wide-ad, .wide-ad-container, .wide-ad-new-layout, .wide-ad-outer, .wide-ad2015, .wide-advert, .wide-footer-ad, .wide-header-ad, .wide-skyscraper-ad, .wideAd, .wideAdTable, .widePageAd, .wide_ad, .wide_ad_unit, .wide_ad_unit_top, .wide_ads, .wide_google_ads, .wide_grey_ad_box, .wide_sponsors, .widead, .wideadbox, .widget-300x250ad, .widget-ad, .widget-ad-codes, .widget-ad-sky, .widget-ad-zone, .widget-ad300x250, .widget-adcode, .widget-ads, .widget-adsense, .widget-adv, .widget-advads-ad-widget, .widget-advert-728, .widget-advert-970, .widget-advertisement, .widget-ami-newsmax, .widget-dfp, .widget-entry-ads-160, .widget-gpt2-ami-ads, .widget-group-Ads, .widget-highlight-ads, .widget-pane-section-ad-content, .widget-sponsor, .widget-text-ad, .widget1-ad, .widget10-ad, .widget4-ad, .widget6-ad, .widget7-ad, .widgetAD, .widgetAdScrollContainer, .widgetSponsors, .widgetYahooAds, .widget_728x90_advertisement, .widget_ad, .widget_ad-widget, .widget_ad125, .widget_ad300, .widget_ad_300, .widget_ad_300x250_atf, .widget_ad_300x250_btf, .widget_ad_300x250_btf_b, .widget_ad_boxes_widget, .widget_ad_layers_ad_widget, .widget_ad_rotator, .widget_ad_widget, .widget_admanagerwidget, .widget_adrotate_widgets, .widget_ads, .widget_adsblock, .widget_adsensem, .widget_adsensewidget, .widget_adsingle, .widget_adv_location, .widget_advads_ad_widget, .widget_advert, .widget_advert_content, .widget_advert_widget, .widget_advertisement, .widget_advertisements, .widget_advertisment, .widget_advwidget, .widget_adwidget, .widget_appmanager_sponsoredpostswidget, .widget_awpcp-random-ads, .widget_bestgoogleadsense, .widget_better-ads, .widget_boss_banner_ad, .widget_catchbox_adwidget, .widget_cevo_contentad, .widget_codeneric_ad_widget, .widget_com_ad_widget, .widget_cpxadvert_widgets, .widget_customad_widget, .widget_customadvertising, .widget_cxad, .widget_dfp, .widget_dfp_lb-widget, .widget_econaabachoadswidget, .widget_emads, .widget_etcenteredadwidget, .widget_evolve_ad_gpt_widget, .widget_fearless_responsive_image_ad, .widget_googleads, .widget_ima_ads, .widget_internationaladserverwidget, .widget_ione-dart-ad, .widget_island_ad, .widget_jr_125ads, .widget_maxbannerads, .widget_nb-ads, .widget_new_sponsored_content, .widget_newscorpau_ads, .widget_openxwpwidget, .widget_plugrush_widget, .widget_po_ads_widget, .widget_postmedia_layouts_ad, .widget_sdac_bottom_ad_widget, .widget_sdac_companion_video_ad_widget, .widget_sdac_footer_ads_widget, .widget_sdac_skyscraper_ad_widget, .widget_sdac_top_ad_widget, .widget_sej_sidebar_ad, .widget_sidebarad_300x250, .widget_sidebarad_300x600, .widget_sidebaradwidget, .widget_singlead, .widget_sponsored_content, .widget_supernews_ad, .widget_text_adsense, .widget_thesun_dfp_ad_widget, .widget_uds-ads, .widget_vb_sidebar_ad, .widget_wnd_ad_widget, .widget_wp-bannerize-widget, .widget_wp_ads_gpt_widget, .widget_wp_insert_ad_widget, .widget_wpshower_ad, .widgetads, .width-ad-slug, .wikia-ad, .wikia_ad_placeholder, .wingadblock, .wis_adControl, .with-wrapper-ads, .withAds, .with_ctecad, .wixAdsdesktopBottomAd, .wl-ad, .wloadIframeAD, .wn-ad, .wnIframeAd, .wnMultiAd, .wnad, .wp125_write_ads_widget, .wp125ad, .wp125ad_1, .wp125ad_2, .wpInsertAdWidget, .wpInsertInPostAd, .wp_bannerize, .wp_bannerize_container, .wp_bnn, .wp_bnnatcode_wp_bnn, .wpadvert, .wpbrad, .wpbrad-ad, .wpbrad-zone, .wpd-advertisement, .wpfp_custom_ad, .wpfp_custom_ad_content, .wpi_ads, .wpmrec, .wpn_ad_content, .wppaszone, .wpproaddlink, .wpproadgrid, .wpproadszone, .wptouch-ad, .wpx-bannerize, .wpx_bannerize, .wr-ad-slot, .wr-home-top-adv, .wrap-ad, .wrap-ads, .wrap_boxad, .wrapad, .wrapper-ad, .wrapper-ad-sidecol, .wrapper-google-ads, .wrapper-sidebar_ads_box, .wrapper-sidebar_ads_half-page, .wrapper-sponsored-fb, .wrapperAdSky, .wrapper_ad, .wrapper_advertisement, .wrb1_x1_adv, .wrb1_x7_adv, .wrb2_ls1_adv, .wrb2_ls3_adv, .wrb2_x1_adv, .wrb3_ls1_adv, .wrb3_x1_adv, .wrb4_x1_adv, .wrb6_x1_adv, .ws-ad, .wsSearchResultsRightSponsoredLinks, .wsSponsoredLinksRight, .wsTopSposoredLinks, .ws_contentAd660, .wsj-responsive-ad-wrap, .wui-ad-container, .ww_ads_banner_wrapper, .wx-adchoices, .wx-gptADS, .x-ad, .x-home-ad__content, .x-home-ad__content-inner, .x-tile__advert, .x01-ad, .x03-adunit, .x04-adunit, .x81_ad_detail, .xads-blk-bottom-hld, .xads-blk-top-hld, .xads-blk-top2-hld, .xads-blk1, .xads-blk2, .xads-ojedn, .xmlad, .xs_epic_circ_ad, .xs_epic_sponsor_label, .xtopadvert, .y-ads, .y-ads-wide, .y5_ads, .y5_ads2, .y7-advertisement, .y7adHEAD, .y7adS, .y7s-lrec, .yaAds, .yad-sponsored, .yahoo-ad-leader-north, .yahoo-ad-leader-south, .yahoo-ad-lrec-north, .yahoo-banner-ad-container, .yahoo-sponsored, .yahoo-sponsored-links, .yahoo-sponsored-result, .yahooAd, .yahooAds, .yahooContentMatch, .yahoo_ad, .yahoo_ads, .yahooad, .yahooad-image, .yahooad-urlline, .yahooads, .yahootextads_content_bottom, .yam-plus-ad-container, .yan-sponsored, .yat-ad, .yellow_ad, .yfi-fp-ad-logo, .ygrp-ad, .yieldads-160x600, .yieldads-728x90, .yl-lrec-wrap, .yls-sponlink, .yom-ad, .yom-ad-LREC, .yom-ad-LREC2, .yom-ad-LREC3, .yom-ad-MREC2, .yom-ad-moneyball, .youradhere, .youtubeSuperLeaderBoardAdHolder, .youtubeSuperLeaderOverallAdArea, .yrail_ad_wrap, .yrail_ads, .ysmsponsor, .ysp-dynamic-ad, .ysponsor, .yt-adsfull-widget, .yui3-ad, .yvp-ads-overlay, .yvp-ads-view, .yvp-adsview-show, .yw-ad, .z-ad-lockerdome-inline, .z-sponsored-block, .zRightAdNote, .zaba-advertising, .zc-grid-ad, .zc-grid-position-ad, .zem_rp_promoted, .zerg-colm, .zerg-widget, .zeti-ads, .ziffad-wrapper, .zone-advertisement, .zoneAds, .zox_ad_widget, AD-SLOT, AD-TRIPLE-BOX, DFP-AD, FBS-AD, LEADERBOARD-AD, [ad-id^="googlead"], [data-ad-module], [href*=".adcampo.com/"], [href*=".afftracks.online/"], [href*=".jetx.info/"], [href*=".ltroute.com/"], [href*=".revrtb.com/"], [href*=".xiloy.site/"], [href*="cadsecs.com/"], [href*="get-download.club/"], [href*="maskip.co/"], [href*="prayuserparka.com/"], [href*="wap4dollar.com/"], [href^="http://raboninco.com/"], [href^="https://go.affiliatexe.com/"], [id^="bunyad_ads_"], [onclick^="window.open('https://www.brazzersnetwork.com/landing/"], a[href*=".ad-center.com/"], a[href*=".adform.net/"], a[href*=".adsrv.eacdn.com/"] > img, a[href*=".allsports4you.club"], a[href*=".cfm?fp="][href*="&prvtof="], a[href*=".frtyl.com/"], a[href*=".irtyc.com/"], a[href*=".opskln.com/"], a[href*=".smartadserver.com"], a[href*=".udncoeln.com/"], a[href*="//bongacams.com/track?"], a[href*="//bongacams2.com/track?"], a[href*="//bongacams5.com/track?"], a[href*="//bongacams7.com/track?"], a[href*="/adServe/banners?"], a[href*="/adrotate-out.php?"], a[href*="/cmd.php?ad="], a[href*="/servlet/click/zone?"], a[href*="3wr110.xyz/"], a[href*="=exoclick"], a[href*="a2g-secure.com"], a[href*="ad2upapp.com/"], a[href*="get-express-vpn.xyz"], a[href*="n47adshostnet.com/"], a[href^="//awejmp.com/"], a[href^="//pubads.g.doubleclick.net/"], a[href^="//srv.buysellads.com/"], a[href^="//www.mgid.com/"], a[href^="http://9nl.es/"], a[href^="http://ad.doubleclick.net/"], a[href^="http://adf.ly/?id="], a[href^="http://ads.betfair.com/redirect.aspx?"], a[href^="http://ads2.williamhill.com/redirect.aspx?"], a[href^="http://adserving.unibet.com/"], a[href^="http://adultgames.xxx/"], a[href^="http://affiliate.coral.co.uk/processing/"], a[href^="http://affiliates.pinnaclesports.com/processing/"], a[href^="http://affiliates.thrixxx.com/"], a[href^="http://amzn.to/"] > img[src^="data"], a[href^="http://axdsz.pro/"], a[href^="http://banners.victor.com/processing/"], a[href^="http://bodelen.com/"], a[href^="http://bs.serving-sys.com/"], a[href^="http://buysellads.com/"], a[href^="http://c.actiondesk.com/"], a[href^="http://c.jumia.io/"], a[href^="http://campaign.bharatmatrimony.com/track/"], a[href^="http://campeeks.com/"][href*="&utm_"], a[href^="http://chaturbate.com/affiliates/"], a[href^="http://click.payserve.com/"], a[href^="http://cwcams.com/landing/click/"], a[href^="http://espn.zlbu.net/"], a[href^="http://extra.bet365.com/"][href*="?affiliate="], a[href^="http://go.fpmarkets.com/"], a[href^="http://go.trafficshop.com/"], a[href^="http://go.xtbaffiliates.com/"], a[href^="http://hotcandyland.com/partner/"], a[href^="http://istri.it/?"], a[href^="http://join3.bannedsextapes.com/track/"], a[href^="http://keep2share.cc/pr/"], a[href^="http://marketgid.com"], a[href^="http://media.paddypower.com/redirect.aspx?"], a[href^="http://mgid.com/"], a[href^="http://online.ladbrokes.com/promoRedirect?"], a[href^="http://partners.etoro.com/"], a[href^="http://pubads.g.doubleclick.net/"], a[href^="http://record.betsafe.com/"], a[href^="http://refpa.top/"], a[href^="http://see.kmisln.com/"], a[href^="http://server.cpmstar.com/click.aspx?poolid="], a[href^="http://tc.tradetracker.net/"] > img, a[href^="http://tour.mrskin.com/"], a[href^="http://ul.to/ref/"], a[href^="http://vo2.qrlsx.com/"], a[href^="http://wct.link/"], a[href^="http://webgirlz.online/landing/"], a[href^="http://www.adbrite.com/mb/commerce/purchase_form.php?"], a[href^="http://www.adxpansion.com"], a[href^="http://www.badoink.com/go.php?"], a[href^="http://www.bet365.com/"][href*="?affiliate="], a[href^="http://www.bluehost.com/track/"] > img, a[href^="http://www.cdjapan.co.jp/aff/click.cgi/"], a[href^="http://www.coiwqe.site/"], a[href^="http://www.fonts.com/BannerScript/"], a[href^="http://www.mrskin.com/tour"], a[href^="http://www.myfreecams.com/?co_id="][href*="&track="], a[href^="http://www.onwebcam.com/random?t_link="], a[href^="http://www.tirerack.com/affiliates/"], a[href^="http://xads.zedo.com/"], a[href^="https://a.adtng.com/"], a[href^="https://ad.atdmt.com/"], a[href^="https://ad.doubleclick.net/"], a[href^="https://ad13.adfarm1.adition.com/"], a[href^="https://adclick.g.doubleclick.net/"], a[href^="https://ads.ad4game.com/"], a[href^="https://adserver.adreactor.com/"], a[href^="https://adsrv4k.com/"], a[href^="https://aff-ads.stickywilds.com/"], a[href^="https://affiliate.rusvpn.com/click.php?"], a[href^="https://albionsoftwares.com/"], a[href^="https://americafirstpolls.com/"], a[href^="https://awecrptjmp.com/"], a[href^="https://awejmp.com/"], a[href^="https://aweptjmp.com/"], a[href^="https://axdsz.pro/"], a[href^="https://badoinkvr.com/"], a[href^="https://bestcond1tions.com/"], a[href^="https://betway.com/"][href*="&a="], a[href^="https://bs.serving-sys.com"], a[href^="https://chaturbate.com/affiliates/"], a[href^="https://chaturbate.com/in/?tour="], a[href^="https://chaturbate.com/in/?track="], a[href^="https://clickadilla.com/"], a[href^="https://clixtrac.com/"], a[href^="https://cpmspace.com/"], a[href^="https://creacdn.top-convert.com/"], a[href^="https://dediseedbox.com/clients/aff.php?"], a[href^="https://deliver.ptgncdn.com/"], a[href^="https://fakelay.com/"], a[href^="https://fast-redirecting.com/"], a[href^="https://fileboom.me/pr/"], a[href^="https://financeads.net/tc.php?"], a[href^="https://fleshlight.sjv.io/"], a[href^="https://fonts.fontplace9.com/"], a[href^="https://go.247traffic.com/"], a[href^="https://go.cmrdr.com/"], a[href^="https://go.currency.com/"], a[href^="https://go.ebrokerserve.com/"], a[href^="https://go.gldrdr.com/"], a[href^="https://go.hpyjmp.com/"], a[href^="https://go.hpyrdr.com/"], a[href^="https://go.stripchat.com/"][href*="&campaignId="], a[href^="https://googleads.g.doubleclick.net/pcs/click"], a[href^="https://goraps.com/"], a[href^="https://iactrivago.ampxdirect.com/"], a[href^="https://ilovemyfreedoms.com/"][href*="?affiliate_id="], a[href^="https://iqoption.com/lp/mobile-partner/"][href*="?aff="], a[href^="https://jmp.awempire.com/"], a[href^="https://join.dreamsexworld.com/"], a[href^="https://join.sexworld3d.com/track/"], a[href^="https://join.virtuallust3d.com/"], a[href^="https://juicyads.in/"], a[href^="https://k2s.cc/pr/"], a[href^="https://keep2share.cc/pr/"], a[href^="https://landing.brazzersnetwork.com/"], a[href^="https://landing.brazzersplus.com/"], a[href^="https://landing1.brazzersnetwork.com"], a[href^="https://m.do.co/c/"] > img, a[href^="https://mcdlks.com/"], a[href^="https://medleyads.com/"], a[href^="https://misspkl.com/"], a[href^="https://mob1ledev1ces.com/"], a[href^="https://msecure117.com/"], a[href^="https://my-movie.club/"], a[href^="https://porndeals.com/?track="], a[href^="https://prf.hn/click/"][href*="/adref:"], a[href^="https://prf.hn/click/"][href*="/creativeref:"], a[href^="https://pubads.g.doubleclick.net/"], a[href^="https://secure.adnxs.com/clktrb?"], a[href^="https://see.kmisln.com/"], a[href^="https://servedbyadbutler.com/"], a[href^="https://sexsimulator.game/tab/?SID="], a[href^="https://squren.com/rotator/?atomid="], a[href^="https://syndication.dynsrvtbg.com/splash.php?"], a[href^="https://syndication.optimizesrv.com/splash.php?"], a[href^="https://t.grtyi.com/"], a[href^="https://t.hrtyj.com/"], a[href^="https://tc.tradetracker.net/"] > img, a[href^="https://torguard.net/aff.php"] > img, a[href^="https://track.afcpatrk.com/"], a[href^="https://track.afftck.com/"], a[href^="https://track.interactivegf.com/"], a[href^="https://track.totalav.com/"], a[href^="https://track.ultravpn.com/"], a[href^="https://tracking.truthfinder.com/?a="], a[href^="https://trf.bannerator.com/"], a[href^="https://vod09197d7.club/"], a[href^="https://weedzy.co.uk/"][href*="&utm_"], a[href^="https://www.adskeeper.co.uk/"], a[href^="https://www.adultempire.com/"][href*="?partner_id="], a[href^="https://www.awin1.com/cread.php?awinaffid="], a[href^="https://www.brazzersnetwork.com/landing/"], a[href^="https://www.camsoda.com/enter.php?id="], a[href^="https://www.camyou.com/?cam="][href*="&track="], a[href^="https://www.clicktraceclick.com/"], a[href^="https://www.financeads.net/tc.php?"], a[href^="https://www.g4mz.com/"], a[href^="https://www.get-express-vpn.com/offer/"], a[href^="https://www.googleadservices.com/pagead/aclk?"], a[href^="https://www.im88trk.com/"], a[href^="https://www.iyalc.com/"], a[href^="https://www.mrskin.com/tour"], a[href^="https://www.nudeidols.com/cams/"], a[href^="https://www.nutaku.net/signup/landing/"], a[href^="https://www.passeura.com/"], a[href^="https://www.popads.net/users/"], a[src^="https://www.utherverse.com/net/"], app-advertisement, aside[id^="adrotate_widgets-"], aside[id^="advads_ad_widget-"], aside[id^="div-gpt-ad"], aside[itemtype="https://schema.org/WPAdBlock"], div[aria-label="Ads"], div[class*="-storyBodyAd-"], div[class*="_AdInArticle_"], div[class*="_browserAdOuterContainer_"], div[class^="AdEmbeded__AddWrapper"], div[class^="Ad__container"], div[class^="Directory__footerAds"], div[class^="Display_displayAd"], div[class^="PreAd_"], div[class^="SponsoredAds"], div[class^="ad_border_"], div[class^="ad_position_"], div[class^="adbanner_"], div[class^="index_adAfterContent_"], div[class^="index_adBeforeContent_"], div[data-adunit-path], div[data-adunit], div[data-id-advertdfpconf], div[data-native_ad], div[data-role="sidebarAd"], div[data-spotim-slot], div[id^="ADV-SLOT-"], div[id^="acm-ad-tag-"], div[id^="ad-div-"], div[id^="ad-gpt-"], div[id^="ad-position-"], div[id^="ad-server-"], div[id^="ad_bigbox_"], div[id^="ad_position_"], div[id^="ad_rect_"], div[id^="ad_script_"], div[id^="adfox_"], div[id^="adrotate_widgets-"], div[id^="ads120_600-widget"], div[id^="ads250_250-widget"], div[id^="ads300_100-widget"], div[id^="ads300_250-widget"], div[id^="ads300_600-widget"], div[id^="adspot-"], div[id^="advads-"], div[id^="advads_"], div[id^="advt-"], div[id^="crt-"][style], div[id^="dfp-ad-"], div[id^="dfp-slot-"], div[id^="div-ads-"], div[id^="div-gpt-ad"], div[id^="drudge-column-ads-"], div[id^="ezoic-pub-ad"], div[id^="google_dfp_"], div[id^="gtm-ad-"], div[id^="lazyad-"], div[id^="rc-widget-"], div[id^="sticky_ad_"], div[id^="traffective-ad-"], div[id^="yandex_ad"], div[itemtype="http://schema.org/WPAdBlock"], iframe[id^="google_ads_frame"], iframe[id^="google_ads_iframe"], iframe[name^="google_ads_iframe"], iframe[src*="mellowads.com"], img[alt^="Fuckbook"], p[id^="div-gpt-ad-"], span[data-component-type="s-ads-metrics"], .default_rc_theme, .inf-onclickvideo-adbox, .inf-onclickvideo-container, .add-box-side, .add-box-top, .partner-loading-shown.partner-label, .brave-overlay, [id*="MarketGid"], [id*="ScriptRoot"], [href*="//doubleclick-net.com"], [href*="//go2page.net"], [href*="//securesafemembers.com"], [href*="//trackout.business"], a[href*=".trust.zone"], .impo-b-overlay, .impo-b-stitial, .rc-item-wrapper, .rec-sponsored, .rec_article_footer, .rec_article_right, .rec_container__right, .rec_container_footer, .rec_container_right, .rec_title_footer, .amp-ad-container, .amp-ad-wrapper, .amp-adv-container, .amp_ad_1, .amp_ad_header, .ampad, AMP-AD, .gnt_x, #banner_pos1_ddb_0, #banner_pos2_ddb_0, #banner_pos3_ddb_0, #banner_pos4_ddb_0, #rightrail_pos1_ddb_0, #rightrail_pos2_ddb_0, #rightrail_pos3_ddb_0, #story_bottom_ddb_0, #story_top_ddb_0, .component-ddb-300x250-v2, .component-ddb-728x90-v1, .component-ddb-728x90-v2, .ddb, .brandpost_inarticle, #tads[aria-label], #tadsb[aria-label], .commercial-unit-desktop-rhs > .iKidV > .Ee92ae + .P2mpm + .hp3sk, .commercial-unit-desktop-rhs:not(.mnr-c), .section-result[data-result-ad-type], c-wiz[jsrenderer="YnuqN"] > div > div > .Rn1jbe, div[data-crl="true"][data-id^="CarouselPLA-"], div[data-ismultirow="true"][data-id^="CarouselPLA-"], div[jscontroller="U835zd"] + c-wiz[jsrenderer="YnuqN"], .Cheat__outbrain, .js-outbrain-container, .outbrain_ad_li, .outbrain_dual_ad_whats_class, .outbrain_ul_ad_top, .promoted-outbrain, a[data-redirect^="https://paid.outbrain.com/network/redir?"], a[href^="https://paid.outbrain.com/network/redir?"], a[onmousedown^="this.href='http://paid.outbrain.com/network/redir?"][target="_blank"], a[onmousedown^="this.href='https://paid.outbrain.com/network/redir?"][target="_blank"], #taboola-ad, #taboola-below-article-thumbnails, #taboola-below-article-thumbnails-3rd, #taboola-content, #taboola-right-rail-thumbnails-1st, .ad-container--taboola, .box-taboola-content, .dart-ad-taboola, .for-taboola, .nw-taboola, .pb-f-ads-taboola-article-well, .pb-f-ads-taboola-right-rail-alt, .reading-list-rail-taboola, .tablet_ad_box, .tablet_ad_head, .taboola-above-article-thumbnails, .taboola-ad, .taboola-in-plug-wrap, .taboola-inbetweener, .taboola-item, .taboola-left-rail-wrapper, .taboola-partnerlinks-ad, .taboola-single-asset-ads, .taboola-unit, .taboola-widget, .taboola_advertising, .taboola_blk, .taboola_block1, .taboola_lhs, .trc_rbox_div a[target="_blank"][href^="http://tab"], .trc_related_container div[data-item-syndicated="true"], .widget_taboola, a[href^="http://popup.taboola.com/"], #MAIN.ShowTopic > .ad, div[id^="mainads"], .__y_outer, #zergnet, #zergnet-wrapper, .ZERGNET, .component-zergnet, .content-zergnet, .js-footer-zerg, .module-zerg, .o-zergnet, .sidebar-zergnet, .td-zergnet, .widget-ami-zergnet, .widget_ok_zergnet_widget, .zerg-widgets, .zergmod, .zergnet, .zergnet-holder, .zergnet-row, .zergnet-widget, .zergnet-widget-container, .zergnet-widget__header, .zergnet-widget__subtitle, .zergnetBLock, .zergnetpower, .zergpowered, div[id^="zergnet-widget"], .section-subheader > .section-hotel-prices-header{display: none !important;}
</style></head>
<body>

    <div id="main">

        <header>
        <div id="head">
            <h1><a href="${pageContext.request.contextPath }/"><img alt="" src="${pageContext.request.contextPath }/js/main/img/common/logo.png"></a></h1>
            <div id="gnb">
                <ul id="menu">
                    <li data-menuanchor="page2"><a href="#">AnyApart</a></li>
                    <security:authorize access="isAuthenticated()">
                    	<security:authentication property="principal" var="principal" />
                    	<c:set var="authMember" value="${principal.realMember }" />
                    	<c:choose >
                    		<c:when test="${principal.authorities eq '[ROLE_ADMIN]' }">
		                    	<li data-menuanchor="page3"><a class="me-2 link-primary" href="${pageContext.request.contextPath }/vendor">관리 사이트 가기</a></li>
                    		</c:when>
                    		<c:when test="${principal.authorities eq '[ROLE_RES]' }">
		                    	<li data-menuanchor="page3"><a class="me-2 link-primary" href="${pageContext.request.contextPath }/resident">입주민 사이트 가기</a></li>
                    		</c:when>
                    		<c:otherwise>
		                    	<li data-menuanchor="page3"><a class="me-2 link-primary" href="${pageContext.request.contextPath }/office">관리사무소 사이트 가기</a></li>
                    		</c:otherwise>
                    	</c:choose>
                    	<li data-menuanchor="page3"><a href="#">${authMember.memNick } 님</a></li>
                    	<li data-menuanchor="page3"><a href="${cPath }/login/logout.do" class="link-success">로그아웃</a></li>
                    </security:authorize>
                    <security:authorize access="isAnonymous()">
                    	<li data-menuanchor="page3"><a href="${cPath }/login">로그인</a></li>
                    </security:authorize>
                    <li data-menuanchor="page5"><a href="#">아파트 신청하기</a></li>
                    <!--<li><a href="#" class="download">소개서 다운로드</a></li>-->
                </ul>
            </div>
        </div>
    </header>

        <div id="fixedMenu" style="display: none">
            <ul>
                <li>
                    <a href="#">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
                <li>
                    <a href="#" class="active">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>1</span>
                        <em>모빌</em>
                    </a>
                </li>
            </ul>

        </div>


        <div id="fullpage">
            <!-- 1 인트로 -->
            <div class="section fp-auto-height" id="section1" data-stellar-background-ratio="0.5">
                <div class="inner">
                    <div class="txt-box3">

                    </div>
                    <div class="txt-box2">
                        <div class="txt-ani">
                            <div class="txt1">
                                <p data-aos="fade-up">함께사는 즐거움,  <strong>AnyApart</strong>입니다.</p>
                                <!--<p data-aos="fade-up" data-aos-delay="200">아파트앱 1등 서비스 모빌은 이제 카카오 공동체와 함께</p>-->
                                <p data-aos="fade-up" data-aos-delay="200">관리사무소와 입주민의 사이를 더욱 가깝게 만들어주는</p>
                            </div>
                            <div class="ani-box" data-aos="fade-right">
                                <p class="txt2"><img src="${pageContext.request.contextPath }/js/main/img/main/section1_2_txt.png" alt="더 멋진 서비스를 만들어가고자합니다."></p>
                                <p class="ico"><em></em></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 1 인트로 -->

            <!-- 2 아파트소식 -->
            <div class="section fp-auto-height" id="section2">
                <div class="inner section2-1">
                    <h2>아파트 소식</h2>
                    <h3><img src="${pageContext.request.contextPath }/js/main/img/main/section2_title.png" alt="아파트 소식, 놓치지마세요!"></h3>
                    <h4>실시간 알림으로 언제 어디서나 아파트 소식을 받아보세요.</h4>
                    <div class="slider1">
                        <div class="slider-box">
                            <div class="swiper-container">
                                <div class="swiper-pagination"></div>
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="article article1">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp1.png" alt=""></div>

                                            <p style="left:-140px;top:60px;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img1_2.png" alt=""></p>
                                            <div class="txt-box" style="left:-100px; top:370px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">전자투표</p>
                                                <p class="txt">아직도 종이투표하시나요? 모빌의 전자투표를 만나보세요.<br>
                                                    언제 어디서든 아파트 의사결정에 참여할 수 있어요.<br>
                                                    출퇴근 길에 전자투표로 아파트 투표에 참여해보세요!<br>
                                                    모빌의 전자투표는 모든 기기,방식의 전자투표를 지원합니다.
                                                </p>
                                            </div>
                                            <p style="left:600px;top:60px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img1_3.png" alt=""></p>
                                            <p style="left:740px;top:250px;" data-aos="fade-up" data-aos-delay="400"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img1_5.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article2">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp2.png" alt=""></div>
                                            <p style="left:23px;top:51px;" data-aos="fade-left" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img2_1.png" alt=""></p>
                                            <div class="txt-box" style="left:620px; top:290px;" data-aos="fade-up" data-aos-delay="300">
                                                <p class="tit">디지털음성방송</p>
                                                <p class="txt">아직도 집안에서만 방송을 들으시나요? 모빌 디지털<br>
                                                    음성방송은 방송과 동시에 핸드폰으로 확인이 가능합니다.<br>
                                                    회사에서도, 길에서도 쉽게 아파트 방송을 확인해보세요.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article3">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp3.png" alt=""></div>
                                            <p style="left:600px;top:160px;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img3_1.png" alt=""></p>
                                            <p style="left:-210px;top:0;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img3_2.png" alt=""></p>
                                            <div class="txt-box" style="left:-30px; top:370px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">아파트소식</p>
                                                <p class="txt">게시판에 게시되어 있어도, 유심히 보지 않고 <br>
                                                    지나쳤던 유용한 소식들. 모빌로 놓치지 마세요!<br>
                                                    새로운 글이 올라오면 실시간으로 알람이가고,<br>
                                                    댓글로 의견을 표현할 수 있어요.
                                                </p>
                                            </div>
                                            <p style="left:-70px;top:117px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img3_3.png" alt=""></p>
                                            <p style="left:600px;top:60px;" data-aos="fade-left" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img3_4.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article4">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp4.png" alt=""></div>
                                            <p style="left:-120px;top:250px;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img4_2.png" alt=""></p>
                                            <p style="left:-180px;top:90px;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img4_1.png" alt=""></p>
                                            <div class="txt-box" style="left:610px; top:360px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">입주민라운지</p>
                                                <p class="txt">지역 맘카페 가입 가능 날짜 기다리고, 신분증 찍어<br>
                                                    업로드하는 인증은 이제 그만! 카페보다 재밌는<br>
                                                    모빌의 입주민라운지에서 진짜 입주민들끼리 소통하세요.
                                                </p>
                                            </div>
                                            <p style="left:670px;top:90px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img4_3.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article5">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp5.png" alt=""></div>
                                            <p style="left:-120px;top:60px;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img5_1.png" alt=""></p>
                                            <div class="txt-box" style="left:-30px; top:280px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">전자관리비 고지서<br>/간편결제</p>
                                                <p class="txt">종이고지서보다 빠르고, 상세한 모빌의 <br>
                                                    전자관리비고지서.  이번달엔 얼마나 올랐는지, <br>
                                                    내렸는지 동일평형과 비교해서는  얼마나 <br>
                                                    사용했는지 확인해보세요. <br>
                                                    카카오페이 간편결제로 납부도 가능해요!
                                                </p>
                                            </div>
                                            <p style="left:610px;top:70px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img5_3.png" alt=""></p>
                                            <p style="left:635px;top:380px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img5_4.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article6">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_hp6.png" alt=""></div>
                                            <p style="left:545px;top:50px;" data-aos="fade-right" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_img6_1.png" alt=""></p>
                                            <div class="txt-box" style="left:-60px; top:320px;" data-aos="fade-up" data-aos-delay="300">
                                                <p class="tit">계약서 관리</p>
                                                <p class="txt">아파트에서 이루어지는 계약의 기간 및 내용을<br>
                                                    한 눈에 확인 할 수 있습니다. 그리고 계약만료<br>
                                                    3개월 전 혹은 원하는 시점에 미리 알림을 통해<br>
                                                    계약서를 꼼꼼하게 관리할 수 있습니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="inner section2-2">
                    <h2>아파트 생활</h2>
                    <h3><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_title.png" alt="똑똑한 아파트 생활이 시작됩니다."></h3>
                    <h4>빠르게 변화하는 입주민들의 라이프스타일에 발맞춘 서비스, 모빌!</h4>
                    <div class="slider1">
                        <div class="slider-box">
                            <div class="swiper-container">
                                <div class="swiper-pagination"></div>
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="article article1">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp1.png" alt=""></div>
                                            <div class="txt-box" style="left:620px; top:330px;" data-aos="fade-up" data-aos-delay="200">
                                                <p class="tit">우리집</p>
                                                <p class="txt">첫 입주 때 작성했던 입주자카드.<br>
                                                    어떻게 작성했는지 기억은 나시나요?<br>
                                                    우리집 정보가 어떻게 입력되어있는지 <br>
                                                    모빌로 확인해보세요. 잘못된 정보는 관리사무소에 <br>
                                                    수정요청을 통해 정정할 수 있습니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article2">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp2.png" alt=""></div>
                                            <p style="left:620px;top:90px;" data-aos="fade-left" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img2_1.png" alt=""></p>
                                            <div class="txt-box" style="left:-50px; top:280px;" data-aos="fade-up" data-aos-delay="300">
                                                <p class="tit">커뮤니티시설관리</p>
                                                <p class="txt">쉽게 청구하고, 한눈에 확인하세요!<br>
                                                    관리비로 청구되는 커뮤니티 시설 이용료.<br>
                                                    누가, 얼마썼는지 몰라서 매번 찝찝한 마음으로<br>
                                                    관리비를 내셨나요?<br>
                                                    모빌로 사용내역을 실시간으로 확인하세요!
                                                </p>
                                            </div>
                                            <p style="left:620px;top:190px;" data-aos="fade-left" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img2_2.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article3">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp3.png" alt=""></div>
                                            <p style="left:-170px;top:130px;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img3_1.png" alt=""></p>
                                            <p style="left:-120px;top:230px;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img3_2.png" alt=""></p>
                                            <div class="txt-box" style="left:630px; top:340px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">방문차량신청</p>
                                                <p class="txt">방문예정인 손님의 차량을 미리 신청해보세요.<br>
                                                    관리사무소에 전화할 필요없이 <br>
                                                    클릭 몇 번으로 손님을 센스있게 맞이하세요.
                                                </p>
                                            </div>
                                            <p style="left:610px;top:70px;" data-aos="fade-down" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img3_3.png" alt=""></p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article4">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp4.png" alt=""></div>
                                            <p style="left:566px;top:54px;" data-aos="fade-right" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img4_1.png" alt=""></p>
                                            <div class="txt-box" style="left:-20px; top:350px;" data-aos="fade-up" data-aos-delay="300">
                                                <p class="tit">전자민원창구</p>
                                                <p class="txt">모빌로 간편하게 민원을 접수하고,<br>답변이 달리면 실시간 알림으로 받아보세요! </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="article article5">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp5.png" alt=""></div>
                                            <p style="left:-270px;top:130px;z-index:120;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img5_2.png" alt=""></p>
                                            <p style="left:-270px;top:230px;" data-aos="fade-right" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img5_1.png" alt=""></p>
                                            <div class="txt-box" style="left:630px; top:370px;" data-aos="fade-up" data-aos-delay="400">
                                                <p class="tit">예약관리</p>
                                                <p class="txt">아파트 단지 내의 여러 시설물들 어떻게 이용하고 계신가요?<br>
                                                    관리사무소에 전화하거나 직접 방문할 필요없이<br>
                                                    모빌로 내가 원하는 시간에 원하는 자리를 예약해보세요.
                                                </p>
                                            </div>
                                            <p style="left:610px;top:130px;z-index:120;" data-aos="fade-left" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img5_3.png" alt=""></p>
                                            <p style="left:610px;top:230px;" data-aos="fade-left" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img5_4.png" alt=""></p>
                                        </div>
                                    </div>
<!--                                    <div class="swiper-slide">-->
<!--                                        <div class="article article6">-->
<!--                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp6.png" alt=""></div>-->
<!--                                            <p style="left:566px;top:53px;" data-aos="fade-right" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img6_1.png" alt=""></p>-->
<!--                                            <div class="txt-box" style="left:-80px; top:290px;" data-aos="fade-up" data-aos-delay="300">-->
<!--                                                <p class="tit">기기&amp;시설물관리</p>-->
<!--                                                <p class="txt">아파트 시설물이 궁금할땐?<br>-->
<!--                                                    QR코드를 찍어보세요!<br>-->
<!--                                                    구매시기,구매가격,관리자정보,제조사 등 <br>-->
<!--                                                    시설에 대한 자세한 정보를 한눈에 확인 할 수 있어요.-->
<!--                                                </p>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                    </div>-->
                                    <div class="swiper-slide">
                                        <div class="article article6">
                                            <div class="hp" data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_hp7.png" alt=""></div>
                                            <p style="left:-90px;top:100px;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img7_1.png" alt=""></p>
                                            <p style="left:-90px;top:210px;" data-aos="fade-right" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img7_2.png" alt=""></p>
                                            <p style="left:610px;top:100px;z-index:120;" data-aos="fade-left" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img7_3.png" alt=""></p>
                                            <div class="txt-box" style="left:-40px; top:360px;" data-aos="fade-up" data-aos-delay="300">
                                                <p class="tit">전화번호부</p>
                                                <p class="txt">관리사무소, 각종 A/S업체 번호들...<br>
                                                    매일 찾느라 힘드셨나요?<br>
                                                    이젠 모빌에서 한 눈에 보고, 바로 전화거세요!</p>
                                            </div>
                                            <p style="left:610px;top:210px;" data-aos="fade-left" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_2_img7_4.png" alt=""></p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="inner section2-3">
                    <h2 data-aos="fade-up">관리사무소</h2>
                    <h3 data-aos="fade-up" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_title.png" alt="관리사무소 업무도 모빌이 도와드려요!"></h3>
                    <h4 data-aos="fade-up" data-aos-delay="400">엑셀보다 더 똑똑한 모빌을 만나보세요.</h4>
                    <div class="img-box">
                        <div data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_hp.png" alt=""></div>
                        <p style="left: -400px;top:70px;" data-aos="fade-down" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img2.png" alt=""></p>
                        <p style="left: -170px;top:30px;" data-aos="fade-up" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img3.png" alt=""></p>
                        <p style="left: -330px;top:410px;" data-aos="fade-left" data-aos-delay="400"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img4.png" alt=""></p>

                        <p style="left: 460px;top:20px;" data-aos="fade-down" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img5.png" alt=""></p>
                        <p style="left: 470px;top:340px;" data-aos="fade-up" data-aos-delay="300"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img6.png" alt=""></p>
                        <p style="left:800px;top:90px;" data-aos="fade-left" data-aos-delay="400"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_img7.png" alt=""></p>
                    </div>
                    <div class="txt-box">
                        <div class="col-box">
                            <div class="col-right t4">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit4.png" alt="문자보내기"></h5>
                                <p data-aos="fade-up">더 이상 관리사무소 직원 개인핸드폰으로 <br>
                                    문자 보내실 필요 없어요. 모빌로 동별로, <br>
                                    그룹별로, 특정 입주민에게만 문자를 <br>
                                    보낼 수 있습니다.</p>
                            </div>
                            <div class="col-left t1">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit1.png" alt="자동입주민관리"></h5>
                                <p data-aos="fade-up">아파트 어플이 필요하다고해서 썼더니, 매번<br>
                                    입주민 승인해줘야되고... 많이 힘드셨죠? <br>
                                    모빌은 자동으로 입주민 가입을 승인하고,<br>
                                    이사간 입주민은 자동으로 분류해드립니다.</p>
                            </div>
                            <div class="col-left t3">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit3.png" alt="미등록차량관리"></h5>
                                <p data-aos="fade-up">아직도 몇동 몇호 방문했는지 수기로 작성하고 <br>
                                    계세요? 전자입차기록으로 수기는 이제 그만!<br>
                                    방문했던 차량 내역을 출력할 수 있고, <br>
                                    방문차량 입차시 입주민에게 알람을 보내드려요!</p>
                            </div>
                            <div class="col-right t2">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit2.png" alt="전자결재"></h5>
                                <p data-aos="fade-up">결재 올리고, 오타나면 또 다시 올리고...<br>
                                    저번에 올렸던 기안서는 어디에 뒀는지 생각도 안나고...<br>
                                    모빌 전자결재로 업무 효율성을 높여보세요!</p>
                            </div>
                            <div class="col-left t5">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit5.png" alt="차량조회"></h5>
                                <p data-aos="fade-up">차량 스티커 없는 우리 아파트. 입주민 차량인지, <br>
                                    외부차량인지... 모빌로 차량번호를 조회하고 <br>
                                    차량을 쉽게 구분해보세요.<br><br>
                                    *유료상품인 스마트주차장 기능으로<br> 업데이트될 예정입니다.
                                </p>
                            </div>
                            <div class="col-right t6">
                                <h5 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/section2_3_tit6.png" alt="전자설문"></h5>
                                <p data-aos="fade-up">모빌의 전자설문을 통해 입주민들의 의견을 <br>
                                    쉽고 간편하게 수렴할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- // 2 아파트소식 -->


            <div class="section fp-auto-height" id="section5">
                <div class="inner">
                    <div class="col-box">
                        <div class="col-left">
                            <h6 data-aos="fade-up">로그인 </h6>
                            <div class="box" data-aos="fade-up" data-aos-delay="300">
                                <div class="fq">
                                    <a href="/faq" class="q1">
                                        <img src="${pageContext.request.contextPath }/js/main/img/main/faq_ico1.png" alt="">
                                        <strong>입주민 로그인</strong>
                                        <span>입주민을 위한 우리아파트 페이지</span>
                                    </a>
                                    <a href="/faq" class="q2">
                                        <img src="${pageContext.request.contextPath }/js/main/img/main/faq_ico2.png" alt="">
                                        <strong>관리자 로그인</strong>
                                        <span>관리사무소 직원을 위한 우리아파트 관리 시스템</span>
                                    </a>
                                    <a href="/faq" class="q3">
                                        <img src="${pageContext.request.contextPath }/js/main/img/main/faq_ico3.png" alt="">
                                        <strong>벤더 로그인</strong>
                                        <span>고객에게 충실한 대하겠습니다.</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-right">
                            <h6 data-aos="fade-up" data-aos-delay="200">벤더 공지사항</h6>
                            <div class="box" data-aos="fade-up" data-aos-delay="400">
                                <ul>
                                    <li>
                                        <a href="/notice/view?seq=582">
                                            <strong>2021년 1월 19일 (화)부터 모...</strong>
                                            <span>2021.01.18</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/notice/view?seq=557">
                                            <strong>모빌 서비스 개인정보처리방침 개정 안...</strong>
                                            <span>2020.12.04</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/notice/view?seq=542">
                                            <strong>11월 12일 (목) 고객센터 배선 ...</strong>
                                            <span>2020.11.09</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/notice/view?seq=539">
                                            <strong>모빌 서비스 개인정보처리방침 개정 안...</strong>
                                            <span>2020.11.05</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/notice/view?seq=535">
                                            <strong>입주민 어플 (iOS) 계약서 기능 ...</strong>
                                            <span>2020.11.04</span>
                                        </a>
                                    </li>
                                </ul>
                                <a href="/notice/list" class="btn-more">전체보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 5 자주하는질문 -->


            <!-- 4 다운로드 -->
            <div class="section fp-auto-height" id="section4">
                <div class="inner">
                    <h6 data-aos="fade-up"><img src="${pageContext.request.contextPath }/js/main/img/main/tit_download.png" alt="DOWNLOAD"></h6>
                    <p class="desc" data-aos="fade-up" data-aos-delay="200"><strong>안드로이드, 아이폰</strong> 누구나 사용 가능!</p>

                    <div class="img-box">
                        <p style="left: -100px; top:20px;" data-aos="fade-right" data-aos-delay="200"><img src="${pageContext.request.contextPath }/js/main/img/main/download_img1.png" alt=""></p>
                        <p style="left: 300px; top:70px;" data-aos="fade-up" data-aos-delay="400"><img src="${pageContext.request.contextPath }/js/main/img/main/download_img2.png" alt=""></p>
                        <div class="app" style="left: 530px; top:80px;">
                            <p data-aos="fade-up" data-aos-delay="200"><strong>입주민</strong>을 위한 모바일 앱</p>
                            <a href="https://itunes.apple.com/kr/app/mobil/id1006763538?mt=8" data-aos="fade-up" data-aos-delay="400"><img src="${pageContext.request.contextPath }/js/main/img/main/download_ios.png" alt="APP STORE"></a>
                            <a href="https://play.google.com/store/apps/details?id=com.movill.app" data-aos="fade-up" data-aos-delay="500"><img src="${pageContext.request.contextPath }/js/main/img/main/download_and.png" alt="GOOGLE PLAY"></a>
                        </div>
                        <div class="app" style="left: 760px; top:80px;">
                            <p data-aos="fade-up" data-aos-delay="400"><strong>관리사무소</strong>를 위한 모바일 앱</p>
                            <a href="https://itunes.apple.com/kr/app/mobil/id1375322242?mt=8" data-aos="fade-up" data-aos-delay="700"><img src="${pageContext.request.contextPath }/js/main/img/main/download_ios.png" alt="APP STORE"></a>
                            <a href="https://play.google.com/store/apps/details?id=com.movill.vote.mv" data-aos="fade-up" data-aos-delay="800"><img src="${pageContext.request.contextPath }/js/main/img/main/download_and.png" alt="GOOGLE PLAY"></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 4 다운로드 -->
        </div>

        <footer>
    <div id="footer">
        <div class="inner">
            <p class="logo"><img src="${pageContext.request.contextPath }/js/main/img/common/foot_logo.png" alt="MOVILL"></p>
            <div class="addr">
                <div class="lnb">
                    <a href="/terms">이용약관</a>
                    <a href="/privacy">개인정보 처리방침</a>
                    <a href="/servicePolicy">서비스 운영정책</a>
                    <a href="/serviceRestrictPolicy">서비스 이용 제한 규정</a>
                    <a href="/serviceContentPolicy">게시물 게시중지 처리규정</a>
                </div>
                <div class="copy">
                    <p class="ccopy">경기도 성남시 분당구 분당내곡로117 크래프톤타워 4층  |  대표이사 : 서대규 ㅣ 사업자 등록번호: 741-86-01123</p>
                    <p class="ccopy">고객센터: 1899-6527 ㅣ Email: help@movill.net</p>
                    <p class="ccopy">COPYLIGHT 2018 MOVILL CORP. ALL RIGHTS RESERVED.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

    </div>

    <script>
        // 스크롤 페이지
        var myFullpage = new fullpage('#fullpage', {
            menu: '#menu',
            anchors: ['page1','page2','page3','page5'],
            autoScrolling: false,
            slidesNavigation: true,
            offsetSections: true,
            fitToSection:false,
            navigation:true,
            bigSectionsDestination:'top',
            afterLoad: function(origin, destination, direction){
                //

            },
            onLeave: function(origin, destination, direction){
                //
                //console.log("실행 ")
                slider1.autoplay.start();
            },
            navigationPosition: 'left',
            navigationTooltips: ['AnyApart', '기능소개', '로그인', '아파트 신청하기'],
            showActiveTooltip: true,
            licenseKey: 'CD03178F-3B5241B8-A08E9C3B-8EDE85BA'
        });


        // 최상단 배경 애니메이션
        $.stellar({
            horizontalScrolling: false,
            verticalOffset: 40
        });

        // 엘리먼트 애니메이션 스크립트
        AOS.init({
            duration: 600,	// 속도
            once:true		// 한번만 실행
        });

        // 아파트 소식
        var slider1 = new Swiper('.section2-1 .swiper-container', {
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<p class="'+className+' button' + (index+1) + '"><span></span><em></em></p>';
                },
            },
            autoplay: {
                delay:5000
            },
            on: {
                tap:function(){
                    console.log('시작');

                },
                slideChange: function () {
                    //console.log('slideChange');
                    $('.section2-1 .article2 .aos-init').removeClass('aos-animate');
                    $('.section2-1 .swiper-container').addClass('current'+slider1.activeIndex);
                    $('.section2-1 .swiper-container').removeClass('current'+slider1.previousIndex);

                },
                slideChangeTransitionStart:function(){
                    $('.section2-1 .swiper-slide .aos-init').removeClass('aos-animate');
                    //console.log('slideChangeTransitionStart')
                },
                slideChangeTransitionEnd:function(){
                    //console.log('slideChangeTransitionEnd')
                    $('.section2-1 .swiper-slide .aos-init').removeClass('aos-animate');
                    $('.section2-1 .swiper-slide-active .aos-init').addClass('aos-animate');
                    $('.section2-1 .swiper-slide-active .aos-init ').addClass('aos-animate');
                }
            },
        });
        setTimeout(function(){
            $('.section2-1 .article2 .aos-init').removeClass('aos-animate');
        },500)
        slider1.autoplay.stop();

        // 아파트생활
        var slider2 = new Swiper('.section2-2 .swiper-container', {
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<p class="'+className+' button' + (index+1) + '"><span></span><em></em></p>';
                },
            },
            autoplay: {
                delay:5000
            },
            on: {
                slideChange: function () {
                    $('.section2-2 .swiper-container').addClass('current'+slider2.activeIndex);
                    $('.section2-2 .swiper-container').removeClass('current'+slider2.previousIndex);

                },
                slideChangeTransitionStart:function(){
                    $('.section2-2 .swiper-slide .aos-init').removeClass('aos-animate');
                },
                slideChangeTransitionEnd:function(){
                    $('.section2-2 .swiper-slide .aos-init').removeClass('aos-animate');
                    $('.section2-2 .swiper-slide-active .aos-init').addClass('aos-animate');
                    $('.section2-2 .swiper-slide-active .aos-init ').addClass('aos-animate');
                }
            },
        });
        setTimeout(function(){
            //$('.section2-2 .article2 .aos-init').removeClass('aos-animate');
        },500);
        slider2.autoplay.stop();

        // 스토리
        var swiper = new Swiper('#section3 .swiper-container', {
            centeredSlides: true,
            slidesPerView: '3',
            loop: true,
            spaceBetween: 25,
            /*loop:true,*/
            navigation: {
                nextEl: '#section3 .swiper-button-next',
                prevEl: '#section3 .swiper-button-prev',
            },
        });

        $("#head").sticky({topSpacing:0});

        /*
        var iScrollPos = 0;
        $(window).scroll(function () {
            var iCurScrollPos = $(this).scrollTop();
            if (iCurScrollPos > iScrollPos) {
                $('#head-sticky-wrapper').addClass('hide');
            } else {
                $('#head-sticky-wrapper').removeClass('hide');
            }
            iScrollPos = iCurScrollPos;
        });
        */
        $(function(){
            $(window).scrPosition(function(a){
                if(a == "up"){
                    var getScrollTop = $(this).scrollTop();
                    if(getScrollTop > 200)
                        $('#head-sticky-wrapper').addClass('hide');
                }else{
                    $('#head-sticky-wrapper').removeClass('hide');
                }
            });
        });

        $('.section2-2').appear();
        $(document.body).on('appear', '.section2-2', function(e, $affected) {
            slider2.autoplay.start();
        });

    </script>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-64855785-1', 'auto');
        ga('send', 'pageview');

    </script>



</body>
</html>