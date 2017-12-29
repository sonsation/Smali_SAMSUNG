.class public Lcom/mods/grx/GrxSettings;
.super Ljava/lang/Object;
.source "GrxSettings.java"


# static fields
.field public static mGrxAlbumArtOpacity:F

.field public static mGrxAllowHeadsUpNotifications:Z

.field public static mGrxAllowReplySecureNotis:Z

.field public static mGrxApplyTllesColors:Z

.field public static mGrxBrightnessControl:Z

.field public static mGrxColorDividerToggles:I

.field public static mGrxColorTextoToggles:I

.field public static mGrxColorTogglesDim:I

.field public static mGrxColorTogglesEditor:I

.field public static mGrxColorTogglesOff:I

.field public static mGrxColorTogglesOn:I

.field public static mGrxColoresToggles:Z

.field public static mGrxError:Z

.field public static mGrxForceNumberOfNotiIcons:Z

.field public static mGrxHeadsUpEnabled:Z

.field public static mGrxHeadsUpTime:I

.field public static mGrxHiddenSBIcons:Ljava/lang/String;

.field public static mGrxIsThemeActive:Z

.field public static mGrxKeyPadDigitColor:I

.field public static mGrxKeyPadSubTextColor:I

.field public static mGrxKeyPadTextColor:I

.field public static mGrxLSCarrierLabelColor:I

.field public static mGrxLSCarrierLabelVisibility:I

.field public static mGrxMaxKeyguardNotifications:I

.field public static mGrxNotiPanelApplyColors:Z

.field public static mGrxNotiPanelBgEnabled:Z

.field public static mGrxNotiPanelHeaderBgColor:I

.field public static mGrxNotiPanelQuickQsBgColor:I

.field public static mGrxNotificationAreaBGColor:I

.field public static mGrxNotificationAreaBGColorWithHeadsUp:I

.field public static mGrxNotificationBGColor:I

.field public static mGrxNotificationBGColorAlpha:F

.field public static mGrxNotificationBGColorAlpha:I

.field public static mGrxNotificationBGShape:I

.field public static mGrxNotificationColorSwitch:Z

.field public static mGrxNotificationGearButtonColor:I

.field public static mGrxNotificationPanelBgColor:I

.field public static mGrxNotificationTextColor:I

.field public static mGrxNotificationTitleColor:I

.field public static mGrxNumberOfForcedNotiIcons:I

.field public static mGrxPanelBgSwitch:Z

.field public static mGrxPanelExpandedIconsSwitch:Z

.field public static mGrxSError:Ljava/lang/String;

.field public static mGrxShowAlbumArt:Z

.field public static mGrxShowAlbumArtWithMusicOff:Z

.field public static mGrxShowStockBattery:Z

.field public static mGrxSpeedViewColor:I

.field public static mGrxStockBatteryColor:I

.field public static mGrxUnlockNotificationColors:Z

.field public static mGrxWakeOnFingerPrint:Z

.field public static mGrxWeatherInfoAQUIColor:I

.field public static mGrxWeatherInfoCityColor:I

.field public static mGrxWeatherInfoShow:Z

.field public static mGrxWeatherInfoTempColor:I

.field public static mGrxWeatherInfoTempRangeColor:I

.field public static mGrxWeatherInfoTextSize:I

.field public static mGrxWeatherInfoWeatherTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v1, ""

    sput-object v1, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelBgEnabled:Z

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelApplyColors:Z

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxNotificationColorSwitch:Z

    const-string v1, "#fffafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotificationAreaBGColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotificationAreaBGColorWithHeadsUp:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotificationPanelBgColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelHeaderBgColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelQuickQsBgColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxStockBatteryColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxLSCarrierLabelColor:I

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxSpeedViewColor:I

    const v2, 0x0

    sput v2, Lcom/mods/grx/GrxSettings;->mGrxLSCarrierLabelVisibility:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxApplyTllesColors:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxBrightnessControl:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxIsThemeActive:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxUnlockNotificationColors:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxForceNumberOfNotiIcons:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoShow:Z

    const/4 v1, 0x1

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxShowAlbumArtWithMusicOff:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxShowStockBattery:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxAllowHeadsUpNotifications:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxHeadsUpEnabled:Z

    const/4 v1, 0x0

    sput-boolean v0, Lcom/mods/grx/GrxSettings;->mGrxShowAlbumArt:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxColoresToggles:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxAllowReplySecureNotis:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxPanelBgSwitch:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxWakeOnFingerPrint:Z

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxPanelExpandedIconsSwitch:Z

    const-string v0, "#ff252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxNotificationGearButtonColor:I

    const-string v0, "#33252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorDividerToggles:I

    const-string v0, "#ff252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorTextoToggles:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxNotificationTitleColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxNotificationTextColor:I

    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesDim:I

    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesEditor:I

    const-string v0, "#4d252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesOff:I

    const-string v0, "#ff22c4ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesOn:I

    const-string v0, "#ffffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxKeyPadTextColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxKeyPadSubTextColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxKeyPadDigitColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoAQUIColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoWeatherTextColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTempRangeColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoCityColor:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTempColor:I

    const v0, 0x3

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxMaxKeyguardNotifications:I

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxNumberOfForcedNotiIcons:I

    const v0, 0xe

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTextSize:I

    const v0, 0x0

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGShape:I

    const/16 v0, 0x1388

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxHeadsUpTime:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/mods/grx/GrxSettings;->mGrxAlbumArtOpacity:F

    const-string v0, ""

    sput-object v0, Lcom/mods/grx/GrxSettings;->mGrxHiddenSBIcons:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlphaPart(I)I
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0
.end method

