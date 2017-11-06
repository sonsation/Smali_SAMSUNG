.class public Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;
.super Ljava/lang/Object;
.source "LaunchPurchasedTrackResponseExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCursorExecutor:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;
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
    .line 22
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cursorExecutor"    # Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->mCursorExecutor:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    .line 34
    return-void
.end method

.method private commandCompleted(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 55
    const-string v1, "PurchasedSongs"

    .line 56
    .local v1, "name":Ljava/lang/String;
    const-string v0, "Exist"

    .line 57
    .local v0, "attr":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v3, "yes"

    .line 59
    .local v3, "value":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "PurchasedSongs"

    invoke-direct {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-virtual {v2, v1, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 63
    return-void

    .line 57
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "no"

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
    .line 38
    const-string v0, "LAUNCH_PURCHASED_TRACK"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->TAG:Ljava/lang/String;

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

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->mCursorExecutor:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;)V

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFinished(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->TAG:Ljava/lang/String;

    const-string v1, "execute() - loadFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->commandCompleted(Landroid/database/Cursor;)V

    .line 51
    return-void
.end method
