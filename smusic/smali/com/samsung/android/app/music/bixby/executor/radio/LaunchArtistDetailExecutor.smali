.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchArtistDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchArtistDetailExecutor"


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialFragment"    # Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    .line 34
    return-void
.end method

.method private onCommandCompleted()V
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "state":Ljava/lang/String;
    const-string v2, "ArtistPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->supportArtsitDetail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->launchArtistDetail()V

    .line 68
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->closeMoreMenu()V

    .line 73
    return-void

    .line 63
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "CelebSong"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    const-string v0, "ARTIST_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "LaunchArtistDetailExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->onCommandCompleted()V

    .line 49
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;->onCommandCompleted()V

    .line 78
    return-void
.end method
