.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;
.super Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.source "SeslCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 635
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    .line 636
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 633
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 638
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 642
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 653
    return-void
.end method

.method static synthetic access$001(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    .prologue
    .line 630
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 10

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 672
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 673
    .local v3, "hOffset":I
    if-eqz v0, :cond_2

    .line 674
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 675
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 681
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getPaddingLeft()I

    move-result v4

    .line 682
    .local v4, "spinnerPaddingLeft":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getPaddingRight()I

    move-result v5

    .line 683
    .local v5, "spinnerPaddingRight":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getWidth()I

    move-result v6

    .line 684
    .local v6, "spinnerWidth":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 685
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    .line 686
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 685
    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 687
    .local v1, "contentWidth":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 688
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 689
    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    .line 690
    move v1, v2

    .line 692
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 699
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 700
    sub-int v7, v6, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 704
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 705
    return-void

    .line 675
    .end local v4    # "spinnerPaddingLeft":I
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v7

    goto :goto_0

    .line 678
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 694
    .restart local v4    # "spinnerPaddingLeft":I
    .restart local v5    # "spinnerPaddingRight":I
    .restart local v6    # "spinnerWidth":I
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 695
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 697
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 702
    :cond_5
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 761
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 659
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 668
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v3

    .line 710
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 712
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 713
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 714
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 715
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 716
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 718
    if-eqz v3, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 728
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 729
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V

    .line 744
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 745
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
