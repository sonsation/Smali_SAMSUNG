.class public Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;
.super Ljava/lang/Object;
.source "RadioHistoryExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioHistoryExecutor"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mDelegate:Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "delegate"    # Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mApplicationContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mDelegate:Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 43
    const-string v4, "RadioHistoryExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - Action("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") State("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") isLast("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "state":Ljava/lang/String;
    const-string v4, "DELETE_RADIO_HISTORY"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "RadioHistoryDelete"

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$RadioHistory;->getRadioHistoryCount(Landroid/content/Context;)I

    move-result v0

    .line 53
    .local v0, "count":I
    const-string v4, "RadioHistoryExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radio history count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-lez v0, :cond_1

    .line 55
    const-string v4, "RadioHistory"

    const-string v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mDelegate:Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;

    invoke-interface {v4}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;->onDeleteAllRequest()V

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 64
    .end local v0    # "count":I
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    :goto_1
    return v3

    .line 58
    .restart local v0    # "count":I
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    const-string v4, "RadioHistory"

    const-string v5, "Exist"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "count":I
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
