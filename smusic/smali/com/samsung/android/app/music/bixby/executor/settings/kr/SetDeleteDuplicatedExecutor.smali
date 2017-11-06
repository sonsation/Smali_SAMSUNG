.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;
.super Ljava/lang/Object;
.source "SetDeleteDuplicatedExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsFragment"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 32
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

    .line 36
    const-string v4, "SET_DELETE_DUPLICATED_SONGS"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->TAG:Ljava/lang/String;

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
    const-string v4, "DeleteDuplicatedSongsOn"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    .local v1, "on":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setDuplicateOption(Z)Z

    move-result v2

    .line 42
    .local v2, "success":Z
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Settings"

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v1, :cond_1

    .line 44
    if-eqz v2, :cond_0

    .line 45
    const-string v4, "DeleteDuplicatedSongs"

    const-string v5, "AlreadyOn"

    const-string v6, "no"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 63
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "on":Z
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 48
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v1    # "on":Z
    .restart local v2    # "success":Z
    :cond_0
    const-string v4, "DeleteDuplicatedSongs"

    const-string v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    if-eqz v2, :cond_2

    .line 53
    const-string v4, "DeleteDuplicatedSongs"

    const-string v5, "AlreadyOff"

    const-string v6, "no"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v4, "DeleteDuplicatedSongs"

    const-string v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "on":Z
    .end local v2    # "success":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
