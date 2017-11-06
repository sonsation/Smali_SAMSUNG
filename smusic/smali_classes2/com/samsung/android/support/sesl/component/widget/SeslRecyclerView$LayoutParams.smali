.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 11761
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11762
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 11757
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11758
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 11769
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11770
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 11765
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11766
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 11773
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 11750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11774
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .prologue
    .line 11845
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .prologue
    .line 11833
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11823
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .prologue
    .line 11815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .prologue
    .line 11804
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .prologue
    .line 11793
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .prologue
    .line 11783
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
