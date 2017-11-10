.class public Lcom/samsung/android/glview/GLButton;
.super Lcom/samsung/android/glview/GLView;
.source "GLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLButton$ButtonPressListener;,
        Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_BACKGROUND_COLOR:I

.field private static final BUTTON_BACKGROUND_FILL_COLOR:I

.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8

.field private static final HIGHLIGHTTYPE_COLOR:I = 0x2

.field private static final HIGHLIGHTTYPE_NONE:I = 0x0

.field private static final HIGHLIGHTTYPE_RESOURCE:I = 0x1

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190

.field private static final STATE_PRESSED_MINIMUM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "GLButton"


# instance fields
.field protected mButtonHeight:F

.field protected mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

.field protected mButtonWidth:F

.field protected mDimBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mDrawRipple:Z

.field protected mHighlight:Lcom/samsung/android/glview/GLTexture;

.field protected mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field protected mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mNormalId:I

.field protected mNormalTextColor:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mPressedId:I

.field protected mPressedTextColor:I

.field private final mResetDrawHighlight:Ljava/lang/Runnable;

.field private final mResetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mRippleBackground:Lcom/samsung/android/glview/GLCircle;

.field private mRippleDiameter:F

.field protected mRippleEffect:Lcom/samsung/android/glview/GLCircle;

.field protected mRippleEffectColor:I

.field protected mRippleEffectEnabled:Z

.field protected mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mRippleRadius:F

.field private mRippleSizeGiven:Z

.field protected mSelected:Z

.field private final mSetDrawHighlight:Ljava/lang/Runnable;

.field private final mSetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mShapeBackgroundVisibility:I

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/samsung/android/glview/GLText;

.field private final resetButtonPressed:Ljava/lang/Runnable;

.field private final setButtonPressed:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xfa

    const/16 v1, 0x25

    const/16 v0, 0x4d

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_COLOR:I

    const/16 v0, 0x26

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_FILL_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    :cond_0
    :goto_0
    if-eqz p7, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    :goto_1
    if-eqz p8, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_5
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iput p8, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void

    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p8}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V
    .locals 8

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p6, :cond_0

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    if-eqz p9, :cond_3

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    :cond_d
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p6, :cond_0

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    if-eqz p9, :cond_3

    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    :cond_d
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p7}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    if-eqz p7, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void

    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p4, :cond_0

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    if-eqz p5, :cond_1

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p6, :cond_2

    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    if-eqz p7, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void

    :cond_8
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IIII)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p4, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    :cond_7
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void

    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    return-void
.end method

.method private initButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    :cond_1
    return-void
.end method

.method private initRippleEffect()V
    .locals 10

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getRippleEffectColor()I

    move-result v6

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    if-eqz v0, :cond_0

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    div-float/2addr v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    return-void
.end method

.method private initShapeBackground()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    sget v6, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_COLOR:I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    sget v1, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_FILL_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setFillColor(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    return-void
.end method

.method private isPossibleDrawRippleEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    :cond_0
    return-void
.end method

.method private setButtonPressed(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonPressListener;->onButtonPressed(Lcom/samsung/android/glview/GLView;Z)V

    :cond_0
    return-void
.end method

.method private startHighlightFadeOutAnimation()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLTexture;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLTexture;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->startAnimation()V

    goto :goto_0
.end method

.method private startRippleEffectFadeOutAnimation()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected checkShapeBackgroundDrawingCondition()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isShowButtonBackgroundEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    :cond_7
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRippleEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    return-void
.end method

.method public getLoaded()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->load()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    :cond_0
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    :cond_9
    return-void
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    return v0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onAlphaUpdated()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onAlphaUpdated()V

    :cond_7
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    if-eqz v0, :cond_b

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clip()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_11

    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clip()V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto/16 :goto_2
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :goto_1
    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onLayoutUpdated()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    :cond_7
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->reset()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->reset()V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v10, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mDragging:Z

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_18

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_c

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    :cond_b
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_c
    move v1, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_e

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_15

    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v3, :cond_12

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Lcom/samsung/android/glview/GLButton$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/glview/GLButton$9;-><init>(Lcom/samsung/android/glview/GLButton;)V

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton$9;->start()V

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v3, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_14
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    move v1, v2

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    goto :goto_3

    :cond_16
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    goto/16 :goto_2

    :cond_18
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->onVisibilityChanged(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->onVisibilityChanged(I)V

    :cond_8
    return-void
.end method

.method public setButtonHighlightChangeListener(Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    return-void
.end method

.method public setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    return-void
.end method

.method public declared-synchronized setButtonResources(IIII)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    if-nez p3, :cond_5

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    :cond_e
    if-nez p4, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    if-nez p3, :cond_5

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    :cond_e
    if-nez p4, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setButtonShapeVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    return-void

    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    return-void
.end method

.method protected setDrawHighlight(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setAlpha(F)V

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;->onButtonHighlightChanged(Lcom/samsung/android/glview/GLView;Z)V

    goto :goto_0
.end method

.method protected setDrawRippleEffect(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setHeight(F)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    :cond_5
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setRippleDiameter(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    return-void
.end method

.method public setShaderParameter(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderParameter(F)V

    :cond_4
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderProgram(I)V

    :cond_4
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderStep(F)V

    :cond_4
    return-void
.end method

.method public setSize(FF)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setStroke(ZFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    return-void
.end method

.method public setText(Lcom/samsung/android/glview/GLText;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FII)V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v9}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;FIIZZ)V
    .locals 11

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->clear()V

    :cond_0
    new-instance v1, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setBold(Z)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v1, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    sub-float v1, v2, p1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    sub-float v0, v2, p2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FFZ)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    :cond_5
    return-void
.end method
