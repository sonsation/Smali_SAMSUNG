.class public abstract Lcom/android/launcher3/common/base/view/BaseContainerView;
.super Landroid/widget/LinearLayout;
.source "BaseContainerView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Insettable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseContainerView"


# instance fields
.field private mContainerBoundsInset:I

.field protected mContentBounds:Landroid/graphics/Rect;

.field private mContentPadding:Landroid/graphics/Rect;

.field private mFixedSearchBarBounds:Landroid/graphics/Rect;

.field private mHasSearchBar:Z

.field private mInsets:Landroid/graphics/Rect;

.field private mSearchBarBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContentBounds:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    .line 59
    return-void
.end method

.method private isValidSearchBarBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method protected setHasSearchBar()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mHasSearchBar:Z

    .line 69
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 65
    return-void
.end method

.method public final setSearchBarBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 79
    new-instance v0, Lcom/android/launcher3/common/base/view/BaseContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/base/view/BaseContainerView$1;-><init>(Lcom/android/launcher3/common/base/view/BaseContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method protected updateBackgroundAndPaddings()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v1, "searchBarBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/BaseContainerView;->isValidSearchBarBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v2

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mHasSearchBar:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    invoke-direct {v0, v4, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v5

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 102
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContentBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 121
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 127
    :cond_1
    return-void

    .line 95
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v2, v5

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mHasSearchBar:Z

    if-eqz v4, :cond_4

    .line 110
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .restart local v0    # "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 108
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v3, v4

    goto :goto_2
.end method
