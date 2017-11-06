.class public final Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;
.super Ljava/lang/Object;
.source "ConvertTouchEventListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mPressed:Z

.field private mPressedAt:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressedAt:J

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 20
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 24
    :cond_0
    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_6

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 27
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    if-nez v0, :cond_3

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressedAt:J

    .line 34
    :cond_3
    :goto_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .local v9, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v9}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 36
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressedAt:J

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 38
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 37
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 39
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 48
    .end local v8    # "motionEvent":Landroid/view/MotionEvent;
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    return v7

    .line 32
    :cond_5
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    goto :goto_0

    .line 43
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 44
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;->mPressed:Z

    goto :goto_1
.end method
