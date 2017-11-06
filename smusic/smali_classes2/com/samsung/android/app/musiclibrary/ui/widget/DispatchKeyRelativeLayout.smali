.class public Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DispatchKeyRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;
    }
.end annotation


# instance fields
.field private keyPadDisplayListener:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

.field private mBackkeyMsgCode:I

.field private mHandler:Landroid/os/Handler;

.field private final mRect:Landroid/graphics/Rect;

.field private final mScrrenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    .line 21
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mBackkeyMsgCode:I

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 36
    .local v0, "point":Landroid/graphics/Point;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 37
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mScrrenHeight:I

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mBackkeyMsgCode:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mBackkeyMsgCode:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 89
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 90
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 92
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 93
    .local v3, "statusBarHeight":I
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mScrrenHeight:I

    sub-int/2addr v4, v3

    sub-int v1, v4, v2

    .line 94
    .local v1, "diff":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->keyPadDisplayListener:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

    if-eqz v4, :cond_0

    .line 95
    const/16 v4, 0x80

    if-le v1, v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->keyPadDisplayListener:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;->onSoftKeyboardShow(Z)V

    .line 97
    const-string v4, ""

    const-string v5, "IME is showing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 105
    return-void

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->keyPadDisplayListener:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;->onSoftKeyboardShow(Z)V

    .line 100
    const-string v4, ""

    const-string v5, "IME is gone"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msgCode"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mHandler:Landroid/os/Handler;

    .line 48
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->mBackkeyMsgCode:I

    .line 49
    return-void
.end method

.method public setListener(Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->keyPadDisplayListener:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$KeyPadDisplayListener;

    .line 85
    return-void
.end method
