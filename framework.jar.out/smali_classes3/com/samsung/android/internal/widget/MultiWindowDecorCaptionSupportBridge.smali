.class public Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorCaptionSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.widget.MultiWindowDecorCaptionSupport"

.field public static final GONE_CAPTION:I = 0x0

.field public static final SHOW_CAPTION:I = 0x1

.field public static final SHOW_CAPTION_OVERLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorCaptionSupportBridge"


# instance fields
.field private IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    iput-object v2, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MultiWindowDecorCaptionSupportBridge"

    const-string/jumbo v3, "Not created this class : com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearMaximizeRequested()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->clearMaximizeRequested()V

    .line 128
    :cond_0
    return-void
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->dispatchRequestedOrientation(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public getFullScreenFreeformWindowCaptionVisibility()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getFullScreenFreeformWindowCaptionVisibility()I

    move-result v0

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastMeasuredWithCaptionHeight()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    return-object v1
.end method

.method public hasClickTarget()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->hasClickTarget()Z

    move-result v0

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "decorCaptionView"    # Lcom/android/internal/widget/DecorCaptionView;
    .param p3, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;)V

    .line 97
    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isDesktopMode()Z

    move-result v0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isFullScreenFreeform()Z

    move-result v0

    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMovingTask(Z)V
    .locals 1
    .param p1, "movingTask"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->notifyMovingTask(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLayout(ZIIII)V

    .line 134
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLongPress(Landroid/view/MotionEvent;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeContentView()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->removeContentView()V

    .line 122
    :cond_0
    return-void
.end method

.method public setCaptionBackground()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setCaptionBackground()V

    .line 232
    :cond_0
    return-void
.end method

.method public setCaptionView(Landroid/view/View;)V
    .locals 1
    .param p1, "caption"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setCaptionView(Landroid/view/View;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setContentView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setLastMeasuredWithCaptionHeight(Z)V
    .locals 1
    .param p1, "measured"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setLastMeasuredWithCaptionHeight(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public toggleMaximizeButton()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->toggleMaximizeButton()V

    .line 226
    :cond_0
    return-void
.end method

.method public updateButtonFocus(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonFocus(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public updateButtonVisibilityByFeature()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonVisibilityByFeature()V

    .line 78
    :cond_0
    return-void
.end method

.method public updateFullScreenFreeformWindowCaptionVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateFullScreenFreeformWindowCaptionVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method
