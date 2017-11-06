.class public Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;
.super Ljava/lang/Object;
.source "LaunchPurchasedTrackExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSubscriptionExecutor"


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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method private performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    const-string v1, "LaunchSubscriptionExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performCommand() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

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

    .line 36
    const-string v3, "LAUNCH_PURCHASED_TRACK"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string v3, "LaunchSubscriptionExecutor"

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

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "LaunchSubscriptionExecutor"

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
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    invoke-interface {v3, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V

    .line 67
    .end local v0    # "cancelNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "requestNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v2

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->performCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
