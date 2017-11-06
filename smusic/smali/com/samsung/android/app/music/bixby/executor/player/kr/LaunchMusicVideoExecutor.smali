.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;
.super Ljava/lang/Object;
.source "LaunchMusicVideoExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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
    .line 28
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    .line 45
    return-void
.end method

.method private hasMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Z
    .locals 1
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

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

.method private launchMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 8
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;
    .param p2, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    const/4 v7, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->hasMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "MusicVideo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 111
    :goto_0
    return-void

    .line 84
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchMusicVideo() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isMvExplicit()Z

    move-result v6

    .line 86
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, "isLaunch":Z
    const-string v3, "4325"

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isMvExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "ExplicitContentOn"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "SucceedPlaying"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 101
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v2

    .line 102
    .local v2, "premium":Z
    if-eqz v2, :cond_3

    .line 103
    const-string v3, "Subscription"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto/16 :goto_0

    .line 106
    :cond_3
    const-string v3, "Subscription"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 49
    const-string v5, "MUSIC_VIDEO_PLAYER"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 51
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 52
    .local v0, "cpAttrs":I
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    packed-switch v0, :pswitch_data_0

    .line 66
    const-string v5, "MusicVideo"

    const-string v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 72
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_1
    return v4

    .line 55
    .restart local v0    # "cpAttrs":I
    .restart local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .restart local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :pswitch_0
    const-string v5, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "trackId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 57
    const-string v5, "CurrentSongInfo"

    const-string v6, "Exist"

    const-string v7, "no"

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 63
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3, p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->requestTrackDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_1

    .line 72
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v3    # "trackId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 53
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
    .line 119
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;->launchMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 121
    return-void
.end method
