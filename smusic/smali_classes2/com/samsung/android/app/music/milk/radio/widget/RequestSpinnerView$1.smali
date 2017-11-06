.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;
.super Ljava/lang/Object;
.source "RequestSpinnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 102
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    .line 104
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0347

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dismissSpinner()V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->newInstance(Ljava/util/ArrayList;I)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$102(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->setListener(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$500(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "RequestSpinnerView"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
