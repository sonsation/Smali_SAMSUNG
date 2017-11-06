.class public Lcom/samsung/android/app/music/common/util/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/TransitionUtils$TransitionDuration;,
        Lcom/samsung/android/app/music/common/util/TransitionUtils$TransitionName;,
        Lcom/samsung/android/app/music/common/util/TransitionUtils$TransitionNames;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/app/music/common/util/TransitionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/TransitionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static getFadeTransition(I)Landroid/transition/Transition;
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 156
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getTransitionBundle(Landroid/app/Activity;Ljava/lang/String;[Landroid/view/View;)Landroid/os/Bundle;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "transitionName"    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/app/music/common/util/TransitionUtils$TransitionNames;
        .end annotation
    .end param
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 305
    sget-object v4, Lcom/samsung/android/app/music/common/util/TransitionUtils;->TAG:Ljava/lang/String;

    const-string v5, "getTransitionBundle(), views is null."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v4, 0x0

    .line 317
    :goto_0
    return-object v4

    .line 309
    :cond_0
    array-length v4, p2

    new-array v2, v4, [Landroid/util/Pair;

    .line 310
    .local v2, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 311
    .local v0, "index":I
    array-length v5, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, p2, v4

    .line 312
    .local v3, "v":Landroid/view/View;
    new-instance v6, Landroid/util/Pair;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 316
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    invoke-static {p0, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 317
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0
.end method

.method private static getTransitionSet(I)Landroid/transition/TransitionSet;
    .locals 1
    .param p0, "duration"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method private static getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .locals 6
    .param p0, "duration"    # I
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 174
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 175
    .local v0, "changeBounds":Landroid/transition/ChangeBounds;
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 179
    :cond_0
    new-instance v1, Landroid/transition/ChangeImageTransform;

    invoke-direct {v1}, Landroid/transition/ChangeImageTransform;-><init>()V

    .line 180
    .local v1, "changeImageTransform":Landroid/transition/ChangeImageTransform;
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {v1, p1}, Landroid/transition/ChangeImageTransform;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 184
    :cond_1
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 185
    .local v2, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 186
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 187
    new-instance v3, Landroid/transition/ChangeTransform;

    invoke-direct {v3}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 188
    new-instance v3, Landroid/transition/ChangeClipBounds;

    invoke-direct {v3}, Landroid/transition/ChangeClipBounds;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 189
    int-to-long v4, p0

    invoke-virtual {v2, v4, v5}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 190
    new-instance v3, Lcom/samsung/android/app/music/common/util/TransitionUtils$1;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/util/TransitionUtils$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 216
    return-object v2
.end method

.method private static getTransitionSetPlayer(Landroid/content/Context;IIIIIIII)Landroid/transition/TransitionSet;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startPlayPauseResource"    # I
    .param p2, "endPlayPauseResource"    # I
    .param p3, "startPrevResource"    # I
    .param p4, "endPrevResource"    # I
    .param p5, "startNextResource"    # I
    .param p6, "endNextResource"    # I
    .param p7, "startColorResource"    # I
    .param p8, "endColorResource"    # I

    .prologue
    .line 226
    const/16 v8, 0x15e

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 227
    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v6

    .line 229
    .local v6, "transitionSet":Landroid/transition/TransitionSet;
    new-instance v5, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

    invoke-direct {v5, p3, p4}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;-><init>(II)V

    .line 231
    .local v5, "changePrevResource":Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;
    const-string/jumbo v8, "transition_name_player1"

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 232
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 233
    invoke-virtual {v6, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 235
    new-instance v4, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

    invoke-direct {v4, p1, p2}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;-><init>(II)V

    .line 237
    .local v4, "changePlayPauseResource":Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;
    const-string/jumbo v8, "transition_name_player2"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 238
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 239
    invoke-virtual {v6, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 241
    new-instance v3, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

    move/from16 v0, p6

    invoke-direct {v3, p5, v0}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;-><init>(II)V

    .line 243
    .local v3, "changeNextResource":Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;
    const-string/jumbo v8, "transition_name_player3"

    invoke-virtual {v3, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 244
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 245
    invoke-virtual {v6, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 246
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v7

    .line 247
    .local v7, "uiType":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 248
    new-instance v2, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;-><init>(II)V

    .line 249
    .local v2, "changeColors":Lcom/samsung/android/app/music/common/view/transition/ChangeColors;
    const-string/jumbo v8, "transition_name_player1"

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v8

    const-string/jumbo v9, "transition_name_player2"

    .line 250
    invoke-virtual {v8, v9}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v8

    const-string/jumbo v9, "transition_name_player3"

    .line 251
    invoke-virtual {v8, v9}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 252
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 253
    invoke-virtual {v6, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 255
    .end local v2    # "changeColors":Lcom/samsung/android/app/music/common/view/transition/ChangeColors;
    :cond_0
    return-object v6
.end method

.method public static isActivityTransitionEnabled(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 321
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs removeTransitionView(Landroid/view/Window;[Landroid/view/View;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 287
    sget-object v1, Lcom/samsung/android/app/music/common/util/TransitionUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeTransitionView(), views is null."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 292
    invoke-virtual {p0, v3}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 293
    invoke-virtual {p0, v3}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 294
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 295
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setAlbumDetailTransition(Landroid/view/Window;)V
    .locals 6
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/16 v5, 0x12c

    .line 114
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 115
    .local v0, "enterTransition":Landroid/transition/Transition;
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 116
    .local v1, "returnTransition":Landroid/transition/Transition;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 117
    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 118
    .local v2, "sharedElementEnterTransition":Landroid/transition/Transition;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 119
    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 120
    .local v3, "sharedElementReturnTransition":Landroid/transition/Transition;
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setEnterDefaultTransition(Landroid/view/Window;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)V

    .line 122
    return-void
.end method

.method public static setCallerTransition(Landroid/view/Window;)V
    .locals 1
    .param p0, "w"    # Landroid/view/Window;

    .prologue
    .line 147
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 148
    return-void
.end method

.method public static setDetailsTransition(Landroid/view/Window;)V
    .locals 6
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/16 v5, 0x12c

    .line 103
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 104
    .local v0, "enterTransition":Landroid/transition/Transition;
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 105
    .local v1, "returnTransition":Landroid/transition/Transition;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 106
    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 107
    .local v2, "sharedElementEnterTransition":Landroid/transition/Transition;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 108
    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSet(ILandroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 109
    .local v3, "sharedElementReturnTransition":Landroid/transition/Transition;
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setEnterDefaultTransition(Landroid/view/Window;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)V

    .line 111
    return-void
.end method

.method private static setEnterDefaultTransition(Landroid/view/Window;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "enterTransition"    # Landroid/transition/Transition;
    .param p2, "returnTransition"    # Landroid/transition/Transition;
    .param p3, "sharedElementEnterTransition"    # Landroid/transition/Transition;
    .param p4, "sharedElementReturnTransition"    # Landroid/transition/Transition;

    .prologue
    .line 127
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 128
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 130
    invoke-virtual {p0, p2}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 131
    invoke-virtual {p0, p3}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 132
    invoke-virtual {p0, p4}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 133
    return-void
.end method

.method public static setPlayerTransition(Landroid/view/Window;)V
    .locals 13
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 78
    const/16 v1, 0x15e

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v9

    .line 79
    .local v9, "enterTransition":Landroid/transition/Transition;
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getFadeTransition(I)Landroid/transition/Transition;

    move-result-object v10

    .line 80
    .local v10, "returnTransition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f02018c

    const v2, 0x7f020109

    const v3, 0x7f0201d7

    const v4, 0x7f0201e2

    const v5, 0x7f0201d4

    const v6, 0x7f0201db

    const v7, 0x7f110178

    const v8, 0x7f1100c0

    .line 82
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSetPlayer(Landroid/content/Context;IIIIIIII)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 90
    .local v11, "sharedElementEnterTransition":Landroid/transition/Transition;
    const v1, 0x7f020109

    const v2, 0x7f02018c

    const v3, 0x7f0201e2

    const v4, 0x7f0201d7

    const v5, 0x7f0201db

    const v6, 0x7f0201d4

    const v7, 0x7f1100c0

    const v8, 0x7f110178

    .line 91
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionSetPlayer(Landroid/content/Context;IIIIIIII)Landroid/transition/TransitionSet;

    move-result-object v12

    .line 98
    .local v12, "sharedElementReturnTransition":Landroid/transition/Transition;
    invoke-static {p0, v9, v10, v11, v12}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setEnterDefaultTransition(Landroid/view/Window;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)V

    .line 100
    return-void
.end method

.method public static varargs setTransitionView(Ljava/lang/String;[Landroid/view/View;)V
    .locals 5
    .param p0, "transitionName"    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/app/music/common/util/TransitionUtils$TransitionNames;
        .end annotation
    .end param
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 270
    if-nez p1, :cond_1

    .line 271
    sget-object v2, Lcom/samsung/android/app/music/common/util/TransitionUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTransitionView(), views is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x0

    .line 276
    .local v0, "index":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 277
    .local v1, "v":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 264
    return-void
.end method
