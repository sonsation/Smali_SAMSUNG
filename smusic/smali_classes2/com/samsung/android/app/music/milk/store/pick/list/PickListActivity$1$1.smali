.class Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->onLoadMore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 68
    const-string v1, "PickListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled() rspType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moreYn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p3, :cond_1

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;IILjava/lang/Object;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p4

    .line 74
    check-cast v0, Lcom/samsung/android/app/music/common/model/PickList;

    .line 75
    .local v0, "response":Lcom/samsung/android/app/music/common/model/PickList;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getMoreYn()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$002(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;Z)Z

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getListPicks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->appendList(Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loadComplete()V

    goto :goto_0
.end method
