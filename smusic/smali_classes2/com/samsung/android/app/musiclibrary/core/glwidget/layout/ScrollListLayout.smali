.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.source "ScrollListLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout",
        "<T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownAdapterIndex:I

.field private mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

.field private mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

.field private mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mUseVelocityTracker:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 2
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    .line 265
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    .line 268
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 269
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    .line 271
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 42
    return-void
.end method

.method private findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 4
    .param p1, "adapterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable",
            "<T",
            "ListModel;",
            ">;",
            "Ljava/lang/Iterable",
            "<T",
            "ListModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    .local p2, "i1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TListModel;>;"
    .local p3, "i2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TListModel;>;"
    const/4 v1, 0x0

    .line 168
    .local v1, "modelDistance":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 169
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    add-int/lit8 v1, v1, -0x1

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v2, v1

    .line 181
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    :goto_0
    return v2

    .line 174
    :cond_1
    const/4 v1, 0x0

    .line 175
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 176
    .restart local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    add-int/lit8 v1, v1, 0x1

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_2

    move v2, v1

    .line 178
    goto :goto_0

    .line 181
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    :cond_3
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method private getTrackerVelocity()F
    .locals 4

    .prologue
    .line 93
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, "velocityX":F
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 97
    const-string v1, "SMUSIC-BaseScrollListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackerVelocity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return v0
.end method

.method private limitVelocityTo(FFF)F
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "minVelocity"    # F
    .param p3, "maxVelocity"    # F

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 248
    .local v0, "absVelocity":F
    cmpl-float v1, v0, p3

    if-lez v1, :cond_1

    .line 249
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .line 262
    .end local p3    # "maxVelocity":F
    :goto_0
    return p3

    .line 252
    .restart local p3    # "maxVelocity":F
    :cond_0
    neg-float p3, p3

    goto :goto_0

    .line 255
    :cond_1
    cmpg-float v1, v0, p2

    if-gez v1, :cond_3

    .line 256
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move p3, p2

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    neg-float p3, p2

    goto :goto_0

    :cond_3
    move p3, p1

    .line 262
    goto :goto_0
.end method


# virtual methods
.method protected getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    const/4 v8, 0x0

    .line 104
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mSingleScroll:Z

    if-eqz v3, :cond_8

    .line 105
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    .line 110
    .local v2, "gotoIndex":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v4

    div-float v1, v3, v4

    .line 113
    .local v1, "fraction":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 114
    cmpg-float v3, p1, v8

    if-gez v3, :cond_4

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 119
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWrapAdapter:Z

    if-eqz v3, :cond_5

    .line 120
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v4

    rem-int v2, v3, v4

    .line 128
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 129
    .local v0, "distance":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v4

    add-float v0, v3, v4

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 132
    neg-float v0, v0

    .line 135
    :cond_2
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v3, :cond_3

    .line 136
    const-string v3, "SMUSIC-BaseScrollListLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlingAnimation goto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gotoDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getSelectedDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " velocityX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fraction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7

    .line 144
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v4, 0x44bb8000    # 1500.0f

    const v5, 0x459c4000    # 5000.0f

    .line 145
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result v4

    neg-float v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    .line 146
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 147
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 152
    .end local v0    # "distance":F
    .end local v1    # "fraction":F
    .end local v2    # "gotoIndex":I
    :goto_2
    return-object v3

    .line 116
    .restart local v1    # "fraction":F
    .restart local v2    # "gotoIndex":I
    :cond_4
    cmpl-float v3, p1, v8

    if-lez v3, :cond_0

    .line 117
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 121
    :cond_5
    if-gez v2, :cond_6

    .line 122
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 123
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto/16 :goto_1

    .line 149
    .restart local v0    # "distance":F
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 151
    .end local v0    # "distance":F
    .end local v1    # "fraction":F
    .end local v2    # "gotoIndex":I
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->setParamsVelocity(FF)V

    .line 152
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    goto :goto_2
.end method

.method protected getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 158
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->setParams(FF)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    return-object v0
.end method

.method protected getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 5
    .param p1, "adapterIndex"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v2

    neg-float v0, v2

    .line 187
    .local v0, "delta":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWidth:I

    mul-int/2addr v2, v3

    int-to-float v0, v2

    .line 189
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_0

    .line 190
    const-string v2, "SMUSIC-BaseScrollListLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update delta getSelection():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 196
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAnimationIsNext:Z

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 198
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    .line 197
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v1

    .line 203
    .local v1, "modelDelta":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 205
    .end local v1    # "modelDelta":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsDistance(FF)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object v2

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 201
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    .line 200
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v2

    neg-int v1, v2

    .restart local v1    # "modelDelta":I
    goto :goto_0
.end method

.method protected getToChildAnimation1(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 4
    .param p1, "adapterIndex"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    const/high16 v3, 0x40000000    # 2.0f

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float v0, v1, v3

    .line 212
    .local v0, "delta":F
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWrapAdapter:Z

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    if-nez v1, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    mul-float v0, v1, v3

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 221
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAnimationIsNext:Z

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    neg-float v1, v1

    mul-float v0, v1, v3

    .line 229
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v1

    neg-float v1, v1

    add-float/2addr v0, v1

    .line 230
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWidth:I

    mul-int/2addr v1, v2

    int-to-float v0, v1

    .line 232
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "SMUSIC-BaseScrollListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update delta getSelection():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adapterIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsDistance(FF)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object v1

    .line 216
    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    neg-float v1, v1

    mul-float v0, v1, v3

    goto/16 :goto_0

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    mul-float v0, v1, v3

    goto :goto_1
.end method

.method protected getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 4
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 80
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mSingleScroll:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getTrackerVelocity()F

    move-result v1

    const v2, 0x44bb8000    # 1500.0f

    const v3, 0x459c4000    # 5000.0f

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getTrackerVelocity()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x44fa0000    # 2000.0f

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->hasAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const/4 v0, 0x1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->setDownAdapterIndex(I)V

    .line 57
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 64
    :pswitch_2
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_3

    .line 65
    const-string v1, "SMUSIC-BaseScrollListLayout"

    const-string v2, "onTouchEvent up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 243
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->setFriction(F)V

    .line 244
    return-void
.end method
