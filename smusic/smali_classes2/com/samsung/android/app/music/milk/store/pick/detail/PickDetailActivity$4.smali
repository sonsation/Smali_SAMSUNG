.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;
.super Ljava/lang/Object;
.source "PickDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/common/model/PickInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/PickInfo;->setFavoriteYn(Z)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;Z)V

    .line 282
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 287
    return-void
.end method
