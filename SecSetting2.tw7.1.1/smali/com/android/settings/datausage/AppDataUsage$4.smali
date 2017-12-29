.class Lcom/android/settings/datausage/AppDataUsage$4;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/AppDataUsage;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 856
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 857
    .local v0, "cycle":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNDataRank()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    if-eqz v3, :cond_0

    .line 858
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/settings/datausage/AppDataUsage;->-wrap4(Lcom/android/settings/datausage/AppDataUsage;I)V

    .line 859
    const-string/jumbo v3, "AppDataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the mCycleSpinnerPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings/datausage/AppDataUsage;->-get6(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->-get6(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    .line 861
    return-void

    .line 863
    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3, p3}, Lcom/android/settings/datausage/AppDataUsage;->-set1(Lcom/android/settings/datausage/AppDataUsage;I)I

    .line 864
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set4(Lcom/android/settings/datausage/AppDataUsage;J)J

    .line 865
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set2(Lcom/android/settings/datausage/AppDataUsage;J)J

    .line 866
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-wrap3(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 867
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-set6(I)I

    .line 868
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-nez v3, :cond_1

    .line 869
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get15()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 855
    :goto_0
    return-void

    .line 871
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f04b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 872
    .local v2, "screenId":I
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f04b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 873
    .local v1, "eventId":I
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

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
    .line 878
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
