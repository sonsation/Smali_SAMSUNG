.class public Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;
.super Ljava/lang/Object;
.source "TopChartPlayExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartPlayExecutor"


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mDisplayType:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    .line 41
    return-void
.end method

.method private excuteCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "PlayAllRealtimeCharts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "2"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "PlayAllDailyCharts"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "3"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "PlayAllWeeklyCharts"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "4"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;->setPlayResult(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;->playAll()V

    .line 74
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 71
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
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

    .line 45
    const-string v2, "PLAY_TOPCHART"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "TopChartPlayExecutor"

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

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->excuteCommand(Ljava/lang/String;)Z

    move-result v0

    .line 51
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 55
    :cond_0
    const/4 v1, 0x1

    .line 58
    .end local v0    # "success":Z
    :cond_1
    return v1
.end method

.method public playFail(Z)V
    .locals 4
    .param p1, "isOverMaximum"    # Z

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 92
    const-string v1, "ExceedMaxNumber"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 98
    return-void

    .line 94
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
    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 81
    const-string v1, "Subscription"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 86
    return-void

    .line 83
    :cond_0
    const-string v1, "Subscription"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
