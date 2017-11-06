.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;
.super Ljava/lang/Object;
.source "SimpleScrollInterpolator.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SimpleScrollInterpolator"


# instance fields
.field private mDistanceX:F

.field private mDistanceY:F

.field private mDownAdapterIndex:I

.field private mLeftAdapterIndex:I

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRightAdapterIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout",
            "<T",
            "ListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    .local p1, "parent":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<TListModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    .line 36
    return-void
.end method

.method private limitTo(FF)F
    .locals 5
    .param p1, "distance"    # F
    .param p2, "maxDelta"    # F

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    move v0, p1

    .line 78
    .local v0, "resDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    .line 80
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 81
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v1

    .line 88
    .local v1, "size":I
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 89
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 92
    .end local v1    # "size":I
    :cond_0
    cmpl-float v2, v0, p1

    if-eqz v2, :cond_1

    .line 93
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "SMUSIC-SimpleScrollInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limited because of singleScroll from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLeftAdapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRightAdapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return v0

    .line 83
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v0, v2

    .line 84
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    goto :goto_0
.end method


# virtual methods
.method public finished()Z
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getDx()F
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    return v0
.end method

.method public getDy()F
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    return v0
.end method

.method public setDownAdapterIndex(I)V
    .locals 5
    .param p1, "adapterIndex"    # I

    .prologue
    .line 118
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "SMUSIC-SimpleScrollInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDownAdapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSingleScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    .line 123
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 124
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterWrap()Z

    move-result v1

    .line 126
    .local v1, "wrap":Z
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v0

    .line 127
    .local v0, "size":I
    if-eqz v1, :cond_3

    .line 128
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/2addr v2, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 129
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 141
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_2

    .line 142
    const-string v2, "SMUSIC-SimpleScrollInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLeftAdapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRightAdapterIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "size":I
    .end local v1    # "wrap":Z
    :cond_2
    return-void

    .line 132
    .restart local v0    # "size":I
    .restart local v1    # "wrap":Z
    :cond_3
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    if-gez v2, :cond_4

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 134
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 136
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 v3, v0, -0x1

    if-le v2, v3, :cond_1

    .line 137
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 138
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    goto :goto_0
.end method

.method public setParams(FF)V
    .locals 0
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 49
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    .line 50
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    .line 51
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    return-void
.end method

.method public update()Z
    .locals 3

    .prologue
    .line 63
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<TListModel;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSingleScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 70
    .local v0, "maxDelta":F
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->limitTo(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    .line 71
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->limitTo(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    .line 73
    .end local v0    # "maxDelta":F
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    .restart local v0    # "maxDelta":F
    goto :goto_0
.end method
