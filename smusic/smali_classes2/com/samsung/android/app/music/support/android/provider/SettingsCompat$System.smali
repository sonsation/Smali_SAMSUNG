.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/provider/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final EASY_MODE_MUSIC:Ljava/lang/String;

.field public static final EASY_MODE_SWITCH:Ljava/lang/String;

.field public static final SELECT_ICON_1:Ljava/lang/String;

.field public static final SELECT_ICON_2:Ljava/lang/String;

.field public static final SELECT_NAME_1:Ljava/lang/String;

.field public static final SELECT_NAME_2:Ljava/lang/String;

.field public static final ULTRA_POWERSAVING_MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "ultra_powersaving_mode"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    .line 51
    const-string v0, "easy_mode_switch"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    .line 53
    const-string v0, "android.provider.Settings$System"

    const-string v1, "SEM_EASY_MODE_MUSIC"

    const-string v2, ""

    .line 54
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 56
    const-string v0, "android.provider.Settings$System"

    const-string v1, "SEM_SELECT_NAME_1"

    const-string v2, ""

    .line 57
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    .line 59
    const-string v0, "android.provider.Settings$System"

    const-string v1, "SEM_SELECT_NAME_2"

    const-string v2, ""

    .line 60
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    .line 62
    const-string v0, "android.provider.Settings$System"

    const-string v1, "SEM_SELECT_ICON_1"

    const-string v2, ""

    .line 63
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_ICON_1:Ljava/lang/String;

    .line 65
    const-string v0, "android.provider.Settings$System"

    const-string v1, "SEM_SELECT_ICON_2"

    const-string v2, ""

    .line 66
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_ICON_2:Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "ultra_powersaving_mode"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    .line 69
    const-string v0, "easy_mode_switch"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "select_name_1"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "select_name_2"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "select_icon_1"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_ICON_1:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "select_icon_2"

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_ICON_2:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 79
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method
