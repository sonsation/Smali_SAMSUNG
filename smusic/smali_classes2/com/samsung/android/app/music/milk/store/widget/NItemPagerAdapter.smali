.class public abstract Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NItemPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$IPageProvider;,
        Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_ITEM_COUNT_IN_PAGE:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mItemCountInPage:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCountInPage"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 89
    return-void
.end method

.method private getPagePosition(I)I
    .locals 2
    .param p1, "realItemPosition"    # I

    .prologue
    .line 112
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    div-int v0, p1, v1

    .line 113
    .local v0, "pageIndex":I
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    rem-int v1, p1, v1

    if-eqz v1, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    return v0
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 152
    instance-of v1, p3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 153
    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    .local v0, "itemContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 157
    .end local v0    # "itemContainer":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealItemCount()I

    move-result v1

    .line 98
    .local v1, "realCount":I
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    div-int v0, v1, v2

    .line 99
    .local v0, "pageCount":I
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract getRealItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public abstract getRealItemCount()I
.end method

.method public getRealPage(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "pageContainer"    # Landroid/view/ViewGroup;
    .param p2, "pageIndex"    # I
    .param p3, "pageType"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$IPageProvider;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$IPageProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$IPageProvider;->getRealPage(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealPageType(I)I
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "pageIndex"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealItemCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 123
    const/4 v1, 0x0

    .line 147
    :cond_0
    return-object v1

    .line 126
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealPageType(I)I

    move-result v4

    .line 127
    .local v4, "pageType":I
    invoke-virtual {p0, p1, p2, v4}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealPage(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup;

    move-result-object v1

    .line 128
    .local v1, "itemContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 129
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-interface {v7, p1, v1, v4}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;->layoutPage(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 134
    :goto_0
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    mul-int v3, p2, v7

    .line 135
    .local v3, "itemStartIndex":I
    add-int/lit8 v7, p2, 0x1

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    mul-int v2, v7, v8

    .line 136
    .local v2, "itemEndIndex":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealItemCount()I

    move-result v5

    .line 137
    .local v5, "realItemCount":I
    if-lt v2, v5, :cond_2

    .line 138
    move v2, v5

    .line 142
    :cond_2
    move v0, v3

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 143
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->getRealItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v6

    .line 144
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    sub-int v8, v0, v3

    invoke-interface {v7, v1, v6, v8}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;->layoutItem(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    .end local v2    # "itemEndIndex":I
    .end local v3    # "itemStartIndex":I
    .end local v5    # "realItemCount":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 2
    .param p1, "layoutManager"    # Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong constructor usage !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->getItemCountInPage()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->mItemCountInPage:I

    goto :goto_0
.end method
