.class public Lcom/android/systemui/tv/pip/PipControlsView;
.super Landroid/widget/LinearLayout;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipControlsView$1;,
        Lcom/android/systemui/tv/pip/PipControlsView$2;,
        Lcom/android/systemui/tv/pip/PipControlsView$3;,
        Lcom/android/systemui/tv/pip/PipControlsView$Listener;
    }
.end annotation


# instance fields
.field private mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedChild:Lcom/android/systemui/tv/pip/PipControlButtonView;

.field private mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

.field mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

.field private mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipControlsView;)Lcom/android/systemui/tv/pip/PipControlButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusedChild:Lcom/android/systemui/tv/pip/PipControlButtonView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/tv/pip/PipControlsView;Lcom/android/systemui/tv/pip/PipControlButtonView;)Lcom/android/systemui/tv/pip/PipControlButtonView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusedChild:Lcom/android/systemui/tv/pip/PipControlButtonView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updateMediaController()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updatePlayPauseView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 66
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$1;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 73
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$2;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .line 80
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$3;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "layout_inflater"

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04017f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setOrientation(I)V

    .line 110
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setGravity(I)V

    .line 103
    return-void
.end method

.method private updateMediaController()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 176
    .local v0, "newController":Landroid/media/session/MediaController;
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 182
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updatePlayPauseView()V

    .line 174
    return-void
.end method

.method private updatePlayPauseView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getPlaybackState()I

    move-result v0

    .line 191
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setVisibility(I)V

    .line 195
    if-nez v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0f06d0

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0201b1

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0f06cf

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method getFocusedButton()Lcom/android/systemui/tv/pip/PipControlButtonView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusedChild:Lcom/android/systemui/tv/pip/PipControlButtonView;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updateMediaController()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->addMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V

    .line 159
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->removeMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    const v0, 0x7f130434

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$4;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f130435

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$5;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f130436

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$6;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->reset()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->reset()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->reset()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->requestFocus()Z

    .line 208
    return-void
.end method

.method public setListener(Lcom/android/systemui/tv/pip/PipControlsView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    .line 218
    return-void
.end method
