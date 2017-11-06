.class Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SetStoreQueryExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$songName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$artistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$songName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute (onCompleted) >>> input keyword complete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 126
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 130
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute (onNext) >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    const-string v0, "Init Search View"

    .line 132
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$300(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$artistName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$songName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;->val$keyword:Ljava/lang/String;

    .line 134
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method
