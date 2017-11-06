.class Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadMore()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Z

    move-result v0

    return v0
.end method

.method public onLoadMore(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "total"    # I

    .prologue
    .line 60
    const-string v0, "PickListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadMore() pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    .line 81
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->access$300(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)I

    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPickList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;I)I

    .line 82
    return-void
.end method
