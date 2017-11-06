.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2$1;
.super Ljava/lang/Object;
.source "RecommendRadioActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    const/4 v1, 0x1

    .line 174
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 180
    return-void
.end method
