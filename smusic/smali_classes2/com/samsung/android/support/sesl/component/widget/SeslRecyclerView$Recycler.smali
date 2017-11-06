.class public final Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v1, 0x2

    .line 6486
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 6488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 6492
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 6493
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 6495
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6496
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 6822
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6823
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6825
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 6828
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    if-nez v0, :cond_1

    .line 6829
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 6830
    const-string v0, "SeslRecyclerView"

    const-string v1, "attachAccessibilityDelegate: mAccessibilityDelegate is null, so re create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6833
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 6834
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 6833
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6837
    :cond_2
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 6846
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6847
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6848
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6849
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6846
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6852
    :cond_1
    if-nez p2, :cond_2

    .line 6864
    :goto_1
    return-void

    .line 6856
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6857
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6858
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6860
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 6861
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6862
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 6840
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6841
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6843
    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 7011
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7012
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->dispatchViewRecycled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7013
    iput-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 7014
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->putRecycledView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7015
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 6596
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 6597
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 6598
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6602
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v5, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 6603
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 6604
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistency detected. Invalid item position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ").item count :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 6606
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6608
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iput-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 6609
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v5, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->bindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 6610
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 6611
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6612
    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 6615
    :cond_3
    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6617
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_4

    .line 6618
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 6619
    .local v3, "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6627
    :goto_0
    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6628
    iput-object v0, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 6629
    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_1
    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6630
    return-void

    .line 6620
    .end local v3    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6621
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 6622
    .restart local v3    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v3    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_5
    move-object v3, v1

    .line 6624
    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .restart local v3    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    goto :goto_0

    .line 6629
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 6509
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6510
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6511
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 7399
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7400
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 7401
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7402
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 7400
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7404
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7405
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 7406
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 7405
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7408
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 7409
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7410
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 7411
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 7410
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7414
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 7085
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7086
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7087
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7089
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 6651
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6652
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 6653
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6655
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6658
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result p1

    goto :goto_0
.end method

