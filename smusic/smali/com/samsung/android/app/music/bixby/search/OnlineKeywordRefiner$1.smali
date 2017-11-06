.class Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;
.super Ljava/lang/Object;
.source "OnlineKeywordRefiner.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->refine(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$listener:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->this$0:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$listener:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled() - reqId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled() - reqType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rspType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rspData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v4, 0x4e88

    if-ne p2, v4, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    move-object v0, p4

    .line 65
    check-cast v0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;

    .line 67
    .local v0, "responseModel":Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->getKeywordList()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled() - result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$listener:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$keyword:Ljava/lang/String;

    .line 76
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-interface {v4, v1}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->onRefineFinished(Ljava/lang/String;)V

    .line 88
    .end local v0    # "responseModel":Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 79
    .restart local v0    # "responseModel":Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onApiHandled() - Will return origin keyword due to empty result list."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$listener:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$keyword:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->onRefineFinished(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v0    # "responseModel":Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onApiHandled() - Will return origin keyword due to server error."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$listener:Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;->val$keyword:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->onRefineFinished(Ljava/lang/String;)V

    goto :goto_1
.end method
