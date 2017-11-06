.class final Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;
.super Ljava/lang/Object;
.source "TwLangIndexScrollViewCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TwMusicIndexScrollViewImpl"
.end annotation


# instance fields
.field private mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

.field private mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customThemeSetCompat"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 148
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->convertCustomThemeSet(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 149
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 151
    .local v0, "direction":I
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 164
    return-void

    :cond_0
    move v1, v2

    .line 151
    goto :goto_0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    return-object v0
.end method

.method private static final convertCustomThemeSet(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    .locals 7
    .param p0, "customThemeSetCompat"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    if-eqz p0, :cond_0

    .line 241
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    .local v1, "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)I

    move-result v2

    .line 243
    .local v2, "textColorDimmed":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)I

    move-result v3

    .line 244
    .local v3, "smallTextColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)I

    move-result v4

    .line 245
    .local v4, "bigTextColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)I

    move-result v5

    .line 246
    .local v5, "effectColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;->access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Z

    move-result v6

    .line 247
    .local v6, "winsetUiEnabled":Z
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .end local v0    # "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;-><init>(Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 252
    .end local v1    # "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "textColorDimmed":I
    .end local v3    # "smallTextColor":I
    .end local v4    # "bigTextColor":I
    .end local v5    # "effectColor":I
    .end local v6    # "winsetUiEnabled":Z
    .restart local v0    # "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIndexScrollView()Landroid/view/View;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 234
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 180
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 173
    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setIndexScrollMargin(II)V

    .line 229
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;)V
    .locals 7
    .param p1, "cursorIndexer"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;->getIndexerInfo()Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    move-result-object v0

    .line 205
    .local v0, "info":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getIndexColumn()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getIndexCharArray()[Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->getAlangIndex()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setIndexer(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;)V

    .line 209
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-void
.end method

.method public setOnIndexChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mOnIndexChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    .line 185
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->mTwLangIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setVisibility(I)V

    .line 190
    return-void
.end method
