.class public Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;
.super Ljava/lang/Object;
.source "LaunchEventExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mActivity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method private performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performCommand() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/milk/event/EventManageable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/event/EventManageable;->launchEventWeb()V

    .line 77
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

    .line 35
    const-string v3, "LAUNCH_EVENT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    sget-object v3, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->TAG:Ljava/lang/String;

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

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/android/app/music/milk/event/EventManageable;

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    sget-object v3, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCommandCompleted() - Should check the my music mode before execute follow-up utterance."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "requestNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SamsungMusic"

    const-string v4, "MymusicModeOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "cancelNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SamsungMusic"

    const-string v4, "UserSaidCancelOrNo"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    invoke-interface {v3, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V

    .line 68
    .end local v0    # "cancelNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "requestNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v2

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;->performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
