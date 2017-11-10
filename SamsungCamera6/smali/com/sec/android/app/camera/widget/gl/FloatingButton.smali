.class public Lcom/sec/android/app/camera/widget/gl/FloatingButton;
.super Lcom/samsung/android/glview/GLButton;
.source "FloatingButton.java"


# static fields
.field private static final MOVE_THRESHOLD_FOR_FLOATING_BUTTON:I = 0xf


# instance fields
.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownX:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownY:I

    return-void
.end method


# virtual methods
.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/16 v4, 0xf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLButton;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    :pswitch_1
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownX:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownY:I

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownX:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setDraggable(Z)V

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownX:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->mTouchDownY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
