.class public Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.super Ljava/lang/Object;
.source "AbsLegacySoundAliveUserFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBarBubbleUpdateListener"
.end annotation


# instance fields
.field private final mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

.field private final mHideBubble:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 1
    .param p1, "bubble"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mHideBubble:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->hideBubble()V

    return-void
.end method

.method private hideBubble()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 110
    return-void
.end method

.method private updateBubble(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbCentralX(Landroid/widget/AbsSeekBar;)I

    move-result v0

    .line 114
    .local v0, "bubbleX":I
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbCentralY(Landroid/widget/AbsSeekBar;)I

    move-result v1

    .line 115
    .local v1, "bubbleY":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 117
    .local v3, "popupPadding":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getBubbleHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v2, v5, v3

    .line 120
    .local v2, "checkOffsetY":I
    const/16 v5, 0xa

    if-le v2, v5, :cond_0

    .line 121
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v1, v5

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v5, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 128
    instance-of v5, p1, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    if-eqz v5, :cond_1

    .line 129
    check-cast p1, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    .end local p1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getValue()I

    move-result v4

    .line 133
    .local v4, "progress":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 135
    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 136
    return-void

    .line 123
    .end local v4    # "progress":I
    .restart local p1    # "seekBar":Landroid/widget/SeekBar;
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .restart local v4    # "progress":I
    goto :goto_1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 91
    if-eqz p3, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->updateBubble(Landroid/widget/SeekBar;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mBubble:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->updateBubble(Landroid/widget/SeekBar;)V

    .line 101
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 105
    return-void
.end method
