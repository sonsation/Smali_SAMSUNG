.class public Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
.super Landroid/view/View;
.source "EqualizerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final ALPHA_STEP:I = 0x3c

.field private static final POINT_COLUMNS:I = 0x3

.field private static final POINT_ROWS:I = 0x5

.field private static final THREAD_NAME:Ljava/lang/String; = "EqualizerAnimation"


# instance fields
.field private mDownCounts:[I

.field private mIsPlaying:Z

.field private mNowLevels:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointBaseCx:I

.field private mPointBaseCy:I

.field private mPointGap:I

.field private mPointRadius:I

.field private mRandom:Ljava/util/Random;

.field private mTargetLevels:[I

.field private mThread:Landroid/os/HandlerThread;

.field private mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->initialize()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->initialize()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x3

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->initialize()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->updatePlayState()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->updatePauseState()V

    return-void
.end method

.method private calculateLevels()V
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 143
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_1

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mRandom:Ljava/util/Random;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_1

    .line 159
    :cond_4
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_equalizer_animation_point_base_cx:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointBaseCx:I

    .line 76
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_equalizer_animation_point_base_cy:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointBaseCy:I

    .line 78
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_equalizer_animation_point_radius:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointRadius:I

    .line 80
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_equalizer_animation_point_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointGap:I

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_playing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mRandom:Ljava/util/Random;

    .line 86
    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v0, v0, v5

    if-lez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aput v3, v2, v5

    aput v3, v1, v4

    aput v3, v0, v3

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->invalidate()V

    .line 125
    :cond_1
    return-void
.end method

.method private updatePauseState()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->calculateLevels()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->postInvalidate()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->updatePause(I)V

    .line 139
    :cond_1
    return-void
.end method

.method private updatePlayState()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->calculateLevels()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->postInvalidate()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->updatePlay(I)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-nez v3, :cond_1

    .line 180
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 195
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 185
    const/16 v0, 0xff

    .line 186
    .local v0, "alpha":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mNowLevels:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mDownCounts:[I

    aget v3, v3, v1

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mTargetLevels:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_2

    .line 188
    mul-int/lit8 v3, v2, 0x3c

    rsub-int v0, v3, 0xff

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointBaseCx:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointGap:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointBaseCy:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointGap:I

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPointRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 164
    if-nez p2, :cond_1

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->start()V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->reset()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->stop()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->updatePauseState()V

    .line 109
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EqualizerAnimation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->updatePlayState()V

    .line 102
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mIsPlaying:Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->release()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->mThread:Landroid/os/HandlerThread;

    .line 118
    :cond_0
    return-void
.end method
