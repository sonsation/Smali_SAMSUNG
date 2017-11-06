.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;
.source "BaseScrollListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout",
        "<T",
        "ListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static DEBUG_SCROLL:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "SMUSIC-BaseScrollListLayout"


# instance fields
.field private mAnimateAdapterIndex:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private volatile mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

.field private volatile mFlinging:Z

.field private mScheduled:Z

.field protected mStopped:Z

.field private mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 50
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    .line 304
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->doAnimateToChild(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchUp()V

    return-void
.end method

.method private doAnimateToChild(I)V
    .locals 5
    .param p1, "adapterIndex"    # I

    .prologue
    .line 191
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "SMUSIC-BaseScrollListLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateToChild adapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    if-ne v2, p1, :cond_1

    .line 227
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->loadedAdapterIndex(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v2

    sub-int v0, p1, v2

    .line 204
    .local v0, "deltaPos":I
    if-lez v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModelIndex()I

    move-result v3

    sub-int v1, v2, v3

    .line 211
    .local v1, "nextSelectionAdapterIndex":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getAdapterWrap()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v2, :cond_5

    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 213
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    rem-int v1, v2, v3

    .line 222
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 224
    .end local v0    # "deltaPos":I
    .end local v1    # "nextSelectionAdapterIndex":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 225
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 226
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    goto :goto_0

    .line 208
    .restart local v0    # "deltaPos":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 209
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModelIndex()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int v1, v2, v3

    .restart local v1    # "nextSelectionAdapterIndex":I
    goto :goto_1

    .line 215
    :cond_5
    if-gez v1, :cond_6

    .line 216
    const/4 v1, 0x0

    goto :goto_2

    .line 217
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 218
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_2
.end method

.method private isCurAnimationFinished()Z
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchUp()V
    .locals 4

    .prologue
    .line 234
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 235
    .local v0, "childDelta":F
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "SMUSIC-BaseScrollListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchUp childDelta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->isCurAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->isTouched()Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    neg-float v1, v0

    neg-float v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    goto :goto_0
.end method

.method private scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .prologue
    .line 157
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "SMUSIC-BaseScrollListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method protected animateToChild(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 177
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public animationFinished()Z
    .locals 4

    .prologue
    .line 108
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 109
    .local v0, "res":Z
    :goto_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "SMUSIC-BaseScrollListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    return v0

    .line 108
    .end local v0    # "res":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract handleScroll(FF)Z
.end method

.method isAnimateToChild()Z
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 301
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlinging()Z
    .locals 3

    .prologue
    .line 169
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "SMUSIC-BaseScrollListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFlinging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "SMUSIC-BaseScrollListLayout"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    .line 188
    :cond_1
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 259
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "SMUSIC-BaseScrollListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling velocityX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 263
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    const/4 v2, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationFinished()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->fireOnSelectedAlbumSizeChanged()V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mHeight:I

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAligned:Z

    .line 89
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->realign(II)V

    .line 90
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAligned:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    .line 104
    return-void
.end method

.method protected onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 270
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "SMUSIC-BaseScrollListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll distanceX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " distanceY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation()V

    .line 274
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    .line 275
    .local v0, "animation":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->start()V

    .line 276
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->update()Z

    .line 277
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result v1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->handleScroll(FF)Z

    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 56
    .local v0, "res":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return v0

    .line 59
    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "SMUSIC-BaseScrollListLayout"

    const-string v2, "onTouchEvent up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchUp()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 133
    return-void
.end method

.method public startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .prologue
    .line 136
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "SMUSIC-BaseScrollListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->stop()V

    .line 145
    :cond_1
    if-nez p1, :cond_2

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationStarted()V

    .line 154
    return-void

    .line 148
    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->start()V

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 117
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "SMUSIC-BaseScrollListLayout"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->stop()V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->unscheduleAnimation()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationFinished()V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->fireOnSelectedAlbumSizeChanged()V

    .line 129
    return-void
.end method

.method unscheduleAnimation()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<TListModel;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    .line 283
    return-void
.end method
