.class final Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;
.super Ljava/lang/Object;
.source "IndexScrollViewCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SepIndexScrollViewImpl"
.end annotation


# instance fields
.field private mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

.field private mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "indexScrollThemeSet"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v6, Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {v6, p1}, Lcom/samsung/android/widget/SemIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    .line 58
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$500(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$000(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$100(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v5

    .line 61
    .local v5, "textColorDimmed":I
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$200(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v4

    .line 62
    .local v4, "smallTextColor":I
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$300(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v1

    .line 63
    .local v1, "bigTextColor":I
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$400(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v3

    .line 64
    .local v3, "effectColor":I
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v6, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarTextColor(I)V

    .line 66
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarPressedTextColor(I)V

    .line 67
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v6, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setEffectBackgroundColor(I)V

    .line 68
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v6, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setEffectTextColor(I)V

    .line 70
    .end local v0    # "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bigTextColor":I
    .end local v3    # "effectColor":I
    .end local v4    # "smallTextColor":I
    .end local v5    # "textColorDimmed":I
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 71
    .local v2, "direction":I
    iget-object v7, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-nez v2, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v6}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarGravity(I)V

    .line 74
    iget-object v6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    new-instance v7, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;-><init>(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;)V

    .line 75
    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V

    .line 93
    return-void

    .line 71
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    return-object v0
.end method


# virtual methods
.method public getIndexScrollView()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->invalidate()V

    .line 162
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    .line 108
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 109
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 102
    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexScrollMargin(II)V

    .line 157
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;)V
    .locals 7
    .param p1, "cursorIndexer"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    .prologue
    .line 133
    invoke-interface {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;->getIndexerInfo()Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    move-result-object v0

    .line 134
    .local v0, "info":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    new-instance v2, Lcom/samsung/android/widget/SemCursorIndexer;

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getIndexColumn()I

    move-result v4

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getIndexCharArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getAlangIndex()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/widget/SemCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V

    .line 137
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method public setOnIndexChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    .line 114
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->mSemIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->setVisibility(I)V

    .line 119
    return-void
.end method
