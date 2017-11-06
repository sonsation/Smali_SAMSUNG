.class public Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;
.super Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;
.source "DialListPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DialListPopupMenu"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

.field private mFirstItemIndex:I

.field private mGroupMenu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastItemIndex:I

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Ljava/util/HashMap;Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "menuResourceId"    # I
    .param p3, "anchorView"    # Landroid/view/View;
    .param p5, "callback"    # Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "groupMenuMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->setAppStyleToInflate(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mGroupMenu:Ljava/util/HashMap;

    .line 47
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mGroupMenu:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mPrimaryColor:I

    return v0
.end method


# virtual methods
.method protected getListAdpater()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCtx:Landroid/content/Context;

    const v3, 0x7f04010c

    const v4, 0x7f120324

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;Landroid/content/Context;II[Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 155
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mPrimaryColor:I

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 159
    :cond_0
    return-void
.end method

.method protected removeInvisibleItems()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 52
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v4

    .line 53
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 54
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 55
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    invoke-interface {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isVisibleMenuItem(Landroid/view/MenuItem;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    new-array v5, v4, [Landroid/view/MenuItem;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    .line 61
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 62
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 63
    .restart local v3    # "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    invoke-interface {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isVisibleMenuItem(Landroid/view/MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    aput-object v3, v5, v0

    move v0, v1

    .line 61
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    if-eqz v5, :cond_7

    .line 69
    iput v9, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mFirstItemIndex:I

    .line 71
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_7

    aget-object v3, v6, v5

    .line 72
    .restart local v3    # "item":Landroid/view/MenuItem;
    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mFirstItemIndex:I

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    invoke-interface {v8, v3}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isVisibleMenuItem(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 73
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mFirstItemIndex:I

    .line 76
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    invoke-interface {v8, v3}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isVisibleMenuItem(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 77
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mLastItemIndex:I

    .line 71
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 81
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_7
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->mPrimaryColor:I

    .line 85
    return-void
.end method
