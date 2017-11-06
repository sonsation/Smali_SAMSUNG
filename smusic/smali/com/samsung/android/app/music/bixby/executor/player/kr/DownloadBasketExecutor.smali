.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;
.super Ljava/lang/Object;
.source "DownloadBasketExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mActivity:Landroid/app/Activity;

    .line 42
    return-void
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

    .line 46
    const-string v8, "DOWNLOAD_BASKET"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 47
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "state":Ljava/lang/String;
    const/4 v3, 0x0

    .line 51
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "DownloadBasket"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 54
    .local v2, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v8, "android.media.metadata.TITLE"

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "songTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    const-string v9, "Current song info is not exist"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v8, "CurrentSongInfo"

    const-string v9, "Exist"

    const-string v10, "no"

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 95
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "songTitle":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    :goto_0
    return v7

    .line 63
    .restart local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v4    # "songTitle":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 64
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    const-string v9, "Current is celeb song"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v8, "CelebSong"

    const-string v9, "Valid"

    const-string/jumbo v10, "yes"

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v4    # "songTitle":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 89
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 67
    .restart local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .restart local v4    # "songTitle":Ljava/lang/String;
    :cond_2
    const-string v8, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v1, v8

    .line 68
    .local v1, "cpAttrs":I
    const v8, 0x80002

    if-eq v1, v8, :cond_3

    .line 69
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    const-string v9, "Current is local song"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v8, "OnDeviceSongs"

    const-string v9, "Valid"

    const-string/jumbo v10, "yes"

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAllBasketTrackIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "basketSavedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0xc8

    if-le v8, v9, :cond_4

    .line 75
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->TAG:Ljava/lang/String;

    const-string v9, "Number of songs in download cart can not be over"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v8, "ExceedMaxNumber"

    const-string v9, "Valid"

    const-string/jumbo v10, "yes"

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_4
    const-string v8, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "trackId":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mActivity:Landroid/app/Activity;

    .line 81
    invoke-static {v8, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    const-string v8, "ExceedMaxNumber"

    const-string v9, "Valid"

    const-string v10, "no"

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v0    # "basketSavedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "cpAttrs":I
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v4    # "songTitle":Ljava/lang/String;
    .end local v6    # "trackId":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto/16 :goto_0

    .line 95
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v5    # "state":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