.method public static getColorPart(I)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0xff

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static int_a_bool(I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static poner_color_drawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    invoke-static {p1}, Lcom/mods/grx/GrxSettings;->getColorPart(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1}, Lcom/mods/grx/GrxSettings;->getAlphaPart(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static poner_color_imageview(Landroid/widget/ImageView;I)V
    .locals 3

    invoke-static {p1}, Lcom/mods/grx/GrxSettings;->getColorPart(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1}, Lcom/mods/grx/GrxSettings;->getAlphaPart(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method public static read_albumart_values(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x0

    const-string v3, "b_show_album_art"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v2

    sput-boolean v2, Lcom/mods/grx/GrxSettings;->mGrxShowAlbumArt:Z

    const v1, 0x1

    const-string v3, "b_show_album_art_music_paused"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v2

    sput-boolean v2, Lcom/mods/grx/GrxSettings;->mGrxShowAlbumArtWithMusicOff:Z

    const v1, 0x64

    const-string v3, "b_album_art_opacity"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x64

    int-to-float v2, v2

    div-float v1, v1, v2

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxAlbumArtOpacity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_async_colors(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x3

    const-string v3, "b_max_notis_ls"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxMaxKeyguardNotifications:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_keypad_text_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxKeyPadTextColor:I

    const-string v3, "b_keypad_digit_subtext_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxKeyPadSubTextColor:I

    const-string v3, "b_keypad_digit_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxKeyPadDigitColor:I

    const-string v3, "b_stbatt_show"

    const v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxShowStockBattery:Z

    const-string v3, "b_allow_headsup"

    const v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxAllowHeadsUpNotifications:Z

    const-string v3, "lock_screen_allow_remote_input"

    const v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxAllowReplySecureNotis:Z

    const-string v2, "#fffafafa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_stbatt_main_color"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxStockBatteryColor:I

    const-string v2, "#fffafafa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_ls_carrier_color"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxLSCarrierLabelColor:I

    const-string v3, "b_ls_carrier_visibility"

    const v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const v1, 0x8

    if-eqz v3, :cond_0

    const v1, 0x0

    :cond_0
    sput v1, Lcom/mods/grx/GrxSettings;->mGrxLSCarrierLabelVisibility:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_bool_key(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v2

    return v2
.end method

.method public static read_brightness_control_options(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x0

    const-string v3, "b_brightness_control"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v3

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxBrightnessControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_heads_up_options(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x1

    const-string v3, "b_headsup_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v3

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxHeadsUpEnabled:Z

    const v1, 0x5

    const-string v3, "b_headsup_time"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const v1, 0x3e8

    mul-int v3, v3, v1

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxHeadsUpTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_noti_panel_bg_colors(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v2, ""

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v3, 0x0

    const-string v2, "b_notipanelbgs_apply_colors"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelApplyColors:Z

    const-string v2, "#fffafafa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_notipanelbgs_headercolor"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelHeaderBgColor:I

    const-string v2, "#fffafafa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "b_notipanelbgs_quickqscolor"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxNotiPanelQuickQsBgColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_notification_bg_colors(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const-string v3, "#fffafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_notifications_bg_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGColorAlpha:I

    int-to-float v1, v1

    const v2, 0xff

    int-to-float v2, v2

    div-float v1, v1, v2

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGColorAlpha:F

    const-string v3, "#fffafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_notifications_area_bg_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationAreaBGColor:I

    const-string v3, "#fffafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_notifications_area_bg_color_heads_up"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationAreaBGColorWithHeadsUp:I

    const v1, 0x0

    const-string v3, "b_notifications_bg_shape"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationBGShape:I

    const-string v3, "#fffafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_panelbg_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationPanelBgColor:I

    const-string v3, "#ff252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_notification_gear_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/mods/grx/GrxSettings;->mGrxNotificationGearButtonColor:I

    const v1, 0x0

    const-string v3, "b_notifications_bg_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v2

    sput-boolean v2, Lcom/mods/grx/GrxSettings;->mGrxNotificationColorSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_notification_colors_options(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v3, 0x0

    const-string v2, "unlock_notification_colors"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxUnlockNotificationColors:Z

    const-string v3, "#ff252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "noti_app_title_sec_text_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxNotificationTitleColor:I

    const-string v3, "#ff252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "notification_summary_text_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxNotificationTextColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_other_colors(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const-string v3, "#fffafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_netspeed_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxSpeedViewColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_other_mods(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x0

    const-string v3, "b_force_nof_notiicons"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxForceNumberOfNotiIcons:Z

    const v1, 0x3

    const-string v3, "b_forced_notiicons"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxNumberOfForcedNotiIcons:I

    const v1, 0x0

    const-string v3, "b_show_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoShow:Z

    const v1, 0xe

    const-string v3, "b_text_size_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTextSize:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_city_color_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoCityColor:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_temp_color_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTempColor:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_temp_range_color_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoTempRangeColor:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_temp_text_color_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoWeatherTextColor:I

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_aqui_color_weatherinfo"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxWeatherInfoAQUIColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_sbicons_options(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const-string v3, "b_grx_icon_blacklist"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxHiddenSBIcons:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v3, ""

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_1
.end method

.method public static read_switches_values(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x0

    const-string v3, "expanded_switch_bg"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxPanelBgSwitch:Z

    const v1, 0x0

    const-string v3, "fp_wake_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxWakeOnFingerPrint:Z

    const v1, 0x0

    const-string v3, "expanded_icons_colors_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxPanelExpandedIconsSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method

.method public static read_tiles_options(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    const-string v3, ""

    sput-object v3, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    :try_start_0
    const v1, 0x0

    const-string v3, "b_togg_apply_colors"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mods/grx/GrxSettings;->int_a_bool(I)Z

    move-result v3

    sput-boolean v3, Lcom/mods/grx/GrxSettings;->mGrxApplyTllesColors:Z

    const-string v3, "#ff22c4ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesOn:I

    const-string v3, "#4d252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_off"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesOff:I

    const-string v3, "#ff9e9e9e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_dim"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesDim:I

    const-string v3, "#ff9e9e9e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_editor"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorTogglesEditor:I

    const-string v3, "#ff252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_texto"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorTextoToggles:I

    const-string v3, "#33252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "b_togg_color_div"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/mods/grx/GrxSettings;->mGrxColorDividerToggles:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mods/grx/GrxSettings;->mGrxError:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mods/grx/GrxSettings;->mGrxSError:Ljava/lang/String;

    goto :goto_0
.end method
