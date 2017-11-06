.class Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;
.super Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.source "LegacySoundAliveUserEqFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EqSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 0
    .param p2, "bubble"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    .line 97
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    .line 98
    return-void
.end method

.method private getCurrentValues()[I
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 107
    new-array v0, v3, [I

    .line 108
    .local v0, "eqValue":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;)[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->getCurrentValues()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->setLegacySoundAliveUser([I[I)V

    .line 104
    return-void
.end method
