.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchAlbumDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    .line 50
    return-void
.end method

.method private launchAlbumDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 4
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;
    .param p2, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "CurrentSongInfo"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 103
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchAlbumDetail() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 101
    const-string v1, "4323"

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 11
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 54
    const-string v8, "ALBUM_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 55
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    .line 58
    .local v4, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v8, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v1, v8

    .line 59
    .local v1, "cpAttrs":I
    packed-switch v1, :pswitch_data_0

    .line 74
    const-string v8, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 75
    .local v2, "albumId":J
    const-string v8, "android.media.metadata.ALBUM"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "album":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v0, v9}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 77
    const-string v8, "4323"

    .line 78
    invoke-static {v8}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 79
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "ArtistInformation"

    const-string v9, "Exist"

    const-string/jumbo v10, "yes"

    invoke-virtual {v5, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 86
    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "cpAttrs":I
    .end local v2    # "albumId":J
    .end local v4    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v5    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v7

    .line 61
    .restart local v1    # "cpAttrs":I
    .restart local v4    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :pswitch_0
    const-string v8, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "trackId":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 63
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v5    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "CurrentSongInfo"

    const-string v9, "Exist"

    const-string v10, "no"

    invoke-virtual {v5, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 70
    .end local v5    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 71
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    iget-object v9, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v6, p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->requestTrackDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_0

    .line 86
    .end local v1    # "cpAttrs":I
    .end local v4    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v6    # "trackId":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x80002
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdated(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 2
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;->launchAlbumDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 109
    return-void
.end method
