.class public Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;,
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

.field private mHasFocusableInRecents:Z

.field private mIsPipFocusedInRecent:Z

.field private mIsPipRecentsOverlayShown:Z

.field private mIsRecentsShown:Z

.field private mOverlayView:Landroid/view/View;

.field private mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

.field private mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRecentsView:Landroid/view/View;

.field private final mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTalkBackEnabled:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 65
    new-instance v0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    .line 64
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    .line 82
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->initViews(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x7d8

    const/16 v8, 0x31

    const/4 v5, -0x3

    const/4 v7, 0x0

    .line 89
    const-string/jumbo v0, "layout_inflater"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 90
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040183

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v1, 0x7f130437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v1, 0x7f13043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v7, v7}, Landroid/view/View;->measure(II)V

    .line 103
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 106
    const/16 v4, 0x18

    .line 103
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v4, v7

    .line 109
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    return-void
.end method


# virtual methods
.method addPipRecentsOverlayView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mTalkBackEnabled:Z

    .line 126
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mTalkBackEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void

    .line 126
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mHasFocusableInRecents:Z

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusLossAnimation()V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;->onRecentsFocused()V

    .line 172
    :cond_0
    return-void

    .line 175
    :cond_1
    return-void
.end method

.method isRecentsShown()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    return v0
.end method

.method onConfigurationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v0, "PipRecentsOverlayManager"

    const-string/jumbo v1, "Configuration is changed while Recents is shown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->initViews(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method public onRecentsPaused()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public onRecentsResumed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 195
    return-void
.end method

.method public removePipRecentsOverlayView()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->reset()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    .line 136
    return-void
.end method

.method public requestFocus(Z)V
    .locals 3
    .param p1, "hasFocusableInRecents"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mHasFocusableInRecents:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusGainAnimation()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mTalkBackEnabled:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->requestFocus()Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    .line 165
    const/16 v1, 0x8

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->sendAccessibilityEvent(I)V

    .line 152
    :cond_0
    return-void

    .line 156
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->setListener(Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;)V

    .line 186
    return-void
.end method
