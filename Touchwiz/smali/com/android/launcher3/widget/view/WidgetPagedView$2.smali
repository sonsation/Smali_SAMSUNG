.class Lcom/android/launcher3/widget/view/WidgetPagedView$2;
.super Ljava/lang/Object;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetPagedView;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusToPage(II)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "keyCode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 604
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 605
    .local v3, "page":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 606
    const/4 v0, -0x1

    .line 607
    .local v0, "itemPos":I
    const/16 v5, 0x7a

    if-ne p2, v5, :cond_2

    .line 608
    const/4 v0, 0x0

    .line 612
    :cond_1
    :goto_1
    if-eq v0, v7, :cond_0

    .line 613
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 614
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 616
    invoke-static {p2, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 609
    .end local v1    # "itemView":Landroid/view/View;
    :cond_2
    const/16 v5, 0x7b

    if-ne p2, v5, :cond_1

    .line 610
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 624
    .end local v0    # "itemPos":I
    .end local v3    # "page":Landroid/view/ViewGroup;
    :pswitch_1
    if-nez p1, :cond_4

    move v2, v5

    .line 625
    .local v2, "next":Z
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v8

    if-eqz v2, :cond_5

    :goto_3
    add-int v4, v8, v5

    .line 626
    .local v4, "toPage":I
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 627
    .restart local v3    # "page":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 628
    if-eqz v2, :cond_6

    move v0, v6

    .line 629
    .restart local v0    # "itemPos":I
    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 630
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setCurrentPage(I)V

    .line 632
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->loadAssociatedPages(I)V

    .line 633
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 634
    .restart local v1    # "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 636
    invoke-static {p2, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .end local v0    # "itemPos":I
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "next":Z
    .end local v3    # "page":Landroid/view/ViewGroup;
    .end local v4    # "toPage":I
    :cond_4
    move v2, v6

    .line 624
    goto :goto_2

    .restart local v2    # "next":Z
    :cond_5
    move v5, v7

    .line 625
    goto :goto_3

    .line 628
    .restart local v3    # "page":Landroid/view/ViewGroup;
    .restart local v4    # "toPage":I
    :cond_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_4

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public focusToUp()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onPagedViewFocusUp()V

    .line 598
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v0

    return v0
.end method
