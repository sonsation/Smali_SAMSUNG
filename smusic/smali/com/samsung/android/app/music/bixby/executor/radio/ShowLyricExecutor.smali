.class public Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;
.super Ljava/lang/Object;
.source "ShowLyricExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowLyricExecutor"


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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->executeLyricCommand()V

    return-void
.end method

.method private executeCommand()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->closeMoreMenu()V

    .line 58
    const-string v1, "Lyrics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->isLyricLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->executeLyricCommand()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->setLyricLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    goto :goto_0
.end method

.method private executeLyricCommand()V
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "state":Ljava/lang/String;
    const-string v2, "Lyrics"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->supportLyric()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->launchLyric()V

    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "SucceedShowLyrics"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 89
    :cond_1
    return-void

    .line 81
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "CurrentSongInfo"

    const-string v3, "Exist"

    const-string v4, "no"

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
    const-string v0, "SHOW_LYRICS"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "ShowLyricExecutor"

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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->executeCommand()V

    .line 50
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->executeCommand()V

    .line 94
    return-void
.end method
