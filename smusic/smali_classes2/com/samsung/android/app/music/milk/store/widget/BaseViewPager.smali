.class public Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BaseViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;
    }
.end annotation


# static fields
.field private static final DELAY_HANDLING:I = 0x190

.field private static final LOG_TAG:Ljava/lang/String; = "BaseViewPager"

.field private static final MSG_SCROLL_HANDLE:I = 0x1


# instance fields
.field private mHandler:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;-><init>(Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    .line 31
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, "ret":Z
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 50
    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 53
    :pswitch_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 54
    .local v0, "hScroll":F
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    float-to-int v3, v0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v1, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    const-string v3, "BaseViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGenericMotionEvent : event - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hScroll - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onLeftScroll()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onRightScroll()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
