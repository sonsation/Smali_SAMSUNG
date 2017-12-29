.class Lcom/android/settings/datausage/DataUsageList$2;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 701
    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 708
    .local v0, "cycle":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNDataRank()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    if-eqz v3, :cond_0

    .line 709
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageList;->-wrap3(Lcom/android/settings/datausage/DataUsageList;I)V

    .line 710
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the mCycleSpinnerPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v5}, Lcom/android/settings/datausage/DataUsageList;->-get5(Lcom/android/settings/datausage/DataUsageList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageList;->-get5(Lcom/android/settings/datausage/DataUsageList;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 712
    return-void

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3, p3}, Lcom/android/settings/datausage/DataUsageList;->-set2(Lcom/android/settings/datausage/DataUsageList;I)I

    .line 717
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->-get1(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v6, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    .line 719
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->-wrap6(Lcom/android/settings/datausage/DataUsageList;)V

    .line 721
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->-set4(I)I

    .line 722
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-nez v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/datausage/DataUsageList;->-get9()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 700
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f04b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 726
    .local v2, "screenId":I
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f04b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 727
    .local v1, "eventId":I
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
