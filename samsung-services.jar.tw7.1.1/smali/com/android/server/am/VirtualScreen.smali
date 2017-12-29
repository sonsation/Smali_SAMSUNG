.class public Lcom/android/server/am/VirtualScreen;
.super Ljava/lang/Object;
.source "VirtualScreen.java"


# static fields
.field private static final DEBUG_OFFSET:Z = true

.field private static final TAG:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private final VIRTUALSCREEN_APP_TRANSITION_DURATION:I

.field private final VIRTUALSCREEN_POSITION_BOTTOM:I

.field private final VIRTUALSCREEN_POSITION_LEFT:I

.field private final VIRTUALSCREEN_POSITION_RIGHT:I

.field private final VIRTUALSCREEN_POSITION_TOP:I

.field private final VIRTUALSCREEN_POSITION_UNKNOWN:I

.field private mAllowAppTransition:Z

.field private mBindDisplayId:I

.field private final mDefaultDisplayRect:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private mFlags:I

.field private mIsVisible:Z

.field private mLayer:I

.field private mOffsetUid:I

.field private mPosition:I

.field private mScreen:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/am/MultiScreenManagerService;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/graphics/Rect;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/MultiScreenManagerService;
    .param p2, "displayId"    # I
    .param p3, "bound"    # Landroid/graphics/Rect;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v3, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    .line 50
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    .line 51
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 53
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 55
    iput v3, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    .line 58
    iput v3, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_UNKNOWN:I

    .line 59
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_LEFT:I

    .line 60
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_TOP:I

    .line 61
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_RIGHT:I

    .line 62
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_BOTTOM:I

    .line 63
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_APP_TRANSITION_DURATION:I

    .line 66
    iput-object p1, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    .line 67
    iput p2, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    .line 68
    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    .line 69
    iput p4, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    .line 70
    if-eqz p3, :cond_0

    .line 71
    iput-object p3, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 73
    .local v0, "defaultDisplayRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 76
    .local v1, "screen":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/server/am/VirtualScreen;->initPosition()V

    .line 65
    .end local v0    # "defaultDisplayRect":Landroid/graphics/Rect;
    .end local v1    # "screen":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private initPosition()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    .line 83
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_1

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_2

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_3

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0
.end method


# virtual methods
.method public allowAppTransition()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    return v0
.end method

.method public computeScreenConfiguration(I)V
    .locals 13
    .param p1, "rotation"    # I

    .prologue
    const/4 v12, 0x0

    .line 312
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v9, v12}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 313
    .local v0, "defaultDisplayRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    iget v10, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 315
    .local v8, "virtualDisplayRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 317
    :cond_0
    const-string v9, "VirtualScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computeScreenConfiguration - DisplaySize is mismatch : defaultDisplayRect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " virtualDisplayRect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 321
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 322
    return-void

    .line 325
    :cond_2
    const/4 v1, 0x0

    .line 326
    .local v1, "ratioX":F
    const/4 v2, 0x0

    .line 328
    .local v2, "ratioY":F
    iget v9, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    if-nez v9, :cond_3

    .line 329
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 330
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 333
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 336
    .local v5, "screenF":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int v6, v9, v10

    .line 337
    .local v6, "signX":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int v7, v9, v10

    .line 339
    .local v7, "signY":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int v3, v6, v9

    .line 340
    .local v3, "rotatedX":I
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int v4, v7, v9

    .line 341
    .local v4, "rotatedY":I
    int-to-float v9, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    int-to-float v10, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v2

    add-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 343
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 344
    const-string v9, "VirtualScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computeScreenConfiguration - change rect to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDefaultDisplayRect is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0, v12, v12}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 310
    return-void

    .line 336
    .end local v3    # "rotatedX":I
    .end local v4    # "rotatedY":I
    .end local v6    # "signX":I
    .end local v7    # "signY":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "signX":I
    goto :goto_0

    .line 337
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "signY":I
    goto :goto_1
.end method

.method public createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "enter"    # Z
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "trans":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 303
    .end local v0    # "trans":Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 305
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 307
    :cond_0
    return-object v0

    .line 268
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    :pswitch_0
    if-eqz p1, :cond_1

    .line 269
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 271
    .local v0, "trans":Landroid/view/animation/Animation;
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 276
    .local v0, "trans":Landroid/view/animation/Animation;
    :pswitch_1
    if-eqz p1, :cond_2

    .line 277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 279
    .local v0, "trans":Landroid/view/animation/Animation;
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 284
    .local v0, "trans":Landroid/view/animation/Animation;
    :pswitch_2
    if-eqz p1, :cond_3

    .line 285
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 287
    .local v0, "trans":Landroid/view/animation/Animation;
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 292
    .local v0, "trans":Landroid/view/animation/Animation;
    :pswitch_3
    if-eqz p1, :cond_4

    .line 293
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 295
    .local v0, "trans":Landroid/view/animation/Animation;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBindDisplayId()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    return v0
.end method

.method public getOffsetByPosition(F)Landroid/graphics/PointF;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 119
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 121
    .local v0, "point":Landroid/graphics/PointF;
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOffsetUid()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    return v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFocusPolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasLayoutPolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasReuseTaskPolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 369
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasZeroPagePolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 365
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method intersectsDefaultDisplay()Z
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 169
    .local v0, "screenWithOffset":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 170
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    return v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDefaultDisplay(II)Z
    .locals 2
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 159
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 160
    .local v0, "screenWithOffset":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 161
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x1

    return v1

    .line 164
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isValid(IZ)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-ltz v0, :cond_0

    if-eqz p2, :cond_2

    .line 178
    :cond_0
    const-string v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset() set offset from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 186
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-eq v0, p1, :cond_1

    .line 182
    const-string v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset() failed set offset current uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrong uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v3
.end method

.method public prepareTransition()V
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_0

    .line 255
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAllowAppTransition(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    .line 348
    return-void
.end method

.method public setBindDisplayId(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 220
    const-string v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already binded display with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    .line 106
    return-void
.end method

.method public setOffset(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 190
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 191
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 194
    :cond_0
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    .line 195
    iput p2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    .line 197
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOffset() mXOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mYOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 201
    .local v2, "screenWithOffset":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v4, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 203
    .local v0, "defaultRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 204
    .local v1, "isVisible":Z
    iget-boolean v3, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    if-eq v3, v1, :cond_1

    .line 205
    iput-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    .line 206
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOffset() mIsVisible changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    return-void
.end method

.method public setScreenSize(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    .line 155
    invoke-direct {p0}, Lcom/android/server/am/VirtualScreen;->initPosition()V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/am/VirtualScreen;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ",{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, ", Rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ", Offset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, ", mBindDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, ", mDefaultDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ", mOffsetUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ", mAllowAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", mFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", mLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 227
    return-void
.end method
