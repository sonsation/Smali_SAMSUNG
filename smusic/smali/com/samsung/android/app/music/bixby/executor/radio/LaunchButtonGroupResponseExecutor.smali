.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;
.super Ljava/lang/Object;
.source "LaunchButtonGroupResponseExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchButtonGroupResponseExecutor"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mApplicationContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 29
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

    .line 38
    const-string v4, "LaunchButtonGroupResponseExecutor"

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

    .line 39
    const-string v4, "RADIO_BUTTON_GROUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "state":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "RadioHistory"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$RadioHistory;->getRadioHistoryCount(Landroid/content/Context;)I

    move-result v0

    .line 47
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 48
    const-string v4, "RadioHistory"

    const-string v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "count":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 59
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 66
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "state":Ljava/lang/String;
    :goto_1
    return v3

    .line 50
    .restart local v0    # "count":I
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    const-string v4, "RadioHistory"

    const-string v5, "Exist"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "count":I
    :cond_2
    const-string v4, "ShareStation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "JustForYouStation"

    const-string v5, "Valid"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1

    .line 66
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "state":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
