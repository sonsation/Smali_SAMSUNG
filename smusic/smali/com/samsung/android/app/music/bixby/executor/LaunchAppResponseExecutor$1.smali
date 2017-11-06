.class Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor$1;
.super Ljava/lang/Object;
.source "LaunchAppResponseExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveReceived()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPositiveReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 102
    return-void
.end method
