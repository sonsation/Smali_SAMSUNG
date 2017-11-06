.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;
.super Ljava/lang/Object;
.source "DisplayManagerUtils.java"


# static fields
.field public static final ADDRESS_INFO:I = 0x1

.field public static final ALL_TOGETHER_RUNNING:I = 0x8

.field public static final DEFAULT_WFD_DEVICE_TYPE:I = 0x9

.field public static final GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

.field public static final GROUP_PLAY_RUNNING:I = 0x7

.field public static final HDMI:I = 0x3

.field public static final LIMITED_PLAY_VIA_SCREEN_MIRRORING:I = 0x6

.field public static final NAME_INFO:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final POWER_SAVING_ON:I = 0x5

.field public static final SIDE_SYNC_RUNNING:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_INFO:I = 0x3

.field public static final WFD_DONGLE_TYPE:I = 0x0

.field public static final WIFI_DIRECT:I = 0x2

.field public static final WIFI_HOTSPOT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Ljava/lang/String;)I
    .locals 7
    .param p0, "primaryDeviceTypeStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 56
    const/16 v0, 0x9

    .line 57
    .local v0, "deviceType":I
    if-eqz p0, :cond_0

    .line 58
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 72
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWfdDeviceType() - primaryDeviceTypeStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deviceType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v0

    .line 66
    .restart local v2    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceType - deviceType is invalid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
