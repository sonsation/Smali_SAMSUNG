.class public final Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;
.super Ljava/lang/Object;
.source "LaunchAppResponseExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    return-object v0
.end method

.method private onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_0

    const-string v3, "Music"

    :goto_0
    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 108
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_1
    return-void

    .line 77
    :cond_0
    const-string v3, "GlobalMusic"

    goto :goto_0

    .line 81
    :cond_1
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_2

    .line 82
    invoke-static {}, Lcom/samsung/android/app/music/bixby/HistoricalRuleId;->getInstance()Lcom/samsung/android/app/music/bixby/HistoricalRuleId;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/bixby/HistoricalRuleId;->shouldCheckMyMusicMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCommandCompleted() - Should check the my music mode before execute root utterance."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "requestNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SamsungMusic"

    const-string v4, "MymusicModeOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "cancelNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SamsungMusic"

    const-string v4, "UserSaidCancelOrNo"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;)V

    invoke-interface {v3, v2, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V

    goto :goto_1

    .line 105
    .end local v0    # "cancelNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "requestNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

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
    .line 36
    const-string v0, "LAUNCH_APP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 44
    :goto_0
    const/4 v0, 0x1

    .line 46
    :goto_1
    return v0

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVerifyPreconditionFinished()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVerifyPreconditionFinished() - mCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    goto :goto_0
.end method

.method public sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V
    .locals 4
    .param p1, "nlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v0

    .line 52
    .local v0, "nextCommand":Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendPreconditionNlg()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->clearNextCommand()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    goto :goto_0
.end method
