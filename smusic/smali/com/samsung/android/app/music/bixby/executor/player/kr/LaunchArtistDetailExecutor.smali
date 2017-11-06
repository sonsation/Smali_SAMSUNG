.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchArtistDetailExecutor.java"

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
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    .line 50
    return-void
.end method

.method private launchArtistDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 4
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "CurrentSongInfo"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 101
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchArtistDetail() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mActivity:Landroid/app/Activity;

    .line 98
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveArtist(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/util/List;)Z

    .line 99
    const-string v1, "4324"

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

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
    const-string v8, "ARTIST_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 55
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->TAG:Ljava/lang/String;

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
    const-string v8, "com.samsung.android.app.music.metadata.ARTIST_ID"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 75
    .local v2, "artistId":J
    const-string v8, "android.media.metadata.ARTIST"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "artist":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 78
    .local v5, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "AlbumInformation"

    const-string v9, "Exist"

    const-string/jumbo v10, "yes"

    invoke-virtual {v5, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 84
    .end local v0    # "artist":Ljava/lang/String;
    .end local v1    # "cpAttrs":I
    .end local v2    # "artistId":J
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
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 70
    .end local v5    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 71
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    iget-object v9, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v6, p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->requestTrackDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_0

    .line 84
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
    .line 105
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;->launchArtistDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    .line 107
    return-void
.end method
