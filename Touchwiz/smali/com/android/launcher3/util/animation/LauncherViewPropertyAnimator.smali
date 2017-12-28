.class public Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mFirstFrameHelper:Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 43
    const-class v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRunning:Z

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 62
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 268
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mAlpha:F

    .line 269
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 74
    :cond_0
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 105
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRunning:Z

    .line 108
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 114
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRunning:Z

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 123
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->onAnimationStart(Landroid/animation/Animator;)V

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 135
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRunning:Z

    .line 138
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public rotationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 262
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRotationY:F

    .line 263
    return-object p0
.end method

.method public scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 250
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mScaleX:F

    .line 251
    return-object p0
.end method

.method public scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 256
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mScaleY:F

    .line 257
    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 163
    iput-wide p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mDuration:J

    .line 164
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 170
    iput-object p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 171
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 176
    iput-wide p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mStartDelay:J

    .line 177
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupEndValues()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 199
    new-instance v0, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 233
    invoke-static {p0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 234
    return-void
.end method

.method public translationX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 238
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTranslationX:F

    .line 239
    return-object p0
.end method

.method public translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 244
    iput p1, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mTranslationY:F

    .line 245
    return-object p0
.end method

.method public withLayer()Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 274
    return-object p0
.end method
