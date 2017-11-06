.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.source "SeslPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 844
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 845
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    instance-of v8, v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    if-eqz v8, :cond_0

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .line 846
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 847
    .local v0, "dividerAllowedBelow":Z
    :goto_0
    if-nez v0, :cond_1

    .line 858
    :goto_1
    return v7

    .end local v0    # "dividerAllowedBelow":Z
    :cond_0
    move v0, v7

    .line 846
    goto :goto_0

    .line 850
    .restart local v0    # "dividerAllowedBelow":Z
    :cond_1
    const/4 v3, 0x1

    .line 851
    .local v3, "nextAllowed":Z
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 852
    .local v2, "index":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_2

    .line 853
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 854
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {p2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 855
    .local v4, "nextHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    instance-of v8, v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    if-eqz v8, :cond_3

    check-cast v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .line 856
    .end local v4    # "nextHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .end local v5    # "nextView":Landroid/view/View;
    :cond_2
    :goto_2
    move v7, v3

    .line 858
    goto :goto_1

    .restart local v5    # "nextView":Landroid/view/View;
    :cond_3
    move v3, v7

    .line 856
    goto :goto_2
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 838
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 841
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 820
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 833
    :cond_0
    return-void

    .line 823
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    .line 824
    .local v0, "childCount":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    .line 825
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "childViewIndex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 826
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 827
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 828
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 829
    .local v2, "top":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 830
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    .end local v2    # "top":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 862
    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 867
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 868
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 869
    return-void

    .line 865
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .prologue
    .line 872
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 873
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 874
    return-void
.end method
