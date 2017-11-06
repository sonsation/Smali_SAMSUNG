.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SoundPlayerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field private static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final GPM_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.music"

.field private static final NMP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.music"

.field private static final OMP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.music.chn"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioStreamType:I

.field private final mCommandReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

.field private final mDesktopModeEventListener:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

.field private mIsPaused:Z

.field private mIsPremiumWatch:Z

.field private mIsStopped:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

.field private final mScanReceiver:Landroid/content/BroadcastReceiver;

.field private mSdcardPath:Ljava/lang/String;

.field private final mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

.field private mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;

.field private mUserLeftHintIndirectly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPaused:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsStopped:Z

    .line 97
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mAudioStreamType:I

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    .line 105
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mDesktopModeEventListener:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    .line 325
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 734
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 817
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$8;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isNMPPackageEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsStopped:Z

    return v0
.end method

.method private convertFileUriToContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 645
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 646
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_data COLLATE NOCASE = ?"

    .line 647
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 649
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    .line 650
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getContentUri(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 652
    .local v6, "contentUri":Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 654
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getContentUri(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 657
    :cond_0
    return-object v6
.end method

.method private fileExistCheck(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 610
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 612
    const/4 v2, 0x0

    .line 617
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 617
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getContentUri(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 662
    const/4 v7, 0x0

    .line 663
    .local v7, "contentUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 666
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "_id"

    .line 670
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 669
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 673
    :cond_0
    if-eqz v6, :cond_1

    .line 674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_1
    return-object v7

    .line 673
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isGPMPackageEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 244
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 245
    const-string v3, "com.google.android.music"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "com.google.android.music"

    .line 246
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const/4 v2, 0x1

    .line 254
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNMPPackageEnabled()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 274
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_2

    .line 277
    const-string v6, "com.sec.android.app.music"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 278
    .local v1, "isInstalled":Z
    :goto_0
    const-string v6, "com.sec.android.app.music"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 279
    .local v2, "isNMP":Z
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.sec.android.app.music, isInstalled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isNmp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 287
    .end local v1    # "isInstalled":Z
    .end local v2    # "isNMP":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v4

    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v1, v5

    .line 277
    goto :goto_0

    .restart local v1    # "isInstalled":Z
    .restart local v2    # "isNMP":Z
    :cond_1
    move v4, v5

    .line 282
    goto :goto_1

    .line 284
    .end local v1    # "isInstalled":Z
    .end local v2    # "isNMP":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v4, v5

    .line 287
    goto :goto_1
.end method

.method private isOMPPackageEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 261
    const-string v3, "com.samsung.android.app.music.chn"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v2, 0x1

    .line 268
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private needHunNotification(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)Z
    .locals 6
    .param p1, "hunPreference"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string v4, "hunActivated"

    .line 232
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    .line 233
    .local v0, "hunActivated":Z
    const-string v4, "dontShowCheck"

    .line 234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    .line 235
    .local v1, "isDontShowChecked":Z
    const-string v4, "notiCount"

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, "notiCount":I
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isNMPPackageEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isOMPPackageEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isGPMPackageEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    .line 472
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 473
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v5, "processIntent() - There\'s no uri so can\'t play."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    return v3

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "action":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processIntent() - intent action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPreparing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processIntent() - MediaPlayer is preparing, ignore this request, action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSdcardPath:Ljava/lang/String;

    .line 487
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "uriStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 492
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, "findIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    .line 497
    .end local v1    # "findIndex":I
    :cond_3
    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processWebContents(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    .line 509
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 499
    :cond_4
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "content://com.sec.android.app.myfiles.FileProvider/"

    .line 500
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 501
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processLocalContents(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1

    .line 502
    :cond_6
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 503
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 504
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processMediaStoreContents(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1

    .line 506
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processOtherContents(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1
.end method

.method private processLocalContents(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uriStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 529
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v7, "processLocalContents()"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 532
    .local v3, "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->convertFileUriToContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 533
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 534
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    .line 539
    :goto_0
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_AUTOANSWERING_MEMO:Z

    if-eqz v6, :cond_0

    .line 541
    const-string v6, "isAnsweringMemo"

    .line 542
    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 544
    .local v4, "isAnsweringMemo":Z
    if-eqz v4, :cond_4

    .line 545
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setVolumeControlStream(I)V

    .line 546
    iput v9, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mAudioStreamType:I

    .line 550
    const-string v6, "displayName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "displayName":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 553
    iput-object v1, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    .line 561
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v4    # "isAnsweringMemo":Z
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 562
    .local v5, "isFileExist":Z
    if-eqz v3, :cond_1

    .line 563
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 564
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v7, "processLocalContents there are no path information thus using file uri"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v6, "content://com.sec.android.app.myfiles.FileProvider/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 576
    const-string v6, "key_filename"

    .line 577
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    .line 587
    :goto_2
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->fileExistCheck(Ljava/lang/String;)Z

    move-result v5

    .line 588
    if-nez v5, :cond_1

    .line 590
    const-string v6, "%"

    const-string v7, "%25"

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    const-string v8, "%23"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "filterUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    .line 592
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    .line 593
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->fileExistCheck(Ljava/lang/String;)Z

    move-result v5

    .line 600
    .end local v2    # "filterUri":Ljava/lang/String;
    :cond_1
    :goto_3
    if-nez v5, :cond_2

    .line 601
    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_find_item:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 602
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 603
    const/4 v3, 0x0

    .line 605
    .end local v3    # "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    :cond_2
    return-object v3

    .line 536
    .end local v5    # "isFileExist":Z
    .restart local v3    # "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->getSongInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v3

    goto :goto_0

    .line 556
    .restart local v4    # "isAnsweringMemo":Z
    :cond_4
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setVolumeControlStream(I)V

    .line 557
    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mAudioStreamType:I

    goto :goto_1

    .line 584
    .end local v4    # "isAnsweringMemo":Z
    .restart local v5    # "isFileExist":Z
    :cond_5
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    .line 585
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    goto :goto_2

    .line 596
    :cond_6
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->fileExistCheck(Ljava/lang/String;)Z

    move-result v5

    goto :goto_3
.end method

.method private processMediaStoreContents(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 621
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "processMediaStoreContents()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->getSongInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    return-object v0
.end method

.method private processOtherContents(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uriStr"    # Ljava/lang/String;

    .prologue
    .line 626
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "processOtherContents()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->getSongInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    .line 629
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    .end local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 631
    .restart local v0    # "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    .line 635
    :cond_0
    const-string v1, "content://mms/part/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content://security_mms/part/"

    .line 636
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "title_name"

    .line 637
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title_name"

    .line 638
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 639
    const-string/jumbo v1, "title_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    .line 641
    :cond_2
    return-object v0
.end method

.method private processWebContents(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 517
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "processWebContents()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 519
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    const-string v1, "from-myfiles"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const-string/jumbo v1, "title_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    .line 524
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    .line 525
    return-object v0

    .line 522
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private registerCommandReceiver()V
    .locals 2

    .prologue
    .line 728
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 729
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    return-void
.end method

.method private registerScanListener()V
    .locals 2

    .prologue
    .line 710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 711
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 715
    return-void
.end method

.method private registerSystemReceiver()V
    .locals 2

    .prologue
    .line 718
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v1, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 725
    return-void
.end method

.method private setCloseButton(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->close_btn:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "close":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 366
    :cond_0
    return-void
.end method

.method private setShortCutButton()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 291
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-nez v4, :cond_0

    .line 323
    :goto_0
    return-void

    .line 295
    :cond_0
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_shortcut_btn:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "btn":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isNMPPackageEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->isMusic:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 297
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v4, v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->id:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPlayableId(J)J

    move-result-wide v2

    .line 298
    .local v2, "playableId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMUSIC-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setShortCutButton() - There is no playable id, the current audio id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v6, v6, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_1
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_shortcut:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 307
    .local v1, "btnText":Landroid/widget/TextView;
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->sound_player_shortcut_text_for_jpn:I

    .line 308
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;J)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 308
    :cond_2
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->sound_player_shortcut_text:I

    .line 309
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 321
    .end local v1    # "btnText":Landroid/widget/TextView;
    .end local v2    # "playableId":J
    :cond_3
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private startSoundPlayer()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCurrentSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->updateCurrentSongInfo(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setDataSource(Landroid/net/Uri;Z)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startSoundPlayer() mCurrentSongInfo is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    goto :goto_0
.end method

.method private uriHasUserId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 513
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getPlayableId(J)J
    .locals 2
    .param p1, "audioId"    # J

    .prologue
    .line 347
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isNeedToIntentForwarding()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method protected launchPlayer(Ljava/lang/String;JJZ)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "playableId"    # J
    .param p4, "seekPosition"    # J
    .param p6, "play"    # Z

    .prologue
    .line 351
    return-void
.end method

.method public onCompletion()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 704
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onCompletion()V

    goto :goto_0

    .line 706
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    .line 707
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isNeedToIntentForwarding()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processIntent(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    goto :goto_0

    .line 157
    :cond_2
    sget v10, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_player_common:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setContentView(I)V

    .line 158
    sget v10, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_root:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_3

    .line 160
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, " Failed to make sound player. Current layout does not have view with id attribute \'R.id.sound_player_root\'."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 170
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 171
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget v11, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mAudioStreamType:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setAudioStreamType(I)V

    .line 172
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    new-instance v11, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setOnSoundPlayerViewChangedListener(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;)V

    .line 173
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v10, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setOnSoundPlayerStateListener(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;)V

    .line 176
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {v5, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 177
    .local v5, "playerController":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 180
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-direct {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 184
    .local v1, "forwardRewindInputListener":Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;

    invoke-direct {v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;-><init>(Landroid/view/View;)V

    .line 185
    .local v6, "playerPlayingItemText":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 189
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;

    invoke-direct {v7, p0, v9, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;)V

    .line 191
    .local v7, "seekController":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 195
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-direct {v4, p0, v9, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 196
    .local v4, "playController":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setCloseButton(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setShortCutButton()V

    .line 204
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mDesktopModeEventListener:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    .line 205
    invoke-static {p0, v10}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerObserver(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerCommandReceiver()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerScanListener()V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerSystemReceiver()V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->startSoundPlayer()V

    .line 212
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-ge v10, v11, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 215
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v10, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    invoke-static {v3, v10}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 218
    sget v10, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    invoke-static {v3, v10}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 223
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "hunPreference":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;
    sget-boolean v10, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HUN_NOTIFICATION:Z

    if-eqz v10, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->needHunNotification(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 225
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;

    invoke-direct {v8, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)V

    .line 226
    .local v8, "updater":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->createNotification(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stop()V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->release()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mDesktopModeEventListener:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->unregisterObserver(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V

    .line 439
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    .line 440
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 682
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 683
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 685
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stop()V

    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->processIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->startSoundPlayer()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPause()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPaused:Z

    .line 404
    return-void
.end method

.method public onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 689
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 690
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 692
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    .line 396
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    .line 397
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPaused:Z

    .line 398
    return-void
.end method

.method public onSeekComplete(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 696
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 697
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onSeekComplete(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 699
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 385
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsStopped:Z

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setMediaSessionActive(Z)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 391
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() is called, mUserLeftHintIndirectly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setMediaSessionActive(Z)V

    .line 417
    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    .line 419
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsStopped:Z

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 421
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    .line 422
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setMediaSessionActive(Z)V

    .line 375
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mIsPremiumWatch:Z

    .line 376
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->mUserLeftHintIndirectly:Z

    .line 377
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onUserLeaveHint()V

    .line 378
    return-void
.end method
