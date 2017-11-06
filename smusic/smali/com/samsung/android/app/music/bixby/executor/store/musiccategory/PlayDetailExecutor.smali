.class public Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;
.super Ljava/lang/Object;
.source "PlayDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayDetailExecutor"


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    .line 36
    return-void
.end method

.method private excuteCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "PlayAllGenreCharts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    .line 58
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->getCategoryType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    .line 59
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->getSelectedTabId()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->setPlayResult(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->playAll()V

    .line 71
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 62
    :cond_0
    const-string v0, "PlayAllYearCharts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    .line 63
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->getCategoryType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    .line 64
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->getSelectedTabId()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->setPlayResult(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;->playAll()V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v2, "MUSIC_CATEGORY_PLAYALL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const-string v2, "PlayDetailExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->excuteCommand(Ljava/lang/String;)Z

    move-result v0

    .line 46
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 50
    :cond_0
    const/4 v1, 0x1

    .line 53
    .end local v0    # "success":Z
    :cond_1
    return v1
.end method

.method public playFail(Z)V
    .locals 4
    .param p1, "isOverMaximum"    # Z

    .prologue
    .line 88
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 90
    const-string v1, "ExceedMaxNumber"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 96
    return-void

    .line 92
    :cond_0
    const-string v1, "SucceedPlaying"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playSuccess(Z)V
    .locals 4
    .param p1, "isSubUser"    # Z

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 78
    const-string v1, "Subscription"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 84
    return-void

    .line 80
    :cond_0
    const-string v1, "Subscription"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
