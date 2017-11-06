.class public Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;
.super Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.source "LegacySoundAliveUserExtFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final EXT_SEEKBAR_RES_ID:[I

.field private static final EXT_STRING_RES_ID:[I

.field private static final MAX_PROGRESS:I = 0x3


# instance fields
.field private mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->EXT_SEEKBAR_RES_ID:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->EXT_STRING_RES_ID:[I

    return-void

    .line 27
    :array_0
    .array-data 4
        0x7f12021b
        0x7f12021c
        0x7f12021d
        0x7f12021e
        0x7f12021f
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x7f0a049f
        0x7f0a04a0
        0x7f0a04a1
        0x7f0a04a2
        0x7f0a04a3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;-><init>()V

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-object v0
.end method

.method private set3dEffectEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00e3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    .line 66
    new-array v1, v6, [Landroid/view/View;

    .line 67
    .local v1, "extViews":[Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->loadValue()[I

    move-result-object v0

    .line 69
    .local v0, "extValue":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 70
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->EXT_SEEKBAR_RES_ID:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    aget-object v3, v1, v2

    const v4, 0x7f120218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->EXT_STRING_RES_ID:[I

    aget v4, v4, v2

    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v1, v2

    const v5, 0x7f120217

    .line 75
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aput-object v3, v4, v2

    .line 76
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    .line 77
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getBubble(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-instance v4, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f04009e

    return v0
.end method

.method public loadValue()[I
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 96
    new-array v0, v9, [I

    .line 97
    .local v0, "extValue":[I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "music_service_pref"

    const/4 v8, 0x4

    .line 98
    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "user_ext"

    const-string v7, "0|0|0|0|0|"

    .line 101
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "savedExt":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v6, "|"

    invoke-direct {v4, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v4, "strToken":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    .line 104
    .end local v5    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const/4 v6, 0x0

    aput v6, v0, v1

    goto :goto_1

    .line 112
    :cond_1
    return-object v0
.end method

.method public notifyAudioPathChanged()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->set3dEffectEnabled(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 45
    return-void
.end method

.method public resetValue()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mExtSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 119
    .local v0, "seekBar":Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "seekBar":Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->setUserVisibleHint(Z)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->set3dEffectEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method
