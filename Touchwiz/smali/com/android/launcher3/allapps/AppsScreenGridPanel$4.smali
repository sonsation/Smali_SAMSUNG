.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 407
    invoke-static {p2}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 408
    .local v2, "consume":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v2

    .line 412
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$400(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$500(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 416
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_2

    .line 417
    const/16 v5, 0x15

    if-ne p2, v5, :cond_3

    .line 418
    const/16 p2, 0x16

    .line 424
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$400(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$400(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 425
    .local v4, "parent":Landroid/view/ViewGroup;
    :goto_2
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 426
    .local v3, "index":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 429
    .local v0, "childCount":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 445
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$400(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne v5, v4, :cond_0

    .line 446
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$500(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 447
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 449
    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 419
    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "index":I
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_3
    const/16 v5, 0x16

    if-ne p2, v5, :cond_2

    .line 420
    const/16 p2, 0x15

    goto :goto_1

    .line 424
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$500(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    goto :goto_2

    .line 431
    .restart local v0    # "childCount":I
    .restart local v3    # "index":I
    .restart local v4    # "parent":Landroid/view/ViewGroup;
    :pswitch_1
    add-int/lit8 v5, v3, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 432
    .restart local v1    # "childView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 434
    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 438
    .end local v1    # "childView":Landroid/view/View;
    :pswitch_2
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 439
    .restart local v1    # "childView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 441
    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 454
    .end local v1    # "childView":Landroid/view/View;
    :pswitch_3
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$500(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne v5, v4, :cond_0

    .line 455
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$400(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 456
    .restart local v1    # "childView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 458
    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
