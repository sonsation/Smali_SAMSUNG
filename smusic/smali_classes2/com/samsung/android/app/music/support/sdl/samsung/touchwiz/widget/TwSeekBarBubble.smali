.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;
.super Landroid/widget/FrameLayout;
.source "TwSeekBarBubble.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUBBLE_ALIGN_BOTTOM:I = 0x3

.field public static final BUBBLE_ALIGN_CENTER:I = 0x4

.field public static final BUBBLE_ALIGN_LEFT:I = 0x0

.field public static final BUBBLE_ALIGN_RIGHT:I = 0x1

.field public static final BUBBLE_ALIGN_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwSeekbarBubble"

.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

.field private final debug:Z

.field private mBubbleAlign:I

.field private mBubbleBackground:Landroid/graphics/drawable/Drawable;

.field private mBubbleDisplay:Z

.field private mBubbleDrawnRect:Landroid/graphics/Rect;

.field private mBubbleFontColor:I

.field private mBubbleFontSize:F

.field private mBubblePosLeft:I

.field private mBubblePosTop:I

.field private mBubbleText:Ljava/lang/CharSequence;

.field private mScale:F

.field private mTextPainter:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 93
    const v0, 0x421551ec    # 37.33f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "TwSeekBarBubble"

    const-string v1, "This API can be used in models based on L platform."

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 93
    const v0, 0x421551ec    # 37.33f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 124
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string v0, "TwSeekBarBubble"

    const-string v1, "This API can be used in models based on L platform."

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 93
    const v0, 0x421551ec    # 37.33f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 140
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "TwSeekBarBubble"

    const-string v1, "This API can be used in models based on L platform."

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 145
    return-void
.end method

.method private calculateBubblePosition(Landroid/graphics/Point;)V
    .locals 10
    .param p1, "bubblePosition"    # Landroid/graphics/Point;

    .prologue
    .line 468
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 469
    .local v3, "dBubbleBg":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 471
    .local v5, "rectText":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 472
    .local v4, "rectBubblePadding":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 474
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 475
    .local v2, "bubbleWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 477
    .local v1, "bubbleHeight":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int v0, v2, v6

    .line 479
    .local v0, "bubbleContentWidth":I
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 484
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 485
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 487
    :cond_0
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int v2, v6, v7

    .line 489
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    packed-switch v6, :pswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 491
    :pswitch_0
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 492
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 495
    :pswitch_1
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    sub-int/2addr v6, v2

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 496
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 499
    :pswitch_2
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 500
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 503
    :pswitch_3
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 504
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    sub-int/2addr v6, v1

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 507
    :pswitch_4
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 508
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 153
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setClickable(Z)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setFocusable(Z)V

    .line 156
    const-string v0, " "

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    .line 160
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 161
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    .line 169
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 307
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    if-eqz v12, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 312
    .local v6, "dBubbleBg":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v7, "rectBg":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v9, "rectText":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 319
    .local v8, "rectBubblePadding":Landroid/graphics/Rect;
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 321
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 322
    .local v5, "bubbleWidth":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 324
    .local v3, "bubbleHeight":I
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int v2, v5, v12

    .line 326
    .local v2, "bubbleContentWidth":I
    iget v12, v8, Landroid/graphics/Rect;->top:I

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int v1, v3, v12

    .line 329
    .local v1, "bubbleContentHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 333
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ge v2, v12, :cond_0

    .line 334
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 337
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ge v1, v12, :cond_1

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 341
    :cond_1
    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v2

    iget v13, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v12, v13

    .line 346
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 347
    .local v4, "bubblePoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->calculateBubblePosition(Landroid/graphics/Point;)V

    .line 349
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v4, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v14, v5

    iget v15, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v15, v3

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 353
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Point;->x:I

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v5

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Point;->y:I

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v3

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 362
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    .line 363
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v13, v2, v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int v10, v12, v13

    .line 364
    .local v10, "textX":I
    iget v12, v4, Landroid/graphics/Point;->y:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    .line 365
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int v13, v1, v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    .line 368
    .local v11, "textY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    int-to-float v13, v10

    int-to-float v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    .end local v1    # "bubbleContentHeight":I
    .end local v2    # "bubbleContentWidth":I
    .end local v3    # "bubbleHeight":I
    .end local v4    # "bubblePoint":Landroid/graphics/Point;
    .end local v5    # "bubbleWidth":I
    .end local v6    # "dBubbleBg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "rectBg":Landroid/graphics/Rect;
    .end local v8    # "rectBubblePadding":Landroid/graphics/Rect;
    .end local v9    # "rectText":Landroid/graphics/Rect;
    .end local v10    # "textX":I
    .end local v11    # "textY":I
    :cond_2
    return-void
.end method

.method public getBubbleFontSize()F
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    return v0
.end method

.method public getBubbleHeight()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getBubbleWidth()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hideBubble()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 264
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "bResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 380
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 382
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 384
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 390
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 407
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 409
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 411
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 417
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 439
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 446
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setBubbleAlign(I)V
    .locals 0
    .param p1, "bubbleAlign"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 250
    return-void
.end method

.method public setBubbleBackgroundDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void
.end method

.method public setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_0
    return-void
.end method

.method public setBubbleFontColor(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 303
    return-void
.end method

.method public setBubbleFontSize(F)V
    .locals 2
    .param p1, "fontSize"    # F

    .prologue
    .line 284
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 285
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    goto :goto_0
.end method

.method public setBubblePosition(Landroid/view/View;II)V
    .locals 2
    .param p1, "offsetView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 229
    .local v0, "rectOffset":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 230
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 231
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    goto :goto_0
.end method

.method public setBubbleText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method public setBubbleText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    .line 201
    return-void
.end method

.method public showBubble()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 257
    return-void
.end method
