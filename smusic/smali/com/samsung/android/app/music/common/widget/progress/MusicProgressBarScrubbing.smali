.class public Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;
.super Ljava/lang/Object;
.source "MusicProgressBarScrubbing.java"


# static fields
.field private static final HALF_SPEED_SCRUBBING:I = 0x2

.field private static final HI_SPEED_SCRUBBING:I = 0x1

.field private static final QUARTER_SPEED_SCRUBBING:I = 0x4

.field private static final SHOW_POPUP_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mComparedProgress:I

.field private final mContext:Landroid/content/Context;

.field private mLastScrollSpeed:I

.field private final mPopupHandler:Landroid/os/Handler;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mSavedProgress:I

.field private mSavedScrubbingSpeed:I

.field private mScrubbingSpeed:I

.field private mShowPopupRequested:Z

.field private final mSpeedInfo:Landroid/widget/TextView;

.field private mStartedProgress:I

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    .line 59
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mStartedProgress:I

    .line 61
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mComparedProgress:I

    .line 63
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedProgress:I

    .line 65
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedScrubbingSpeed:I

    .line 69
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mLastScrollSpeed:I

    .line 221
    new-instance v2, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing$1;-><init>(Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    .line 75
    sget-object v2, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicProgressBarScrubbing() - mActivity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "layout_inflater"

    .line 79
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 80
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040084

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "contentView":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v5, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 85
    const v2, 0x7f1201f2

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSpeedInfo:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->showScrubbingSpeedInfoPopup()V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ttsMessage"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v3, "accessibility"

    .line 209
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 210
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 211
    const/16 v3, 0x4000

    .line 212
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 213
    .local v1, "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "ttsMessageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 215
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 217
    sget-object v3, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendAccessibilityEvent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v1    # "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "ttsMessageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private showScrubbingSpeedInfoPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    sget-object v2, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showScrubbingSpeedInfoPopup() - mPopupWindow : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 93
    .local v1, "uiType":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mActivity:Landroid/app/Activity;

    .line 94
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d025f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    .local v0, "offsetY":I
    if-nez v1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 101
    .end local v0    # "offsetY":I
    .end local v1    # "uiType":I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "offsetY":I
    .restart local v1    # "uiType":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public cancelScrubbingSpeedInfoPopup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    sget-object v1, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelScrubbingSpeedInfoPopup() -  mPopupWindow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    const v2, 0x7f1201f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 111
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->isFluidEnabled(Landroid/widget/AbsSeekBar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mShowPopupRequested:Z

    .line 117
    return-void
.end method

.method public reprocessProgress(I)I
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 186
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedScrubbingSpeed:I

    iget v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    if-eq v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reprocessProgress() - mScrubbingSpeed was changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedProgress:I

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mStartedProgress:I

    .line 189
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mComparedProgress:I

    .line 191
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedScrubbingSpeed:I

    .line 192
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSavedProgress:I

    .line 204
    return p1

    .line 194
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mStartedProgress:I

    iget v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mComparedProgress:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int p1, v0, v1

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mStartedProgress:I

    iget v1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mComparedProgress:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x4

    add-int p1, v0, v1

    .line 199
    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setScrubbingSpeed(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0x7f0a0178

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 120
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    .local v2, "res":Landroid/content/res/Resources;
    const v7, 0x7f0d015d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 122
    .local v0, "heightOfHalf":I
    const v7, 0x7f0d015f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .local v1, "heightOfHigh":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 124
    .local v6, "touchPointY":I
    const/4 v4, 0x1

    .line 125
    .local v4, "speed":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSpeedInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 127
    if-gez v6, :cond_0

    .line 130
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v8, v0, v1

    if-le v7, v8, :cond_6

    .line 132
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0179

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {v9, v10, v13}, Lcom/samsung/android/app/music/common/util/UiUtils;->getScrubbingRateString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 132
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "speedMessage":Ljava/lang/String;
    const/4 v4, 0x4

    .line 147
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mSpeedInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mLastScrollSpeed:I

    if-eq v4, v7, :cond_0

    .line 149
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iput v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mLastScrollSpeed:I

    .line 154
    .end local v5    # "speedMessage":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mView:Landroid/view/View;

    const v8, 0x7f1201f4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 155
    .local v3, "seekBar":Landroid/widget/SeekBar;
    if-eq v4, v13, :cond_1

    if-ne v4, v12, :cond_8

    .line 156
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->isFluidEnabled(Landroid/widget/AbsSeekBar;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 157
    invoke-static {v3, v11}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 168
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 170
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 171
    if-eq v4, v13, :cond_4

    if-ne v4, v12, :cond_9

    .line 172
    :cond_4
    iput-boolean v10, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mShowPopupRequested:Z

    .line 173
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->showScrubbingSpeedInfoPopup()V

    .line 182
    :cond_5
    :goto_2
    iput v4, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mScrubbingSpeed:I

    .line 183
    return-void

    .line 136
    .end local v3    # "seekBar":Landroid/widget/SeekBar;
    :cond_6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v1, :cond_7

    .line 138
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0179

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {v9, v10, v12}, Lcom/samsung/android/app/music/common/util/UiUtils;->getScrubbingRateString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 138
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .restart local v5    # "speedMessage":Ljava/lang/String;
    const/4 v4, 0x2

    goto :goto_0

    .line 144
    .end local v5    # "speedMessage":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .restart local v5    # "speedMessage":Ljava/lang/String;
    const/4 v4, 0x1

    goto :goto_0

    .line 160
    .end local v5    # "speedMessage":Ljava/lang/String;
    .restart local v3    # "seekBar":Landroid/widget/SeekBar;
    :cond_8
    invoke-static {v3}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->isFluidEnabled(Landroid/widget/AbsSeekBar;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 161
    invoke-static {v3, v10}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 162
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 175
    :cond_9
    iget-boolean v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mShowPopupRequested:Z

    if-nez v7, :cond_5

    .line 176
    iput-boolean v10, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mShowPopupRequested:Z

    .line 177
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->mPopupHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method
