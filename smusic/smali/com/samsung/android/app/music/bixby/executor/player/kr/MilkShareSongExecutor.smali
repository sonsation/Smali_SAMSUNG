.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;
.super Ljava/lang/Object;
.source "MilkShareSongExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
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
    .line 23
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 9
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 39
    const-string v6, "SHARE_SONG"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 40
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 43
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v6, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 44
    .local v0, "cpAttrs":I
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const v6, 0x80002

    if-eq v0, v6, :cond_0

    .line 46
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->TAG:Ljava/lang/String;

    const-string v7, "Current is local song."

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v6, "OnDeviceSongs"

    const-string v7, "Valid"

    const-string/jumbo v8, "yes"

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v7, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 69
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_1
    return v5

    .line 50
    .restart local v0    # "cpAttrs":I
    .restart local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .restart local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    const-string v6, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "trackId":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v3

    .line 52
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v3, :cond_1

    .line 53
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current is empty song - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v6, "CurrentSongInfo"

    const-string v7, "Exist"

    const-string v8, "no"

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current is celeb song - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v6, "CelebSong"

    const-string v7, "Valid"

    const-string/jumbo v8, "yes"

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 62
    const-string v6, "OnDeviceSongs"

    const-string v7, "Valid"

    const-string v8, "no"

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v4    # "trackId":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
