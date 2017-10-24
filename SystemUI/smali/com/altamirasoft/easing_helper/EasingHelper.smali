.class public Lcom/altamirasoft/easing_helper/EasingHelper;
.super Ljava/lang/Object;
.source "EasingHelper.java"


# instance fields
.field currentValue:F

.field easing:F

.field isStarted:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/easing_helper/EasingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field minDiffer:F

.field targetValue:F

.field updateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 23
    iput v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    .line 24
    iget v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    .line 26
    iput-boolean v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [F

    aput v4, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 36
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/altamirasoft/easing_helper/EasingHelper$1;

    invoke-direct {v1, p0}, Lcom/altamirasoft/easing_helper/EasingHelper$1;-><init>(Lcom/altamirasoft/easing_helper/EasingHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    iput v4, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    .line 45
    iput v4, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/easing_helper/EasingHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/altamirasoft/easing_helper/EasingHelper;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->invalidateData()V

    return-void
.end method

.method private invalidateData()V
    .locals 4

    .prologue
    .line 129
    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    sub-float v0, v2, v3

    .line 131
    .local v0, "d":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 132
    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    iput v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 134
    :cond_1
    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 139
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 144
    iget v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 145
    :goto_3
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->pause()V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/easing_helper/EasingUpdateListener;

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    invoke-interface {v2, v3}, Lcom/altamirasoft/easing_helper/EasingUpdateListener;->onUpdateCurrentValue(F)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/easing_helper/EasingUpdateListener;

    iget v3, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    invoke-interface {v2, v3}, Lcom/altamirasoft/easing_helper/EasingUpdateListener;->onFinishUpdateValue(F)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addUpdateListener(Lcom/altamirasoft/easing_helper/EasingUpdateListener;)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 1
    .param p1, "listener"    # Lcom/altamirasoft/easing_helper/EasingUpdateListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :goto_1
    return-object p0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setCurrentValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->currentValue:F

    .line 86
    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->resume()V

    .line 87
    return-object p0
.end method

.method public setEasing(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->easing:F

    .line 75
    return-object p0
.end method

.method public setMinDiffer(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->minDiffer:F

    .line 80
    return-object p0
.end method

.method public setTargetValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->targetValue:F

    .line 93
    invoke-virtual {p0}, Lcom/altamirasoft/easing_helper/EasingHelper;->resume()V

    .line 94
    return-object p0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted:Z

    .line 104
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
