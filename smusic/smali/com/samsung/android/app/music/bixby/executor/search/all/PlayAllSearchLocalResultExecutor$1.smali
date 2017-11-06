.class Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;
.super Ljava/lang/Object;
.source "PlayAllSearchLocalResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

.field final synthetic val$listType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    iput p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->val$listType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFinished(II)V
    .locals 5
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSearchFinished() - beginPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/list/common/PlayableList;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayableList;->play(II)V

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    iget v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->val$listType:I

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "nlgState":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "Content"

    const-string v3, "IsLocalContent"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;->access$300(Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method
