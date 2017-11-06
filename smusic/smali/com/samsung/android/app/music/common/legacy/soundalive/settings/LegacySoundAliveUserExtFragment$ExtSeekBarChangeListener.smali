.class Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;
.super Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.source "LegacySoundAliveUserExtFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 0
    .param p2, "bubble"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    .line 148
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    .line 149
    return-void
.end method

.method private getCurrentValues()[I
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 171
    new-array v0, v3, [I

    .line 172
    .local v0, "extValue":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 173
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
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
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->getCurrentValues()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->setLegacySoundAliveUser([I[I)V

    .line 168
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    const v2, 0x7f0a00e3

    .line 157
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 162
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method
