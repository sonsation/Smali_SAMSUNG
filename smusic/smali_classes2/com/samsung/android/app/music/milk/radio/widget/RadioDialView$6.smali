.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initSundialSegments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 866
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3202(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 868
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchUp()V

    .line 871
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const v1, 0x7f120029

    .line 876
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 878
    .local v0, "stationCursorIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 883
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)V

    .line 889
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 890
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 891
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;

    invoke-direct {v3}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;-><init>()V

    const-string v4, "EmptyMyStationsDialog"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
