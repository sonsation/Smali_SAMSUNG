.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.super Ljava/lang/Object;
.source "BaseLayout.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GLBaseLayout"


# instance fields
.field protected mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field protected mAligned:Z

.field protected mAnimationIsNext:Z

.field private mFirstAlign:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHasDimensions:Z

.field protected mHeight:I

.field protected final mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private final mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field protected mSingleScroll:Z

.field private mTouched:Z

.field protected mWidth:I

.field protected mWrapAdapter:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 3
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    .line 187
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 212
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 77
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    return p1
.end method


# virtual methods
.method protected doRealign()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign(II)V

    .line 175
    return-void
.end method

.method protected doRealign(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->realign(II)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 185
    :cond_0
    return-void
.end method

.method protected abstract doReload()V
.end method

.method public getAdapterSize()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdapterWrap()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWrapAdapter:Z

    return v0
.end method

.method public getRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method public getSingleScroll()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    return v0
.end method

.method protected hasAdapter()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFirstAlign()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    return v0
.end method

.method protected abstract onDown(Landroid/view/MotionEvent;)V
.end method

.method protected abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method protected abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method protected abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method protected abstract onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 130
    .local v0, "res":Z
    goto :goto_0

    .line 117
    .end local v0    # "res":Z
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    goto :goto_1

    .line 121
    :pswitch_2
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract realign(II)V
.end method

.method public setAdapterWrap(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWrapAdapter:Z

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign()V

    .line 91
    return-void
.end method

.method public setAnimationIsNext(Z)V
    .locals 0
    .param p1, "isNext"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAnimationIsNext:Z

    .line 145
    return-void
.end method

.method public setSingleScroll(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    .line 136
    return-void
.end method
