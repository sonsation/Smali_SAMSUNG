.class Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;
.super Ljava/lang/Object;
.source "PlayCardViewExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStarted(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayStarted() - success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_1

    .line 67
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->val$state:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->val$state:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "ListItem"

    const-string v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 84
    :goto_1
    return-void

    .line 72
    :cond_0
    const-string/jumbo v1, "playOrder"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "execute() - Fail to play card view."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->val$state:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "ListItem"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1
.end method
