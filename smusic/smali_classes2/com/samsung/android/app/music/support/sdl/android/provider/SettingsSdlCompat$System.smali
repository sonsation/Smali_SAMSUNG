.class public Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;
.super Ljava/lang/Object;
.source "SettingsSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final AIR_MORION_TURN_BGM_ON_LOCK_SCREEN:Ljava/lang/String; = "air_motion_turn_bgm_on_lock_screen"

.field public static final AIR_MORION_TURN_NOW_PLAYING_ON_MUSIC:Ljava/lang/String; = "air_motion_turn_now_playing_on_music"

.field public static final AIR_MOTION_TURN:Ljava/lang/String; = "air_motion_turn"

.field public static final EASY_MODE_MUSIC:Ljava/lang/String;

.field public static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field public static final SELECT_ICON_1:Ljava/lang/String; = "select_icon_1"

.field public static final SELECT_ICON_2:Ljava/lang/String; = "select_icon_2"

.field public static final SELECT_NAME_1:Ljava/lang/String; = "select_name_1"

.field public static final SELECT_NAME_2:Ljava/lang/String; = "select_name_2"

.field public static final ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "android.provider.Settings$System"

    const-string v1, "EASY_MODE_MUSIC"

    const-string v2, "easy_mode_music"

    .line 23
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 42
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method