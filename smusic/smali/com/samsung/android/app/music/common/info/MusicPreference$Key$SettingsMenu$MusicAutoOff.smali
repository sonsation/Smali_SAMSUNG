.class public Lcom/samsung/android/app/music/common/info/MusicPreference$Key$SettingsMenu$MusicAutoOff;
.super Ljava/lang/Object;
.source "MusicPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/info/MusicPreference$Key$SettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicAutoOff"
.end annotation


# static fields
.field public static final CUSTOM_HOUR:Ljava/lang/String; = "music_auto_off_custom_hour"

.field public static final CUSTOM_MIN:Ljava/lang/String; = "music_auto_off_custom_min"

.field public static final ENTRY_POSITION:Ljava/lang/String; = "music_auto_off_entry_position"

.field public static final TARGET_TIME:Ljava/lang/String; = "music_auto_off_target_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
