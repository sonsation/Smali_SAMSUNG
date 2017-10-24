.class public Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "ScreenResolutionSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFHD:Landroid/widget/TextView;

.field private mFHDpx:Landroid/widget/TextView;

.field private mHD:Landroid/widget/TextView;

.field private mHDpx:Landroid/widget/TextView;

.field public mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mWQHD:Landroid/widget/TextView;

.field private mWQHDpx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 45
    const v5, 0x7f04020f

    const v6, 0x7f11058b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private updateResolutionLabels()V
    .locals 14

    .prologue
    .line 92
    const/4 v5, 0x0

    .local v5, "width":I
    const/4 v3, 0x0

    .line 94
    .local v3, "height":I
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 96
    .local v0, "default_size":Landroid/graphics/Point;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    .line 97
    .local v6, "windowManager":Landroid/view/IWindowManager;
    const/4 v7, 0x0

    invoke-interface {v6, v7, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 103
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 105
    int-to-float v7, v3

    int-to-float v8, v5

    div-float v4, v7, v8

    .line 106
    .local v4, "ratio":F
    const v7, 0x3fe38e39

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    .line 107
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 113
    .local v2, "formatter":Ljava/text/NumberFormat;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 114
    const/16 v7, 0x5a0

    if-ne v5, v7, :cond_1

    .line 115
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v10, v3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v9, v10

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v9, v10

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v10, v3

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v9, v10

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v9, v10

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v10, v5

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    return-void

    .line 98
    .end local v2    # "formatter":Ljava/text/NumberFormat;
    .end local v4    # "ratio":F
    .end local v6    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ScreenResolutionSeekBarPreference"

    const-string/jumbo v8, "getInitialDisplaySize() exception!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    .line 69
    const-string/jumbo v1, "ScreenResolutionSeekBarPreference"

    const-string/jumbo v2, "onBindView called "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v1, 0x7f110588

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f11058d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f110589

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f11058e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f11058a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f11058f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f11058b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 79
    .local v0, "seekBar":Lcom/samsung/android/settings/widget/IntervalSeekBar;
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eq v0, v1, :cond_0

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->updateResolutionLabels()V

    .line 67
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 87
    return-void
.end method
