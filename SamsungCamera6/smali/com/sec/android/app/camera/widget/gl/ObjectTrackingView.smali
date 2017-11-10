.class public Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;
.super Lcom/samsung/android/glview/GLView;
.source "ObjectTrackingView.java"


# instance fields
.field private mRect:Lcom/samsung/android/glview/GLNinePatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    return-void
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_0
    return-void
.end method

.method public setRect(FFFF)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    cmpl-float v0, p4, v1

    if-lez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float p3, v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float p4, v0

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setSize(FF)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->translateAbsolute(FF)V

    :cond_2
    return-void
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method
