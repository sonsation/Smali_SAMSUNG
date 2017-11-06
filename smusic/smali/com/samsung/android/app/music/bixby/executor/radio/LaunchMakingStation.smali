.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;
.super Ljava/lang/Object;
.source "LaunchMakingStation.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LaunchMakingStation"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;->mCallback:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;

    .line 36
    return-void
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

    .line 40
    const-string v3, "LaunchMakingStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() - Action("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") State("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") isLast("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "state":Ljava/lang/String;
    const/4 v0, 0x0

    .line 46
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "MyStationEdit"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;->mCallback:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;

    const v4, 0x7f1205d9

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;->pressMenu(I)V

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 50
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "MyStations"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 61
    :goto_1
    return v2

    .line 51
    :cond_1
    const-string v3, "MyStationCreate"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;->mCallback:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;

    const v4, 0x7f1205d8

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;->pressMenu(I)V

    .line 53
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
