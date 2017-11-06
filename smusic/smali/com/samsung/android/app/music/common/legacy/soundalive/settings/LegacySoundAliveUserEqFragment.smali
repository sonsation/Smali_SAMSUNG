.class public Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;
.super Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.source "LegacySoundAliveUserEqFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final BASE_PROGRESS:I = 0xa

.field private static final EQ_SEEKBAR_RES_ID:[I

.field private static final EQ_STRING_RES_ID:[I


# instance fields
.field private final mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->EQ_SEEKBAR_RES_ID:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->EQ_STRING_RES_ID:[I

    return-void

    .line 25
    :array_0
    .array-data 4
        0x7f120210
        0x7f120211
        0x7f120212
        0x7f120213
        0x7f120214
        0x7f120215
        0x7f120216
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x7f0a0497
        0x7f0a0498
        0x7f0a0499
        0x7f0a049a
        0x7f0a049b
        0x7f0a049c
        0x7f0a049d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;-><init>()V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;)[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x7

    .line 45
    new-array v1, v6, [Landroid/view/View;

    .line 46
    .local v1, "eqViews":[Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->loadValue()[I

    move-result-object v0

    .line 48
    .local v0, "eqValue":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 49
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->EQ_SEEKBAR_RES_ID:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 50
    aget-object v3, v1, v2

    const v4, 0x7f120218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->EQ_STRING_RES_ID:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v1, v2

    const v5, 0x7f120217

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aput-object v3, v4, v2

    .line 53
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    aget v4, v0, v2

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 54
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setBaseValue(I)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->getBubble(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f04009b

    return v0
.end method

.method public loadValue()[I
    .locals 10

    .prologue
    const/4 v9, 0x7

    .line 61
    new-array v0, v9, [I

    .line 62
    .local v0, "eqValue":[I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "music_service_pref"

    const/4 v8, 0x4

    .line 63
    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 65
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "user_eq"

    const-string v7, "0|0|0|0|0|0|0|"

    .line 66
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "savedEq":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v6, "|"

    invoke-direct {v4, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v4, "strToken":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    .line 69
    .end local v5    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v6, 0x0

    aput v6, v0, v1

    goto :goto_1

    .line 77
    :cond_1
    return-object v0
.end method

.method public notifyAudioPathChanged()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public resetValue()V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->mEqSeekBar:[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 84
    .local v0, "seekBar":Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "seekBar":Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    :cond_0
    return-void
.end method
