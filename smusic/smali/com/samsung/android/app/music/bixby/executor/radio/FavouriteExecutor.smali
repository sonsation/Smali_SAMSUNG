.class public Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;
.super Ljava/lang/Object;
.source "FavouriteExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "FavouriteExecutor"


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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    .line 34
    return-void
.end method

.method private onCommandCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->isFavorite()Z

    move-result v0

    .line 56
    .local v0, "isFavorite":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "state":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "FavouriteUndo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->setFavoriteUndo()V

    .line 64
    const-string v3, "SameState"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 79
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 83
    :goto_1
    return-void

    .line 66
    :cond_1
    const-string v3, "SameState"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v3, "Favourite"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v0, :cond_3

    .line 71
    const-string v3, "SameState"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->setFavorite()V

    .line 74
    const-string v3, "SameState"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1
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
    const-string v0, "CHANGE_FAVOURITE"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "FavouriteExecutor"

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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->onCommandCompleted()V

    .line 49
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

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
    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;->onCommandCompleted()V

    .line 88
    return-void
.end method
