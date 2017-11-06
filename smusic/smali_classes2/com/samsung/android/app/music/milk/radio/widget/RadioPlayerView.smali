.class public Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;
.super Landroid/widget/LinearLayout;
.source "RadioPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioPlayerView"


# instance fields
.field private mIsEnabled:Z

.field private mIsPrevNextControllable:Z

.field private mPlayPause:Landroid/widget/ImageView;

.field private mPlayPauseContainer:Landroid/view/ViewGroup;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private mPrevContainer:Landroid/view/ViewGroup;

.field private mSkipContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getRadioDialPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 44
    new-instance v1, Lcom/samsung/android/app/music/common/RadioPlayerController;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/RadioPlayerController;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsEnabled:Z

    .line 48
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsPrevNextControllable:Z

    .line 60
    const-string v1, "RadioPlayerView"

    const-string v2, "RadioPlayerView >> init view."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, v3, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->addView(Landroid/view/View;II)V

    .line 63
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->initRadioPlayer(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method private getLayoutId()I
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f040113

    return v0
.end method

.method private getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method private initRadioPlayer(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0a032f

    .line 71
    const v3, 0x7f120342

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPauseContainer:Landroid/view/ViewGroup;

    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPauseContainer:Landroid/view/ViewGroup;

    const v4, 0x7f120343

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    .line 73
    const v3, 0x7f120344

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    .line 74
    const v3, 0x7f120340

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    .line 75
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->initializePlayBtnListener()V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "playPauseDescription":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    .end local v0    # "playPauseDescription":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v2, "skipDescription":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    .end local v2    # "skipDescription":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v1, "prevDescription":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    .end local v1    # "prevDescription":Ljava/lang/StringBuffer;
    :cond_2
    return-void

    .line 86
    .restart local v0    # "playPauseDescription":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getPlayPauseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initializePlayBtnListener()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPreviousEnable()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSkipEnable()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    const-string v0, "RadioPlayerView"

    const-string v1, "onClick >> toggle play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->togglePlay()V

    goto :goto_0

    .line 184
    :pswitch_2
    const-string v0, "RadioPlayerView"

    const-string v1, "onClick >> Move to next"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->skipSong()V

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v0, "RadioPlayerView"

    const-string v1, "onClick >> Move to prev"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->previousSong()V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f120340
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const-string v0, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.app.music.core.state.NEXT_RADIO_CHANGED"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsPrevNextControllable:Z

    if-eqz v0, :cond_1

    const-string v0, "has_next_song"

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 160
    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v0

    .line 119
    .local v0, "isPrevNextControllable":Z
    const-string v1, "RadioPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMetadataChanged : isSkipable - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsPrevNextControllable:Z

    if-eq v0, v1, :cond_0

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsPrevNextControllable:Z

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setSkipEnable(Z)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setBackSkipEnable(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    .line 130
    .local v1, "state":I
    const-string v2, "RadioPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaybackStateChanged : state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPauseContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 133
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "playPauseDescription":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "playPauseDescription":Ljava/lang/StringBuffer;
    :cond_0
    return-void

    .line 140
    .restart local v0    # "playPauseDescription":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-string v0, "RadioPlayerView"

    const-string v1, "onQueueChanged : called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public previousSong()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->prev()V

    .line 204
    :cond_0
    return-void
.end method

.method public setBackSkipEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPrevContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsEnabled:Z

    .line 110
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0
    .param p1, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 67
    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 68
    return-void
.end method

.method public setSkipEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mSkipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method public skipSong()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->next()V

    .line 218
    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setClickedToggleButton(Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 232
    :cond_1
    return-void
.end method
