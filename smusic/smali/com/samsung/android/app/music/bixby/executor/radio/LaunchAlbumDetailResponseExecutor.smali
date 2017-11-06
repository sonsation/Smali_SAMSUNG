.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;
.super Ljava/lang/Object;
.source "LaunchAlbumDetailResponseExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchAlbumDetailResponseExecutor"


# instance fields
.field private final mAlbumDetailActivity:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "albumDetailActivity"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mAlbumDetailActivity:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .line 34
    return-void
.end method

.method private onCommandCompleted()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mAlbumDetailActivity:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->isAlbumInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "AlbumInformation"

    const-string v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 70
    return-void

    .line 67
    :cond_0
    const-string v1, "AlbumInformation"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    const-string v1, "LaunchAlbumDetailResponseExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "ALBUM_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "state":Ljava/lang/String;
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 44
    const-string v1, "AlbumPage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mAlbumDetailActivity:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->isLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->onCommandCompleted()V

    .line 52
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 54
    .end local v0    # "state":Ljava/lang/String;
    :goto_1
    return v1

    .line 48
    .restart local v0    # "state":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->mAlbumDetailActivity:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    goto :goto_0

    .line 54
    .end local v0    # "state":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;->onCommandCompleted()V

    .line 60
    return-void
.end method
