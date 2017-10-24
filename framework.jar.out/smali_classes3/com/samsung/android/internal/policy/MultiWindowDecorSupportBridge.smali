.class public Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.MultiWindowDecorSupport"

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorSupportBridge"


# instance fields
.field private IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.MultiWindowDecorSupport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    iput-object v2, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MultiWindowDecorSupportBridge"

    const-string/jumbo v3, "Not created this class : com.android.internal.policy.MultiWindowDecorSupport"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addDecorCaptionWindow()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->addDecorCaptionWindow()V

    .line 272
    :cond_0
    return-void
.end method

.method public checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    .line 168
    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    .line 192
    :cond_0
    return-void
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->dispatchRequestedOrientation(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public drawFreeformFrameIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->drawFreeformFrameIfNeeded(Landroid/view/DisplayListCanvas;)V

    .line 126
    :cond_0
    return-void
.end method

.method public drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V

    .line 180
    :cond_0
    return-void
.end method

.method public getMultiWindowModeChanged()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->getMultiWindowModeChanged()Z

    move-result v0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStackId()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->getStackId()I

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hasDecorCaptionView()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->hasDecorCaptionView()Z

    move-result v0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEdgeFlag()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->hasEdgeFlag()Z

    move-result v0

    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->init(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V

    .line 86
    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isDesktopMode()Z

    move-result v0

    return v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isFullScreenFreeform()Z

    move-result v0

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullWindow()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isFullWindow()Z

    move-result v0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImmersiveMode(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isImmersiveMode(I)Z

    move-result v0

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResizing()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isResizing()Z

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseFreeformBorder()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isUseFreeformBorder()Z

    move-result v0

    return v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMovingTask(Z)V
    .locals 1
    .param p1, "movingTask"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->notifyMovingTask(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;II)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "oldStackId"    # I
    .param p3, "newStackId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onConfigurationChanged(Landroid/content/res/Configuration;II)V

    .line 156
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onLayout(ZIIII)V

    .line 150
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onWindowFocusChanged(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public removeDecorCaptionWindow()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->removeDecorCaptionWindow()V

    .line 278
    :cond_0
    return-void
.end method

.method public removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    .line 174
    :cond_0
    return-void
.end method

.method public requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setBlockDrawingFreeformFrame(Z)V
    .locals 1
    .param p1, "blockDrawing"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setBlockDrawingFreeformFrame(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "modeChanged"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setMultiWindowModeChanged(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setResizeMode(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public updateFullScreenFreeform(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->updateFullScreenFreeform(I)V

    .line 252
    :cond_0
    return-void
.end method
