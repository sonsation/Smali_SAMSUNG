.class Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;
.super Ljava/lang/Object;
.source "SetStoreQueryExecutor.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$parameterNames:Ljava/util/List;

.field final synthetic val$songName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$parameterNames:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$keyword:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$songName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$artistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 93
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "execute >>> Move Toggle Button "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "type":I
    if-ne v1, v4, :cond_1

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bixbyPlayType":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$parameterNames:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$keyword:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$parameterNames:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$songName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute >>> song is not empty ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$songName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "1"

    .line 111
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute >>> save bixby PlayType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_PLAY_TYPE"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "bixbyPlayType":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->changeContentsType(I)V

    .line 117
    const-string v2, "Init Search View"

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 119
    return-void

    .line 104
    .restart local v0    # "bixbyPlayType":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$parameterNames:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$artistName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$800(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute >>> artist is not empty ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$artistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "3"

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute >>> keyword is not empty ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;->val$keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
