.class public Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
.super Landroid/preference/SeekBarPreference;
.source "AudioBalanceSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;,
        Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mEarPlugs:Z

.field private mLeft:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mOldAudioBalance:I

.field private mPercentageOfBalance:I

.field private mRight:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    .line 73
    new-instance v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;-><init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;-><init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 86
    const v0, 0x7f04020a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setLayoutResource(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    :cond_0
    return-void
.end method

.method private pauseMediaPlayer()V
    .locals 3

    .prologue
    .line 165
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 164
    :cond_0
    return-void
.end method

.method private setAudioBalance(I)V
    .locals 3
    .param p1, "audiobalance"    # I

    .prologue
    .line 244
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private startMediaPlayer()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    .line 155
    const/4 v3, 0x1

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_2

    .line 156
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 159
    :cond_2
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getAudioBalanceFromDB(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 236
    move v0, p1

    .line 237
    .local v0, "audiobalance":I
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_balance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 239
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x64

    .line 95
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 97
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 98
    const-string/jumbo v3, "AudioBalanceSeekbarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBindView() mOldAudioBalance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v3, 0x102045f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 101
    const v3, 0x7f1100ce

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f1100cf

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 107
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-gt v3, v6, :cond_1

    .line 113
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0478

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "left":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0479

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "right":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, "intentFilterVolume":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void

    .line 115
    .end local v0    # "intentFilterVolume":Landroid/content/IntentFilter;
    .end local v1    # "left":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v0, :cond_6

    .line 317
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 319
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 324
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 328
    return v3

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 330
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    .line 331
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 340
    return v3

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 342
    :cond_5
    return v2

    .line 345
    :cond_6
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "paramMediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 185
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 184
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/16 v1, 0x32

    .line 190
    if-nez p3, :cond_0

    return-void

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v0, :cond_4

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 193
    iput p2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    .line 194
    const/16 v0, 0x64

    if-gt p2, v0, :cond_3

    .line 195
    if-eq p2, v1, :cond_1

    const/16 v0, 0x35

    if-gt p2, v0, :cond_1

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_1

    .line 196
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 197
    return-void

    .line 199
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-le v0, v1, :cond_5

    .line 200
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 207
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10027d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 209
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 215
    :cond_3
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volumn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4
    return-void

    .line 201
    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ge v0, v1, :cond_6

    .line 202
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    goto :goto_0

    .line 203
    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ne v0, v1, :cond_2

    .line 204
    iput v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 219
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v1, 0x64

    .line 224
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_0

    .line 225
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareMediaPlayer()V
    .locals 5

    .prologue
    .line 135
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "localIOException":Ljava/io/IOException;
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    const-string/jumbo v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public releaseMediaPlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 175
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 171
    :cond_1
    return-void
.end method

.method public setDualColorSeekbar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    .line 304
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 298
    return-void

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->pauseMediaPlayer()V

    .line 307
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    .line 308
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ebd70a4    # 0.37f

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    if-eqz p1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 295
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 279
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
