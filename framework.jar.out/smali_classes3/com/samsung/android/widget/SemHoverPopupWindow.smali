.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field private static final ANIMATION_BY_POINTER_POSITION_ENABLED:Z

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemHoverPopupWindow;)Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemHoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    return v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get32(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic -get33(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic -get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic -get35(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V
    .locals 0
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 348
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->DEVICE_TYPE:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "2016B"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const v0, 0x7010001

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 139
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 153
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 155
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 223
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 224
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 225
    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 246
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 248
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 250
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 252
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 254
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 256
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 258
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 260
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 266
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 270
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 290
    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    .line 293
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    .line 296
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    .line 298
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 300
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 302
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 304
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    .line 306
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 312
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 314
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    .line 316
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    .line 318
    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    .line 320
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 322
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 324
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    .line 326
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 328
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    .line 330
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    .line 332
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 334
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    .line 336
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 352
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 354
    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 355
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 368
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    .line 370
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    .line 373
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 375
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 367
    return-void
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .locals 58
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    if-nez v53, :cond_0

    .line 1324
    return-void

    .line 1327
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v53, p1

    :goto_0
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1328
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 1329
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1330
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1332
    if-eqz p1, :cond_5

    move-object/from16 v7, p1

    .line 1333
    .local v7, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 1336
    .local v19, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v6, 0x0

    .line 1337
    .local v6, "anchorRect":Landroid/graphics/Rect;
    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v5, v0, [I

    .line 1338
    .local v5, "anchorLocOnScr":[I
    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v4, v0, [I

    .line 1339
    .local v4, "anchorLocInWindow":[I
    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1340
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1341
    invoke-virtual {v7}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v53

    if-nez v53, :cond_7

    .line 1342
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v53

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-nez v53, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    move-result v53

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-eqz v53, :cond_6

    .line 1343
    :cond_1
    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [F

    move-object/from16 v25, v0

    .line 1344
    .local v25, "identityMatrixOffset":[F
    const/16 v53, 0x0

    const/16 v54, 0x1

    aput v53, v25, v54

    const/16 v53, 0x0

    const/16 v54, 0x0

    aput v53, v25, v54

    .line 1345
    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1346
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v53

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0xb4

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_9

    .line 1347
    const/16 v53, 0x0

    aget v53, v4, v53

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v4, v54

    .line 1348
    const/16 v53, 0x1

    aget v53, v4, v53

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v4, v54

    .line 1350
    const/16 v53, 0x0

    aget v53, v5, v53

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v5, v54

    .line 1351
    const/16 v53, 0x1

    aget v53, v5, v53

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v5, v54

    .line 1398
    :cond_2
    :goto_2
    const/16 v26, 0x1

    .line 1399
    .local v26, "isHasIdentityMatrix":Z
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 1403
    .local v34, "realRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v48

    .line 1404
    .local v48, "viewParent":Landroid/view/ViewParent;
    :goto_3
    move-object/from16 v0, v48

    instance-of v0, v0, Landroid/view/View;

    move/from16 v53, v0

    if-eqz v53, :cond_b

    move-object/from16 v47, v48

    .line 1405
    check-cast v47, Landroid/view/View;

    .line 1407
    .local v47, "view":Landroid/view/View;
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v53

    if-nez v53, :cond_3

    .line 1408
    const/16 v26, 0x0

    .line 1410
    :cond_3
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v48

    goto :goto_3

    .line 1327
    .end local v4    # "anchorLocInWindow":[I
    .end local v5    # "anchorLocOnScr":[I
    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    .end local v7    # "anchorView":Landroid/view/View;
    .end local v19    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v25    # "identityMatrixOffset":[F
    .end local v26    # "isHasIdentityMatrix":Z
    .end local v34    # "realRect":Landroid/graphics/Rect;
    .end local v47    # "view":Landroid/view/View;
    .end local v48    # "viewParent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v53, v0

    goto/16 :goto_0

    .line 1332
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .restart local v7    # "anchorView":Landroid/view/View;
    goto/16 :goto_1

    .line 1342
    .restart local v4    # "anchorLocInWindow":[I
    .restart local v5    # "anchorLocOnScr":[I
    .restart local v6    # "anchorRect":Landroid/graphics/Rect;
    .restart local v19    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    move-result v53

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-nez v53, :cond_1

    .line 1360
    :cond_7
    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [F

    move-object/from16 v25, v0

    .line 1361
    .restart local v25    # "identityMatrixOffset":[F
    const/16 v53, 0x0

    const/16 v54, 0x1

    aput v53, v25, v54

    const/16 v53, 0x0

    const/16 v54, 0x0

    aput v53, v25, v54

    .line 1362
    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1364
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v48

    .line 1366
    .restart local v48    # "viewParent":Landroid/view/ViewParent;
    :goto_4
    move-object/from16 v0, v48

    instance-of v0, v0, Landroid/view/View;

    move/from16 v53, v0

    if-eqz v53, :cond_2

    move-object/from16 v47, v48

    .line 1367
    check-cast v47, Landroid/view/View;

    .line 1372
    .restart local v47    # "view":Landroid/view/View;
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v53

    if-nez v53, :cond_8

    .line 1373
    const/16 v53, 0x0

    const/16 v54, 0x1

    aput v53, v25, v54

    const/16 v53, 0x0

    const/16 v54, 0x0

    aput v53, v25, v54

    .line 1374
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1375
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getRotation()F

    move-result v53

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0xb4

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_a

    .line 1376
    const/16 v53, 0x0

    aget v53, v4, v53

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getWidth()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v4, v54

    .line 1377
    const/16 v53, 0x1

    aget v53, v4, v53

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getHeight()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v4, v54

    .line 1379
    const/16 v53, 0x0

    aget v53, v5, v53

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getWidth()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v5, v54

    .line 1380
    const/16 v53, 0x1

    aget v53, v5, v53

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getHeight()I

    move-result v54

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v5, v54

    .line 1394
    :cond_8
    :goto_5
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v48

    goto :goto_4

    .line 1353
    .end local v47    # "view":Landroid/view/View;
    .end local v48    # "viewParent":Landroid/view/ViewParent;
    :cond_9
    const/16 v53, 0x0

    aget v53, v4, v53

    const/16 v54, 0x0

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v4, v54

    .line 1354
    const/16 v53, 0x1

    aget v53, v4, v53

    const/16 v54, 0x1

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v4, v54

    .line 1356
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v5, v54

    .line 1357
    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v5, v54

    goto/16 :goto_2

    .line 1382
    .restart local v47    # "view":Landroid/view/View;
    .restart local v48    # "viewParent":Landroid/view/ViewParent;
    :cond_a
    const/16 v53, 0x0

    aget v53, v4, v53

    const/16 v54, 0x0

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v4, v54

    .line 1383
    const/16 v53, 0x1

    aget v53, v4, v53

    const/16 v54, 0x1

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v4, v54

    .line 1385
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x0

    aput v53, v5, v54

    .line 1386
    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v25, v54

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    sub-int v53, v53, v54

    const/16 v54, 0x1

    aput v53, v5, v54

    goto/16 :goto_5

    .line 1414
    .end local v47    # "view":Landroid/view/View;
    .restart local v26    # "isHasIdentityMatrix":Z
    .restart local v34    # "realRect":Landroid/graphics/Rect;
    :cond_b
    if-nez v26, :cond_c

    .line 1415
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1416
    const/16 v43, 0x0

    .line 1417
    .local v43, "tempWindowGapX":I
    const/16 v44, 0x0

    .line 1418
    .local v44, "tempWindowGapY":I
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v4, v54

    sub-int v43, v53, v54

    .line 1419
    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v4, v54

    sub-int v44, v53, v54

    .line 1420
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    sub-int v53, v53, v43

    const/16 v54, 0x0

    aput v53, v4, v54

    .line 1421
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    sub-int v53, v53, v44

    const/16 v54, 0x1

    aput v53, v4, v54

    .line 1422
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    const/16 v54, 0x0

    aput v53, v5, v54

    .line 1423
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    const/16 v54, 0x1

    aput v53, v5, v54

    .line 1427
    .end local v43    # "tempWindowGapX":I
    .end local v44    # "tempWindowGapY":I
    :cond_c
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1428
    .local v18, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1430
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 1431
    .local v36, "rootViewDisplayRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v37

    .line 1432
    .local v37, "rootview":Landroid/view/View;
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getWidth()I

    move-result v39

    .line 1433
    .local v39, "rootviewWidth":I
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getHeight()I

    move-result v38

    .line 1435
    .local v38, "rootviewHeight":I
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v4, v54

    sub-int v53, v53, v54

    move/from16 v0, v53

    move-object/from16 v1, v36

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1436
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    add-int v53, v53, v39

    move/from16 v0, v53

    move-object/from16 v1, v36

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1437
    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v4, v54

    sub-int v53, v53, v54

    move/from16 v0, v53

    move-object/from16 v1, v36

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1438
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    add-int v53, v53, v38

    move/from16 v0, v53

    move-object/from16 v1, v36

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1439
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_20

    .line 1441
    :cond_d
    :goto_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1442
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1443
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1444
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1447
    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v53

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_22

    .line 1451
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v4, v54

    sub-int v53, v53, v54

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1452
    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v4, v54

    sub-int v53, v53, v54

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 1453
    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1455
    if-eqz v26, :cond_21

    .line 1456
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v53, 0x0

    aget v53, v4, v53

    const/16 v54, 0x1

    aget v54, v4, v54

    .line 1457
    const/16 v55, 0x0

    aget v55, v4, v55

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v56

    add-int v55, v55, v56

    .line 1458
    const/16 v56, 0x1

    aget v56, v4, v56

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v57

    add-int v56, v56, v57

    .line 1456
    move/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1493
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_f
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    if-gez v53, :cond_11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    if-gez v53, :cond_11

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v35

    .line 1495
    .local v35, "root":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v50

    .line 1497
    .local v50, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v53, v0

    if-eqz v53, :cond_11

    move-object/from16 v52, v50

    .line 1498
    check-cast v52, Landroid/view/WindowManager$LayoutParams;

    .line 1499
    .local v52, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v53, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v54, v0

    or-int v53, v53, v54

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0x404

    move/from16 v53, v0

    if-nez v53, :cond_24

    const/16 v28, 0x1

    .line 1501
    .local v28, "isSystemUiVisible":Z
    :goto_8
    const/16 v42, 0x0

    .line 1503
    .local v42, "statusBarHeight":I
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v53, v0

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0x200

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_10

    if-eqz v28, :cond_10

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    .line 1506
    const v54, 0x1050017

    .line 1505
    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    .line 1508
    :cond_10
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1509
    move/from16 v0, v42

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1510
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1511
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1517
    .end local v28    # "isSystemUiVisible":Z
    .end local v35    # "root":Landroid/view/View;
    .end local v42    # "statusBarHeight":I
    .end local v50    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v52    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    const/16 v54, 0x0

    move/from16 v0, v54

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    .line 1518
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    const/16 v54, 0x0

    move/from16 v0, v54

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    move/from16 v54, v0

    sub-int v53, v53, v54

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v53, v0

    if-nez v53, :cond_25

    .line 1534
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    .line 1535
    const/high16 v54, -0x80000000

    .line 1534
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v51

    .line 1536
    .local v51, "widthMeasureSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    .line 1537
    const/high16 v54, -0x80000000

    .line 1536
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 1556
    .local v22, "heightMeasureSpec":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v51

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1557
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1559
    .local v17, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1561
    .local v15, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v15}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1565
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v15}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1567
    new-instance v53, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v54, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v55, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v56, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v57, v0

    invoke-direct/range {v53 .. v57}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 1572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v32, v0

    .line 1573
    .local v32, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v33, v0

    .line 1574
    .local v33, "posY":I
    const/4 v8, 0x0

    .line 1582
    .local v8, "canDraw":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_29

    .line 1583
    add-int v53, v33, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_12

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move/from16 v0, v33

    move/from16 v1, v53

    if-lt v0, v1, :cond_28

    .line 1585
    :cond_12
    :goto_a
    const/4 v8, 0x1

    .line 1593
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v53, v0

    if-nez v53, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v53, v0

    if-eqz v53, :cond_3a

    :cond_14
    if-eqz v8, :cond_3a

    .line 1594
    const/16 v27, 0x1

    .line 1596
    .local v27, "isPopupAboveHorizontal":Z
    const/high16 v53, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v29

    .line 1599
    .local v29, "marginForHoverRing":I
    const/4 v9, 0x0

    .line 1600
    .local v9, "containerLeftOnWindow":I
    const/4 v14, 0x0

    .line 1601
    .local v14, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2b

    .line 1603
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move/from16 v0, v32

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v53

    const/16 v54, 0x0

    .line 1602
    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1605
    add-int v53, v32, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    .line 1606
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v54, v0

    .line 1604
    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1617
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 1620
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v53

    move/from16 v0, v33

    move/from16 v1, v53

    if-le v0, v1, :cond_2c

    .line 1621
    const/16 v27, 0x0

    .line 1627
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    if-nez v53, :cond_16

    .line 1628
    new-instance v53, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1630
    const-string/jumbo v53, "SemHoverPopupWindow"

    const-string/jumbo v54, "FingerSemHoverPopupWindow: kdhpoint2"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    move/from16 v55, v0

    invoke-virtual/range {v53 .. v55}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1635
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_18

    .line 1636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v53, v0

    if-nez v53, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2d

    .line 1637
    :cond_17
    const-string/jumbo v53, "SemHoverPopupWindow"

    const-string/jumbo v54, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 1646
    :cond_18
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 1647
    .local v16, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_2e

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    new-instance v54, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1656
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v53

    if-eqz v53, :cond_19

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2f

    .line 1661
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v53

    if-nez v53, :cond_1a

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1665
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v53, v0

    const/16 v54, -0x2

    invoke-virtual/range {v53 .. v54}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v53, v0

    const/16 v54, -0x2

    invoke-virtual/range {v53 .. v54}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1669
    sub-int v53, v9, v32

    invoke-static/range {v53 .. v53}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1670
    .local v11, "containerPaddingLeft":I
    add-int v53, v32, v17

    sub-int v53, v14, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1671
    .local v12, "containerPaddingRight":I
    const/4 v13, 0x0

    .line 1672
    .local v13, "containerPaddingTop":I
    const/4 v10, 0x0

    .line 1673
    .local v10, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v53, v0

    if-eqz v53, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v53, v0

    if-eqz v53, :cond_31

    .line 1674
    if-eqz v27, :cond_30

    .line 1675
    move/from16 v10, v29

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v29

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1706
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_37

    .line 1707
    if-eqz v27, :cond_1b

    .line 1708
    move/from16 v32, v9

    .line 1724
    :cond_1b
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v53, v0

    sub-int v53, v53, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v54, v0

    sub-int v23, v53, v54

    .line 1725
    .local v23, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    sub-int v53, v53, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v54, v0

    sub-int v24, v53, v54

    .line 1736
    .local v24, "hoverPointYonContainer":I
    if-eqz v27, :cond_39

    .line 1739
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v49

    .line 1740
    .local v49, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v49, :cond_1c

    .line 1776
    :cond_1c
    div-int/lit8 v53, v17, 0x2

    add-int v40, v11, v53

    .line 1777
    .local v40, "startx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    move/from16 v53, v0

    sub-int v41, v15, v53

    .line 1778
    .local v41, "starty":I
    move/from16 v20, v23

    .line 1779
    .local v20, "endx":I
    move/from16 v21, v24

    .line 1781
    .local v21, "endy":I
    add-int/lit8 v53, v11, 0xa

    move/from16 v0, v23

    move/from16 v1, v53

    if-ge v0, v1, :cond_1d

    .line 1853
    .end local v9    # "containerLeftOnWindow":I
    .end local v10    # "containerPaddingBottom":I
    .end local v11    # "containerPaddingLeft":I
    .end local v12    # "containerPaddingRight":I
    .end local v13    # "containerPaddingTop":I
    .end local v14    # "containerRightOnWindow":I
    .end local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "endx":I
    .end local v21    # "endy":I
    .end local v23    # "hoverPointXonContainer":I
    .end local v24    # "hoverPointYonContainer":I
    .end local v27    # "isPopupAboveHorizontal":Z
    .end local v29    # "marginForHoverRing":I
    .end local v40    # "startx":I
    .end local v41    # "starty":I
    .end local v49    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1d
    :goto_13
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 1854
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1870
    sget-boolean v53, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    if-eqz v53, :cond_1e

    .line 1871
    mul-int/lit8 v53, v17, 0x1

    div-int/lit8 v53, v53, 0x3

    add-int v30, v32, v53

    .line 1872
    .local v30, "oneThirdX":I
    mul-int/lit8 v53, v17, 0x2

    div-int/lit8 v53, v53, 0x3

    add-int v45, v32, v53

    .line 1873
    .local v45, "twoThirdX":I
    mul-int/lit8 v53, v15, 0x1

    div-int/lit8 v53, v53, 0x3

    add-int v31, v33, v53

    .line 1874
    .local v31, "oneThirdY":I
    mul-int/lit8 v53, v15, 0x2

    div-int/lit8 v53, v53, 0x3

    add-int v46, v33, v53

    .line 1875
    .local v46, "twoThirdY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v30

    if-ge v0, v1, :cond_42

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-le v0, v1, :cond_40

    .line 1877
    const v53, 0x1030514

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 1901
    .end local v30    # "oneThirdX":I
    .end local v31    # "oneThirdY":I
    .end local v45    # "twoThirdX":I
    .end local v46    # "twoThirdY":I
    :cond_1e
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v53, v0

    if-nez v53, :cond_1f

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_1f

    .line 1905
    const-string/jumbo v53, "SemHoverPopupWindow"

    const-string/jumbo v54, "SemHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    .line 1321
    :cond_1f
    return-void

    .line 1440
    .end local v8    # "canDraw":Z
    .end local v15    # "contentHeight":I
    .end local v17    # "contentWidth":I
    .end local v22    # "heightMeasureSpec":I
    .end local v32    # "posX":I
    .end local v33    # "posY":I
    .end local v51    # "widthMeasureSpec":I
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_20
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_e

    goto/16 :goto_6

    .line 1460
    :cond_21
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v54, v0

    sub-int v53, v53, v54

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    .line 1461
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v55, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v56, v0

    sub-int v55, v55, v56

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v56, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v57, v0

    sub-int v56, v56, v57

    .line 1460
    move/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "anchorRect":Landroid/graphics/Rect;
    goto/16 :goto_7

    .line 1466
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_22
    const/16 v53, 0x2

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1467
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1468
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 1470
    if-eqz v26, :cond_23

    .line 1471
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v5, v54

    .line 1472
    const/16 v55, 0x0

    aget v55, v5, v55

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v56

    add-int v55, v55, v56

    .line 1473
    const/16 v56, 0x1

    aget v56, v5, v56

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v57

    add-int v56, v56, v57

    .line 1471
    move/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1483
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :goto_15
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    if-gez v53, :cond_f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    if-gez v53, :cond_f

    .line 1484
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1485
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1486
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1487
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7

    .line 1475
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_23
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v53, 0x0

    aget v53, v5, v53

    const/16 v54, 0x1

    aget v54, v5, v54

    .line 1476
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v55, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v56, v0

    .line 1475
    move/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "anchorRect":Landroid/graphics/Rect;
    goto :goto_15

    .line 1499
    .restart local v35    # "root":Landroid/view/View;
    .restart local v50    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v52    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_24
    const/16 v28, 0x0

    .restart local v28    # "isSystemUiVisible":Z
    goto/16 :goto_8

    .line 1539
    .end local v28    # "isSystemUiVisible":Z
    .end local v35    # "root":Landroid/view/View;
    .end local v50    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v52    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v53, v0

    if-ltz v53, :cond_26

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v53, v0

    .line 1541
    const/high16 v54, 0x40000000    # 2.0f

    .line 1540
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v51

    .line 1547
    .restart local v51    # "widthMeasureSpec":I
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v53, v0

    if-ltz v53, :cond_27

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v53, v0

    .line 1549
    const/high16 v54, 0x40000000    # 2.0f

    .line 1548
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "heightMeasureSpec":I
    goto/16 :goto_9

    .line 1543
    .end local v22    # "heightMeasureSpec":I
    .end local v51    # "widthMeasureSpec":I
    :cond_26
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    .line 1544
    const/high16 v54, -0x80000000

    .line 1543
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v51

    .restart local v51    # "widthMeasureSpec":I
    goto :goto_16

    .line 1551
    :cond_27
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    .line 1552
    const/high16 v54, -0x80000000

    .line 1551
    invoke-static/range {v53 .. v54}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "heightMeasureSpec":I
    goto/16 :goto_9

    .line 1584
    .restart local v8    # "canDraw":Z
    .restart local v15    # "contentHeight":I
    .restart local v17    # "contentWidth":I
    .restart local v32    # "posX":I
    .restart local v33    # "posY":I
    :cond_28
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    add-int v53, v53, v33

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-lt v0, v1, :cond_13

    goto/16 :goto_a

    .line 1587
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_13

    .line 1588
    add-int v53, v33, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_2a

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move/from16 v0, v33

    move/from16 v1, v53

    if-lt v0, v1, :cond_13

    .line 1589
    :cond_2a
    const/4 v8, 0x1

    goto/16 :goto_b

    .line 1607
    .restart local v9    # "containerLeftOnWindow":I
    .restart local v14    # "containerRightOnWindow":I
    .restart local v27    # "isPopupAboveHorizontal":Z
    .restart local v29    # "marginForHoverRing":I
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_15

    .line 1609
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move/from16 v0, v32

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v53

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v54, v0

    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v54, v0

    .line 1608
    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1611
    add-int v53, v32, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    .line 1612
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    .line 1610
    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v53, v0

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v53, v0

    move/from16 v0, v53

    if-le v14, v0, :cond_15

    .line 1614
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    goto/16 :goto_c

    .line 1623
    :cond_2c
    const/16 v27, 0x1

    goto/16 :goto_d

    .line 1640
    :cond_2d
    const-string/jumbo v53, "SemHoverPopupWindow"

    const-string/jumbo v54, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_e

    .line 1651
    .restart local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_2e
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1652
    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_f

    .line 1658
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_10

    .line 1679
    .restart local v10    # "containerPaddingBottom":I
    .restart local v11    # "containerPaddingLeft":I
    .restart local v12    # "containerPaddingRight":I
    .restart local v13    # "containerPaddingTop":I
    :cond_30
    move/from16 v13, v29

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    .line 1681
    const/16 v54, 0x0

    .line 1680
    move-object/from16 v0, v53

    move/from16 v1, v29

    move/from16 v2, v54

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_11

    .line 1684
    :cond_31
    if-eqz v27, :cond_34

    .line 1685
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_33

    .line 1686
    move/from16 v10, v29

    .line 1691
    :cond_32
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v0, v11, v1, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_11

    .line 1687
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_32

    .line 1688
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    add-int v53, v53, v29

    .line 1689
    add-int v54, v33, v15

    .line 1688
    sub-int v10, v53, v54

    goto :goto_17

    .line 1694
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_36

    .line 1695
    move/from16 v13, v29

    .line 1699
    :cond_35
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    .line 1700
    const/16 v54, 0x0

    .line 1699
    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v0, v11, v13, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_11

    .line 1696
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_35

    .line 1697
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    sub-int v53, v53, v29

    sub-int v13, v33, v53

    goto :goto_18

    .line 1714
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1b

    .line 1715
    if-eqz v27, :cond_38

    .line 1716
    move/from16 v32, v9

    .line 1717
    goto/16 :goto_12

    .line 1719
    :cond_38
    move/from16 v32, v9

    .line 1720
    sub-int v33, v33, v13

    goto/16 :goto_12

    .line 1792
    .restart local v23    # "hoverPointXonContainer":I
    .restart local v24    # "hoverPointYonContainer":I
    :cond_39
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v49

    .line 1793
    .restart local v49    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v49, :cond_1d

    goto/16 :goto_13

    .line 1828
    .end local v9    # "containerLeftOnWindow":I
    .end local v10    # "containerPaddingBottom":I
    .end local v11    # "containerPaddingLeft":I
    .end local v12    # "containerPaddingRight":I
    .end local v13    # "containerPaddingTop":I
    .end local v14    # "containerRightOnWindow":I
    .end local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "hoverPointXonContainer":I
    .end local v24    # "hoverPointYonContainer":I
    .end local v27    # "isPopupAboveHorizontal":Z
    .end local v29    # "marginForHoverRing":I
    .end local v49    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v53, v0

    if-eqz v53, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v53, v0

    if-eqz v53, :cond_3c

    .line 1846
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_1d

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1849
    const/16 v53, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_13

    .line 1829
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    if-nez v53, :cond_3d

    .line 1830
    new-instance v53, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 1832
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v53

    if-nez v53, :cond_3f

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1841
    :cond_3e
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v53, v0

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_1d

    .line 1842
    const-string/jumbo v53, "SemHoverPopupWindow"

    const-string/jumbo v54, "computePopupPosition: Call resetTimeout()"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_13

    .line 1834
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3e

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_19

    .line 1878
    .restart local v30    # "oneThirdX":I
    .restart local v31    # "oneThirdY":I
    .restart local v45    # "twoThirdX":I
    .restart local v46    # "twoThirdY":I
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-gt v0, v1, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-lt v0, v1, :cond_41

    .line 1879
    const v53, 0x1030515

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1880
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1881
    const v53, 0x1030516

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1883
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v53, v0

    move/from16 v0, v30

    move/from16 v1, v53

    if-gt v0, v1, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v45

    if-gt v0, v1, :cond_45

    .line 1884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-le v0, v1, :cond_43

    .line 1885
    const v53, 0x1030517

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1886
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-gt v0, v1, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-lt v0, v1, :cond_44

    .line 1887
    const v53, 0x1030518

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1888
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1889
    const v53, 0x1030519

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1891
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v45

    if-le v0, v1, :cond_1e

    .line 1892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-le v0, v1, :cond_46

    .line 1893
    const v53, 0x103051a

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1894
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v46

    if-gt v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-lt v0, v1, :cond_47

    .line 1895
    const v53, 0x103051b

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14

    .line 1896
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v53, v0

    move/from16 v0, v53

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1897
    const v53, 0x103051c

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_14
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 24
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1920
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1921
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1922
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 1923
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 1925
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1926
    .local v9, "posX":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1932
    .local v10, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v7, v0, 0xf0f

    .line 1933
    .local v7, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    const v22, 0xf0f0

    and-int v16, v21, v22

    .line 1935
    .local v16, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050386

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1937
    .local v14, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050387

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1938
    .local v15, "tooltipTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 1940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v9, v21, v22

    .line 1942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v10, v21, v22

    .line 2035
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2037
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2038
    .local v12, "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2039
    .local v17, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 2040
    .local v8, "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v19, v17

    .line 2041
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 2042
    .local v19, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_d

    const/4 v8, 0x1

    .line 2045
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    .line 2047
    .local v13, "statusBarHeight":I
    if-eqz v8, :cond_2

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2050
    :cond_2
    add-int v21, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2052
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2054
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 2086
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_2
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 2090
    .local v20, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2091
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105038b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2093
    .local v6, "fulltextAirviewShiftX":I
    if-gez v9, :cond_11

    .line 2094
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2099
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2100
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2101
    const/4 v9, 0x0

    .line 2260
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v20    # "wm":Landroid/view/WindowManager;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2262
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2263
    .restart local v12    # "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2264
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 2265
    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v19, v17

    .line 2266
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 2267
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_18

    const/4 v8, 0x1

    .line 2270
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    :goto_5
    const/4 v13, 0x0

    .line 2272
    .restart local v13    # "statusBarHeight":I
    if-eqz v8, :cond_7

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2275
    :cond_7
    if-ge v10, v13, :cond_1c

    .line 2278
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 2279
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_19

    .line 2280
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    .line 2282
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2439
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 2440
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1918
    return-void

    .line 1943
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1944
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1945
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    .line 1949
    :cond_a
    sparse-switch v7, :sswitch_data_0

    .line 1991
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1996
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 2000
    sparse-switch v16, :sswitch_data_1

    .line 2022
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 2027
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    goto/16 :goto_0

    .line 1951
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v9, v21, p3

    .line 1952
    goto :goto_7

    .line 1955
    :sswitch_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7

    .line 1959
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1960
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    sub-int v21, v21, p3

    add-int v9, v21, v14

    goto :goto_7

    .line 1962
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    sub-int v9, v21, p3

    goto :goto_7

    .line 1967
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 1968
    goto :goto_7

    .line 1971
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    goto :goto_7

    .line 1975
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v9, v21, p3

    .line 1976
    goto :goto_7

    .line 1979
    :sswitch_6
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 1983
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 1984
    goto :goto_7

    .line 1987
    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v21, v0

    div-int/lit8 v22, p3, 0x2

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 1988
    goto :goto_7

    .line 2002
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2003
    goto :goto_8

    .line 2005
    :sswitch_a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 2008
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    div-int/lit8 v22, p4, 0x2

    sub-int v10, v21, v22

    .line 2009
    goto/16 :goto_8

    .line 2011
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2012
    goto/16 :goto_8

    .line 2014
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 2015
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v10, v21, v15

    .line 2019
    :goto_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_8

    .line 2017
    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    .line 2042
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v12    # "root":Landroid/view/View;
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2059
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2060
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2061
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2064
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2066
    .restart local v13    # "statusBarHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_f

    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2067
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2068
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    goto/16 :goto_2

    .line 2072
    .end local v13    # "statusBarHeight":I
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    add-int v21, v21, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2073
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2074
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    goto/16 :goto_2

    .line 2095
    .restart local v6    # "fulltextAirviewShiftX":I
    .restart local v20    # "wm":Landroid/view/WindowManager;
    :cond_11
    add-int v21, v9, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 2096
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, p3

    sub-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_3

    .line 2104
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v20    # "wm":Landroid/view/WindowManager;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 2106
    .restart local v20    # "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2107
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2108
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    if-gtz v21, :cond_14

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105038b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2110
    .restart local v6    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2112
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 2114
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 2115
    const/4 v9, 0x0

    .line 2118
    :cond_13
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2121
    .local v18, "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2126
    .local v2, "cocktailRect":Landroid/graphics/Rect;
    goto/16 :goto_4

    .line 2140
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    add-int v21, v21, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_16

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105038b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2144
    .restart local v6    # "fulltextAirviewShiftX":I
    :try_start_0
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2146
    .restart local v18    # "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2155
    .restart local v2    # "cocktailRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2156
    .local v3, "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2157
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    add-int v21, v21, p3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_15

    .line 2158
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    sub-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2160
    :cond_15
    add-int v21, v9, p3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v3    # "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2166
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2167
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2162
    :catch_0
    move-exception v5

    .line 2163
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "SemHoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2171
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_16
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-lez v21, :cond_5

    .line 2172
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2175
    .restart local v18    # "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2193
    .restart local v2    # "cocktailRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105038b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2194
    .restart local v6    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move/from16 v1, p3

    if-ge v0, v1, :cond_17

    .line 2195
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_4

    .line 2197
    :cond_17
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_4

    .line 2267
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    .end local v20    # "wm":Landroid/view/WindowManager;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v12    # "root":Landroid/view/View;
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 2284
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "statusBarHeight":I
    :cond_19
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    .line 2285
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2287
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2291
    :cond_1a
    move v10, v13

    .line 2292
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2293
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2298
    :cond_1b
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    .line 2301
    :cond_1c
    add-int v21, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    .line 2303
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 2304
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    .line 2305
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2308
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2310
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2311
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2315
    :cond_1d
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    goto/16 :goto_6

    .line 2320
    :cond_1e
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2321
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2322
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2325
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2332
    .restart local v12    # "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2333
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 2335
    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_20

    move-object/from16 v19, v17

    .line 2336
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 2337
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_23

    const/4 v8, 0x1

    .line 2340
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    :goto_b
    const/4 v13, 0x0

    .line 2341
    .restart local v13    # "statusBarHeight":I
    const/4 v11, 0x0

    .line 2342
    .local v11, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2343
    if-eqz v8, :cond_21

    .line 2344
    move v11, v13

    .line 2347
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2348
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    move/from16 v0, v21

    if-ge v0, v13, :cond_29

    .line 2350
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    .line 2351
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_24

    .line 2352
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2353
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_22

    .line 2354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    .line 2356
    :cond_22
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2337
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "realStatusBarHeight":I
    .end local v13    # "statusBarHeight":I
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 2358
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v11    # "realStatusBarHeight":I
    .restart local v13    # "statusBarHeight":I
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_25

    .line 2359
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2361
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2364
    :cond_25
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v21, v21, p4

    sub-int v21, v21, v11

    if-lez v21, :cond_26

    .line 2366
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2367
    :cond_26
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    sub-int v21, v21, p4

    if-lez v21, :cond_27

    .line 2369
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2370
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2373
    :cond_27
    move v10, v13

    .line 2374
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2375
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2379
    :cond_28
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    .line 2382
    :cond_29
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2e

    .line 2383
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    .line 2384
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_2b

    .line 2385
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_2a

    .line 2386
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2a

    .line 2387
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2389
    :cond_2a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2392
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2394
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2395
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2399
    :cond_2b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    add-int v21, v21, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 2402
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2404
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2406
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2407
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2412
    :cond_2c
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_2d

    .line 2414
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p4

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    .line 2416
    :cond_2d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v21, v21, p4

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    .line 2420
    :cond_2e
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_30

    .line 2421
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2422
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2423
    if-ge v10, v13, :cond_2f

    .line 2424
    add-int v21, v10, p4

    add-int v21, v21, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2f

    .line 2425
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    .line 2426
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2427
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2430
    :cond_2f
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2432
    :cond_30
    if-ge v10, v13, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_8

    .line 2433
    move v10, v13

    goto/16 :goto_6

    .line 1949
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 2000
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2997
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 3000
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3001
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3002
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 3003
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 3004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 3007
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 3010
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3011
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 2994
    :cond_2
    return-void

    .line 2997
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 3052
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 3053
    .local v0, "hashCode":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3055
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    .line 3056
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    .line 3055
    or-int/2addr v2, v3

    .line 3057
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    .line 3055
    or-int/2addr v2, v3

    .line 3058
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    .line 3055
    or-int/2addr v2, v3

    .line 3059
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    .line 3055
    or-int/2addr v2, v3

    .line 3060
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    .line 3055
    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 3062
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 3063
    .local v1, "location":[I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3064
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 3067
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initCoverManager()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 541
    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 542
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 543
    const-string/jumbo v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    return-void
.end method

.method private isFreeformMode()Z
    .locals 6

    .prologue
    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "isFreeformMode":Z
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 798
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 799
    .local v0, "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 801
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 803
    .local v2, "nowDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v5, :cond_1

    .line 804
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 806
    :goto_0
    const/4 v1, 0x1

    .line 808
    :cond_0
    return v1

    .line 805
    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private isViewCoverClose()Z
    .locals 5

    .prologue
    .line 781
    const/4 v2, 0x1

    .line 782
    .local v2, "isCoverOpen":Z
    const/4 v0, 0x0

    .line 784
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 792
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "isCoverOpen":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 789
    .restart local v2    # "isCoverOpen":Z
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemHoverPopupWindow"

    const-string/jumbo v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 792
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isCoverOpen":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 8

    .prologue
    const v7, 0x7010001

    const/4 v6, 0x0

    .line 1286
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1288
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1290
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1285
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1294
    .local v1, "fontScale":F
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 1295
    :cond_1
    :goto_1
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    .line 1296
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 1299
    :cond_2
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v4, :cond_7

    .line 1300
    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1301
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1305
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_2
    const v4, 0x1090077

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1306
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 1307
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 1309
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1294
    :cond_6
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    goto :goto_1

    .line 1303
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_2
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const v1, 0xc369

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1036
    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v0, 0x0

    .line 3033
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 3034
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 3035
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 3036
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 3033
    :cond_0
    return v0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3071
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 3072
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3078
    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "gts3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3079
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3070
    :cond_2
    :goto_0
    return-void

    .line 3081
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 564
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    .line 565
    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 574
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    return-void

    .line 566
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    .line 567
    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 569
    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1231
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    packed-switch v4, :pswitch_data_0

    .line 1262
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1267
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v4, :cond_1

    .line 1268
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    .line 1224
    :cond_1
    return-void

    .line 1233
    :pswitch_0
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1236
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 1239
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 1242
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1243
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    if-eqz v4, :cond_0

    .line 1246
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v4, :cond_4

    .line 1247
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1248
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1253
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    :try_start_0
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1254
    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "ie":Landroid/view/InflateException;
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1250
    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1

    .line 1231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1142
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1146
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1155
    return-void

    .line 1157
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    .line 1158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1161
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 1163
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1169
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    .line 1171
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1139
    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    .line 2474
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 2476
    return-void

    .line 2480
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 2482
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    .line 2484
    return-void

    .line 2488
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    .line 2489
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2506
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2508
    return-void

    .line 2490
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_3

    .line 2491
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 2503
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 2512
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2513
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2473
    :goto_1
    return-void

    .line 2516
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 2519
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2520
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 2519
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    .line 2522
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 3045
    if-nez p2, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 3048
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1185
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 1186
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1187
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1188
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1189
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1191
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1211
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1212
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1218
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2979
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    .line 2980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 2983
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    .line 2985
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 2986
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 2987
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 2988
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 2977
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    .line 2727
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    .line 2717
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    .line 2737
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 476
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 477
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    .line 478
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 480
    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 481
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 482
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 483
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 484
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 485
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 486
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 487
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 488
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 489
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 490
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 491
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 492
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 494
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 495
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 496
    const v1, 0x1030513

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 498
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 500
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 502
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    .line 505
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 506
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 507
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 508
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 509
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 510
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 511
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 512
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 513
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 514
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 516
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    .line 517
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 518
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 519
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 520
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 521
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 522
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 523
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 524
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 526
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 527
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x166

    const v2, 0x1080360

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    .line 528
    const/16 v1, 0x165

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    .line 529
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 531
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 532
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 533
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 534
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 535
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    .line 475
    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 709
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 711
    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 712
    if-eq p1, v1, :cond_5

    .line 714
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 715
    const-string/jumbo v4, "finger_air_view_information_preview"

    .line 714
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 716
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 717
    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    .line 716
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    .line 716
    if-eqz v3, :cond_1

    .line 718
    return v2

    .end local v0    # "isFingerHoveringOn":Z
    :cond_0
    move v0, v2

    .line 709
    goto :goto_0

    .line 721
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 722
    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    .line 721
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 723
    return v1

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_5

    .line 726
    return v1

    .line 731
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 732
    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    .line 731
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    .line 731
    if-eqz v3, :cond_4

    .line 733
    return v1

    .line 735
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 736
    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    .line 735
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    .line 735
    if-eqz v3, :cond_5

    .line 737
    return v1

    .line 742
    :cond_5
    return v2
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 603
    const/4 v0, 0x1

    .line 605
    .local v0, "ret":Z
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 606
    const/4 v0, 0x0

    .line 616
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 608
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 611
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 612
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 614
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 672
    .local v0, "ret":Z
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 673
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 680
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    return v0

    .line 674
    .restart local v0    # "ret":Z
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 675
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 676
    .local v0, "ret":Z
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled(I)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 4

    .prologue
    .line 773
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 774
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v0, 0x0

    .line 775
    .local v0, "isLockState":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 776
    .local v0, "isLockState":Z
    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 750
    .local v0, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    return v1

    .line 754
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 698
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    const/4 v5, -0x3

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 699
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 700
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_0
    move v0, v2

    .line 698
    goto :goto_0

    .line 702
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_1
    return v2
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 927
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "ret":Z
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "true"

    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    :cond_1
    const/4 v0, 0x1

    .line 691
    :cond_2
    return v0
.end method

.method protected isUspFeature()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    .line 1277
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2747
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2748
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 2749
    .local v19, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 2754
    .local v20, "y":F
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_3

    .line 2756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2757
    .local v16, "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    .line 2759
    const/16 v21, 0x1

    return v21

    .line 2763
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2764
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2766
    .local v11, "isPointInValidHoverArea":Z
    if-eqz v11, :cond_2

    .line 2767
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2957
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_1
    :goto_0
    const/16 v21, 0x0

    return v21

    .line 2769
    .restart local v11    # "isPointInValidHoverArea":Z
    .restart local v16    # "timeDealy":J
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    .line 2772
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_3
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_16

    .line 2773
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 2774
    .local v13, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 2784
    .local v14, "rawY":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    .line 2786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 2787
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2789
    .restart local v11    # "isPointInValidHoverArea":Z
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 2805
    :cond_4
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 2816
    .end local v11    # "isPointInValidHoverArea":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 2819
    .local v12, "popupView":Landroid/view/View;
    instance-of v0, v12, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object v6, v12

    .line 2820
    check-cast v6, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 2825
    .local v6, "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 2828
    .local v9, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v10, v21, v9

    .line 2844
    .local v10, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .line 2862
    .end local v9    # "infopickerLeftLimit":I
    .end local v10    # "infopickerRightLimit":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2863
    .local v5, "anchorView":Landroid/view/View;
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    .line 2864
    .local v18, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v18, :cond_b

    .line 2865
    new-instance v15, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2866
    .local v15, "scaleFactor":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2867
    .local v8, "fPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_8

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_12

    .line 2868
    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2876
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 2878
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2880
    :cond_a
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 2881
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 2884
    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2883
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 2891
    .end local v7    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_13

    .line 2897
    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 2920
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 2921
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    .line 2926
    :cond_d
    const/16 v21, 0x1

    return v21

    .line 2793
    .restart local v11    # "isPointInValidHoverArea":Z
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2794
    .restart local v16    # "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_f

    .line 2796
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2797
    const/16 v21, 0x1

    return v21

    .line 2802
    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2803
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 2804
    const/16 v21, 0x1

    return v21

    .line 2809
    .end local v16    # "timeDealy":J
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2810
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 2811
    const/16 v21, 0x1

    return v21

    .line 2862
    .end local v11    # "isPointInValidHoverArea":Z
    .restart local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .restart local v12    # "popupView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 2887
    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v8    # "fPos":Landroid/graphics/PointF;
    .restart local v15    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    .line 2886
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_2

    .line 2905
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 2909
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 2910
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 2912
    :cond_15
    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_3

    .line 2927
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v13    # "rawX":I
    .end local v14    # "rawY":I
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_16
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    .line 2939
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 2948
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2949
    const/16 v21, 0x1

    return v21
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$6;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    .line 2971
    int-to-long v2, p1

    .line 2965
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2963
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 2539
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 2540
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2538
    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 881
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 893
    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 891
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 904
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 819
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2619
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 2620
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 2618
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    .line 2627
    if-eqz p2, :cond_0

    .line 2628
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 2626
    :goto_0
    return-void

    .line 2631
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eqz v0, :cond_1

    .line 2632
    return-void

    .line 2634
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2575
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 2576
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 2574
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2583
    if-eqz p2, :cond_2

    .line 2584
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2586
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_1

    .line 2587
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2590
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2591
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2595
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eqz v0, :cond_3

    .line 2596
    return-void

    .line 2598
    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2600
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_4

    .line 2601
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2604
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2605
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 2683
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 969
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 968
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2565
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2564
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 2695
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    .line 2694
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 2706
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    .line 2707
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    .line 2705
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 937
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 936
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 951
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 952
    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 953
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 954
    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 956
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-eqz v0, :cond_2

    .line 958
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 949
    :cond_1
    return-void

    .line 957
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 869
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 765
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1013
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 1014
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 1012
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2674
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 2673
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2646
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 2647
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 2645
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    .line 2655
    if-eqz p2, :cond_0

    .line 2656
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 2654
    :goto_0
    return-void

    .line 2659
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eqz v0, :cond_1

    .line 2660
    return-void

    .line 2662
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 554
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 555
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 556
    const/16 v0, 0x5153

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 557
    const v0, 0x1030513

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 553
    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    .line 632
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    .line 649
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 979
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 980
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 978
    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 858
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    .line 999
    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    .line 990
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    .line 989
    return-void
.end method

.method public setTouchable(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    .line 2552
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 2553
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2554
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2551
    :cond_0
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1055
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1056
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v2

    .line 1058
    .local v2, "type":I
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v2, v5, :cond_0

    .line 1059
    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 1060
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 1064
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v5, :cond_2

    .line 1065
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v5}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1066
    return-void

    .line 1055
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v2    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1071
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v2    # "type":I
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v5, :cond_3

    if-nez v2, :cond_4

    .line 1075
    :cond_3
    return-void

    .line 1071
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_3

    .line 1072
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1073
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1073
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1080
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1081
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_7

    move-object v4, v3

    .line 1082
    nop

    nop

    .line 1083
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x8ac

    if-eq v5, v6, :cond_6

    .line 1084
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x62

    if-ne v5, v6, :cond_7

    .line 1085
    :cond_6
    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1091
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    .line 1094
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v5, :cond_8

    .line 1095
    invoke-virtual {p0, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1100
    :cond_8
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    if-ne v5, v10, :cond_9

    .line 1101
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1102
    const-string/jumbo v6, "finger_air_view_sound_and_haptic_feedback"

    .line 1101
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_9

    .line 1103
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 1107
    :cond_9
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-ne v5, v10, :cond_a

    .line 1108
    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$4;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1115
    :cond_a
    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$5;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1124
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1125
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 1050
    return-void
.end method

.method protected showPenPointEffect(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3019
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3020
    if-eqz p1, :cond_1

    .line 3022
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 3023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 3018
    :cond_0
    :goto_0
    return-void

    .line 3024
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_0

    .line 3026
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 3027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2462
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-eqz v0, :cond_1

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 2461
    :goto_1
    return-void

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2464
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 2466
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method