.method dispatchViewRecycled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 7243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 7244
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;->onViewRecycled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 7247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onViewRecycled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7249
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    if-eqz v0, :cond_2

    .line 7250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7253
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 7094
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .end local v0    # "changedScrapSize":I
    :cond_0
    move-object v1, v6

    .line 7119
    :goto_0
    return-object v1

    .line 7098
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 7099
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7100
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 7101
    invoke-virtual {v1, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 7098
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7106
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7107
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 7108
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 7109
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 7110
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 7111
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7112
    .restart local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    .line 7113
    invoke-virtual {v1, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 7110
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    move-object v1, v6

    .line 7119
    goto :goto_0
.end method

.method getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 7347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 7348
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    .line 7350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 7077
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7081
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    .line 7192
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7193
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 7194
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7195
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7196
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 7197
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7198
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7207
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7208
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 7239
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v2

    .line 7213
    .restart local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    if-nez p4, :cond_2

    .line 7217
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7218
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7219
    iget-object v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 7193
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 7225
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7226
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 7227
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7228
    .restart local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    .line 7229
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_4

    .line 7230
    if-nez p4, :cond_0

    .line 7231
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 7234
    :cond_4
    if-nez p4, :cond_5

    .line 7235
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 7226
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 7239
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "dryRun"    # Z

    .prologue
    const/4 v10, -0x1

    .line 7132
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7135
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 7136
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7137
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_4

    .line 7138
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_4

    .line 7139
    :cond_0
    if-eq p2, v10, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-eq v7, p2, :cond_2

    .line 7140
    const-string v7, "SeslRecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrap view for position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isn\'t dirty but has wrong view type! (found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 7141
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7140
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7150
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    if-nez p3, :cond_6

    .line 7151
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v6

    .line 7152
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 7155
    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v5

    .line 7156
    .local v5, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->unhide(Landroid/view/View;)V

    .line 7157
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 7158
    .local v3, "layoutIndex":I
    if-ne v3, v10, :cond_5

    .line 7159
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 7145
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    .restart local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7187
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    :goto_1
    return-object v1

    .line 7135
    .restart local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 7162
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v3    # "layoutIndex":I
    .restart local v5    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v6    # "view":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->detachViewFromParent(I)V

    .line 7163
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 7164
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    move-object v1, v5

    .line 7166
    goto :goto_1

    .line 7171
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7172
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    .line 7173
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7176
    .restart local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_7

    .line 7177
    if-nez p3, :cond_3

    .line 7178
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 7172
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7187
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 6680
    if-ltz p1, :cond_0

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 6681
    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "). Item count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 6682
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6684
    :cond_1
    const/4 v2, 0x0

    .line 6685
    .local v2, "fromScrap":Z
    const/4 v3, 0x0

    .line 6687
    .local v3, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6688
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6689
    if-eqz v3, :cond_7

    const/4 v2, 0x1

    .line 6692
    :cond_2
    :goto_0
    if-nez v3, :cond_5

    .line 6693
    const/4 v10, -0x1

    invoke-virtual {p0, p1, v10, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6694
    if-eqz v3, :cond_5

    .line 6695
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 6697
    if-nez p2, :cond_4

    .line 6700
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 6701
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6702
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v11, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6703
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    .line 6707
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 6709
    :cond_4
    const/4 v3, 0x0

    .line 6715
    :cond_5
    :goto_2
    if-nez v3, :cond_f

    .line 6716
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 6717
    .local v6, "offsetPosition":I
    if-ltz v6, :cond_6

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 6718
    :cond_6
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inconsistency detected. Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(offset:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ").state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 6720
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6689
    .end local v6    # "offsetPosition":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 6704
    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6705
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 6711
    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    .line 6723
    .restart local v6    # "offsetPosition":I
    :cond_a
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    .line 6725
    .local v8, "type":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 6726
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v8, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getScrapViewForId(JIZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6727
    if-eqz v3, :cond_b

    .line 6729
    iput v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 6730
    const/4 v2, 0x1

    .line 6733
    :cond_b
    if-nez v3, :cond_d

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheExtension:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_d

    .line 6736
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheExtension:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

    .line 6737
    invoke-virtual {v10, p0, p1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v9

    .line 6738
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_d

    .line 6739
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6740
    if-nez v3, :cond_c

    .line 6741
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6743
    :cond_c
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 6744
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6750
    .end local v9    # "view":Landroid/view/View;
    :cond_d
    if-nez v3, :cond_e

    .line 6757
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6758
    if-eqz v3, :cond_e

    .line 6759
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->resetInternal()V

    .line 6762
    :cond_e
    if-nez v3, :cond_f

    .line 6763
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6773
    .end local v6    # "offsetPosition":I
    .end local v8    # "type":I
    :cond_f
    if-eqz v2, :cond_10

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v10, 0x2000

    .line 6774
    invoke-virtual {v3, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 6775
    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 6776
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v10, :cond_10

    .line 6778
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v1

    .line 6779
    .local v1, "changeFlags":I
    or-int/lit16 v1, v1, 0x1000

    .line 6780
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 6781
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    .line 6780
    invoke-virtual {v10, v11, v3, v1, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 6782
    .local v4, "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 6786
    .end local v1    # "changeFlags":I
    .end local v4    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_10
    const/4 v0, 0x0

    .line 6787
    .local v0, "bound":Z
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 6789
    iput p1, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 6805
    :cond_11
    :goto_3
    iget-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 6807
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_14

    .line 6808
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 6809
    .local v7, "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6816
    :goto_4
    iput-object v3, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 6817
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6818
    iget-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v10

    .line 6790
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_12
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 6795
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 6796
    .restart local v6    # "offsetPosition":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iput-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 6797
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10, v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->bindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 6798
    iget-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 6799
    const/4 v0, 0x1

    .line 6800
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 6801
    iput p1, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 6810
    .end local v6    # "offsetPosition":I
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 6811
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 6812
    .restart local v7    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v7    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_15
    move-object v7, v5

    .line 6814
    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .restart local v7    # "rvLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    goto :goto_4

    .line 6817
    :cond_16
    const/4 v10, 0x0

    goto :goto_5
.end method

.method isPrefetchPositionAttached(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 7428
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 7429
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7430
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7431
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 7434
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    .line 7435
    const/4 v4, 0x1

    .line 7438
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :goto_1
    return v4

    .line 7429
    .restart local v0    # "attachedView":Landroid/view/View;
    .restart local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7438
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 7417
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7418
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7419
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7420
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 7421
    .local v3, "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 7422
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7418
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7425
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 7383
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7384
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7385
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7386
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7387
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 7388
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7389
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 7385
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7394
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 7396
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 7291
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7292
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7293
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7294
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 7299
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 7292
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7302
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 7263
    if-ge p1, p2, :cond_1

    .line 7264
    move v5, p1

    .line 7265
    .local v5, "start":I
    move v1, p2

    .line 7266
    .local v1, "end":I
    const/4 v4, -0x1

    .line 7272
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7273
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 7274
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7275
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 7273
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7268
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 7269
    .restart local v5    # "start":I
    move v1, p1

    .line 7270
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 7278
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 7279
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 7281
    :cond_3
    invoke-virtual {v2, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 7288
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 7311
    add-int v3, p1, p2

    .line 7312
    .local v3, "removedEnd":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7313
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 7314
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7315
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 7316
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 7322
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 7313
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7323
    :cond_1
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 7325
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7326
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 7330
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 7257
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clear()V

    .line 7258
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Z)V

    .line 7259
    return-void
.end method

.method prefetch([II)V
    .locals 5
    .param p1, "itemPrefetchArray"    # [I
    .param p2, "viewCount"    # I

    .prologue
    .line 7442
    if-nez p2, :cond_1

    .line 7461
    :cond_0
    :goto_0
    return-void

    .line 7444
    :cond_1
    add-int/lit8 v2, p2, -0x1

    aget v0, p1, v2

    .line 7445
    .local v0, "childPosition":I
    if-gez v0, :cond_2

    .line 7446
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recycler requested to prefetch invalid view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7450
    :cond_2
    const/4 v1, 0x0

    .line 7451
    .local v1, "prefetchView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->isPrefetchPositionAttached(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7453
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 7455
    :cond_3
    const/4 v2, 0x1

    if-le p2, v2, :cond_4

    .line 7456
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->prefetch([II)V

    .line 7458
    :cond_4
    if-eqz v1, :cond_0

    .line 7459
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7023
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7024
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .line 7025
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5502(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)Z

    .line 7026
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7027
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7028
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 6901
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6902
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6903
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6902
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6905
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6906
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->clearPrefetchPositions()V

    .line 6907
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 6924
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 6928
    .local v0, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 6929
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6930
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6879
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 6880
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6881
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6883
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6884
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    .line 6888
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 6889
    return-void

    .line 6885
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6886
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 13
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6938
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 6939
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6941
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isAttached:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6942
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_1

    :goto_0
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    move v8, v9

    goto :goto_0

    .line 6945
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6946
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6950
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6951
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6956
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v7

    .line 6957
    .local v7, "transientStatePreventsRecycling":Z
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v10, :cond_c

    if-eqz v7, :cond_c

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 6959
    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onFailedToRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v4, v8

    .line 6960
    .local v4, "forceRecycle":Z
    :goto_1
    const/4 v1, 0x0

    .line 6961
    .local v1, "cached":Z
    const/4 v5, 0x0

    .line 6966
    .local v5, "recycled":Z
    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 6967
    :cond_5
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-lez v8, :cond_9

    const/16 v8, 0xe

    .line 6968
    invoke-virtual {p1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 6971
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6972
    .local v3, "cachedViewSize":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v8, :cond_6

    if-lez v3, :cond_6

    .line 6973
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6974
    add-int/lit8 v3, v3, -0x1

    .line 6977
    :cond_6
    move v6, v3

    .line 6978
    .local v6, "targetCacheIndex":I
    if-lez v3, :cond_8

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    iget v9, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 6979
    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 6981
    add-int/lit8 v0, v3, -0x1

    .line 6982
    .local v0, "cacheIndex":I
    :goto_2
    if-ltz v0, :cond_7

    .line 6983
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 6984
    .local v2, "cachedPos":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    invoke-virtual {v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_d

    .line 6989
    .end local v2    # "cachedPos":I
    :cond_7
    add-int/lit8 v6, v0, 0x1

    .line 6991
    .end local v0    # "cacheIndex":I
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6992
    const/4 v1, 0x1

    .line 6994
    .end local v3    # "cachedViewSize":I
    .end local v6    # "targetCacheIndex":I
    :cond_9
    if-nez v1, :cond_a

    .line 6995
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 6996
    const/4 v5, 0x1

    .line 7004
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v8, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 7005
    if-nez v1, :cond_b

    if-nez v5, :cond_b

    if-eqz v7, :cond_b

    .line 7006
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 7008
    :cond_b
    return-void

    .end local v1    # "cached":Z
    .end local v4    # "forceRecycle":Z
    .end local v5    # "recycled":Z
    :cond_c
    move v4, v9

    .line 6959
    goto :goto_1

    .line 6987
    .restart local v0    # "cacheIndex":I
    .restart local v1    # "cached":Z
    .restart local v2    # "cachedPos":I
    .restart local v3    # "cachedViewSize":I
    .restart local v4    # "forceRecycle":Z
    .restart local v5    # "recycled":Z
    .restart local v6    # "targetCacheIndex":I
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 6988
    goto :goto_2
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6897
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 6898
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7040
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7041
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7042
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7043
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7044
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7048
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setScrapContainer(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Z)V

    .line 7049
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7057
    :goto_0
    return-void

    .line 7051
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 7052
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 7054
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setScrapContainer(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Z)V

    .line 7055
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .prologue
    .line 7373
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7374
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7375
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7376
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 7377
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7380
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;)V
    .locals 2
    .param p1, "pool"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    .prologue
    .line 7337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 7338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->detach()V

    .line 7340
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    .line 7341
    if-eqz p1, :cond_1

    .line 7342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->attach(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 7344
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

    .prologue
    .line 7333
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheExtension:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

    .line 7334
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .prologue
    .line 6519
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6520
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 6521
    return-void
.end method

.method unscrapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 7066
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7067
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7071
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .line 7072
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5502(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)Z

    .line 7073
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7074
    return-void

    .line 7069
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method updateViewCacheSize()V
    .locals 4

    .prologue
    .line 6524
    const/4 v0, 0x0

    .line 6525
    .local v0, "extraCache":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    .line 6526
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    .line 6528
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    .line 6530
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 6531
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_2

    .line 6532
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6531
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6526
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6534
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6556
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6561
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    .line 6577
    :cond_0
    :goto_0
    return v1

    .line 6563
    :cond_1
    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 6564
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6567
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6569
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    iget v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 6570
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 6571
    goto :goto_0

    .line 6574
    .end local v0    # "type":I
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6575
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    iget v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 7354
    add-int v4, p1, p2

    .line 7355
    .local v4, "positionEnd":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7356
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 7357
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 7358
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v1, :cond_1

    .line 7356
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7362
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 7363
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 7364
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 7365
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 7370
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method
