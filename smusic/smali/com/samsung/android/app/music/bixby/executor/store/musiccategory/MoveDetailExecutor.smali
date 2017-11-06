.class public Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;
.super Ljava/lang/Object;
.source "MoveDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveDetailExecutor"


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tabControllable"    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 39
    return-void
.end method

.method private getTabId(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "tabId":I
    const-string v1, "MusicCategoryAlbums"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    const-string v1, "MusicCategoryArtists"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "state":Ljava/lang/String;
    const-string v2, "MusicCategoryArtists"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MusicCategoryAlbums"

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MusicCategoryCharts"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->getCategoryType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 95
    const-string v2, "GenreName"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 103
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 107
    :goto_1
    return-void

    .line 97
    .restart local v1    # "state":Ljava/lang/String;
    :cond_2
    const-string v2, "Year"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1    # "state":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    const-string v1, "MOVE_MUSIC_CATEGORY_DETAIL_TAB"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const-string v1, "MoveDetailExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->getTabId(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "tabId":I
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    .line 51
    const-string v1, "MusicCategoryAlbums"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MusicCategoryArtists"

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->sendComplete()V

    :goto_0
    move v1, v2

    .line 65
    .end local v0    # "tabId":I
    :goto_1
    return v1

    .line 55
    .restart local v0    # "tabId":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->isLoadFinished(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->sendComplete()V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    move v1, v2

    .line 59
    goto :goto_1

    .end local v0    # "tabId":I
    :cond_3
    move v1, v3

    .line 65
    goto :goto_1
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;->sendComplete()V

    .line 83
    return-void
.end method
