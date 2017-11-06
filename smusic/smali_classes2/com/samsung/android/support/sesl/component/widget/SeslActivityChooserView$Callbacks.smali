.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "SeslActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 600
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->dismissPopup()Z

    .line 602
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 603
    .local v0, "defaultActivity":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 604
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 605
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 606
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    .end local v0    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "index":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_2

    .line 610
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 611
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->showPopupUnchecked(I)V

    goto :goto_0

    .line 613
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 635
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->subUiVisibilityChanged(Z)V

    .line 638
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 568
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    .line 569
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 570
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_0

    .line 593
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 572
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->showPopupUnchecked(I)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->dismissPopup()Z

    .line 576
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz v3, :cond_1

    .line 578
    if-lez p3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 586
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 587
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 620
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 623
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$Callbacks;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->showPopupUnchecked(I)V

    .line 628
    :cond_0
    return v2

    .line 626
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
