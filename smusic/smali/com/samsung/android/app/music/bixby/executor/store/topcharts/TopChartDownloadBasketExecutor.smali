.class public Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;
.super Ljava/lang/Object;
.source "TopChartDownloadBasketExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartDownloadBasketExecutor"


# instance fields
.field private final mDisplayType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "displayType"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mDisplayType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    .line 36
    return-void
.end method

.method private excuteCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "DownloadBasket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "3"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "4"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;->downloadTracks()V

    .line 68
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    const-string v4, "DOWNLOAD_BASKET"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const-string v4, "TopChartDownloadBasketExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->excuteCommand(Ljava/lang/String;)Z

    move-result v1

    .line 45
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "ExceedMaxNumber"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 54
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "success":Z
    :goto_0
    return v2

    .line 50
    .restart local v1    # "success":Z
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .end local v1    # "success":Z
    :cond_1
    move v2, v3

    .line 54
    goto :goto_0
.end method
