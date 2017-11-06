.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
.super Ljava/lang/Object;
.source "GLGalleryCursorAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;


# instance fields
.field protected final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 40
    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->checkUpdateCursor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->bindView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected bindView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 47
    return-void
.end method

.method protected checkUpdateCursor(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v1, 0x1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "markers"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;
    .param p4, "count"    # I
    .param p5, "viewWidth"    # F
    .param p6, "viewHeight"    # F

    .prologue
    .line 73
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->checkUpdateCursor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->updateMarkerViews(Landroid/content/Context;Landroid/database/Cursor;[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    .line 79
    :cond_0
    return-void
.end method

.method protected abstract updateMarkerViews(Landroid/content/Context;Landroid/database/Cursor;[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V
.end method
