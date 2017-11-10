.class public Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "IndicatorGroup.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# instance fields
.field private mDirection:I

.field private mItemMargin:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mItemMargin:F

    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    return-void
.end method

.method public setVisibility(Lcom/samsung/android/glview/GLView;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    int-to-float v3, v1

    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    int-to-float v3, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mItemMargin:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    :pswitch_1
    int-to-float v3, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mItemMargin:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->getWidth()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1

    :pswitch_2
    int-to-float v3, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mItemMargin:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->getHeight()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1

    :pswitch_3
    int-to-float v3, v1

    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    int-to-float v3, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->mItemMargin:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
