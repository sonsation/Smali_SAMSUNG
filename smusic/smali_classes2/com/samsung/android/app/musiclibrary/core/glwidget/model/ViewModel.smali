.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
.source "ViewModel.java"


# instance fields
.field private mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 20
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 21
    .local v2, "width":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 22
    .local v1, "height":I
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-direct {v3, p1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    .line 24
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    if-eqz v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 27
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setSize(FF)V

    .line 34
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getView()Landroid/view/View;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBitmapMutable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
