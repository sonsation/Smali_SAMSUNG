.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;
.super Ljava/lang/Object;
.source "LaunchStationTPOExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchStationTPOExecutor"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragmentManager:Landroid/app/FragmentManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "dialFragment"    # Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mDialFragment:Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    return-object v0
.end method

.method private excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v2, "StationSelectTPO"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "LaunchStationTPOExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATION_SELECT_TPO rule id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getRuleId()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "ruleId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;)V

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addTPOStationByRuleID(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    .end local v1    # "ruleId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "StationSelectTPO"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "TPOName"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

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
    .line 50
    const-string v0, "STATION_SELECT_TPO"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "LaunchStationTPOExecutor"

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

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
