.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/provider/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final FONT_SIZE:Ljava/lang/String;

.field public static final WIFI_DISPLAY_ON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "font_size"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "wifi_display_on"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "font_size"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "wifi_display_on"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
