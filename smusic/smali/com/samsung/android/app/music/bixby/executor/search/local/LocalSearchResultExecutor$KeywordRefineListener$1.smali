.class Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;
.super Ljava/lang/Object;
.source "LocalSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->onRefineFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFinished(II)V
    .locals 3
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 152
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[After refine] onSearchFinished() - beginPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    iget-object v1, v0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->access$800(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
