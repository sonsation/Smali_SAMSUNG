.class public Lcom/samsung/android/app/music/common/info/MusicPreference$Key;
.super Ljava/lang/Object;
.source "MusicPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/info/MusicPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Event;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$MyMusicMode;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$LegalInformation;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$FilterOption;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Search;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Legacy;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Share;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$EdgePanel;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Update;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$StatusLogging;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Library;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$PrivateMode;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$SettingsMenu;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key$Application;
    }
.end annotation


# static fields
.field public static final GROUP_BY_ARTIST:Ljava/lang/String; = "group_by_artist"

.field public static final MAIN_CURRENT_TAB:Ljava/lang/String; = "main_current_tab"

.field public static final MOBILE_DATA_USAGE_NOTICE:Ljava/lang/String; = "mobile_data_usage_notice"

.field public static final OOBE_FLAG:Ljava/lang/String; = "OOBE_flag"

.field public static final TAB_SETTINGS_UPDATE:Ljava/lang/String; = "tab_settings_update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
