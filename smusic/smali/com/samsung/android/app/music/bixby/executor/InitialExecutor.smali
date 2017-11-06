.class public final Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;
.super Ljava/lang/Object;
.source "InitialExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->mContext:Landroid/content/Context;

    .line 25
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

    .line 29
    const-string v4, "LAUNCH_APP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLockScreenOn(Landroid/content/Context;)Z

    move-result v2

    .line 31
    .local v2, "lockScreenOn":Z
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lockScreenOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v0

    .line 35
    .local v0, "bixbyCompat":Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    if-eqz v2, :cond_0

    .line 36
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 47
    .end local v0    # "bixbyCompat":Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .end local v2    # "lockScreenOn":Z
    :goto_0
    return v3

    .line 38
    .restart local v0    # "bixbyCompat":Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .restart local v2    # "lockScreenOn":Z
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    .end local v0    # "bixbyCompat":Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "lockScreenOn":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
