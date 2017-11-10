.class public abstract Lcom/samsung/android/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLView$TouchListener;,
        Lcom/samsung/android/glview/GLView$OrientationChangeListener;,
        Lcom/samsung/android/glview/GLView$LongClickListener;,
        Lcom/samsung/android/glview/GLView$KeyListener;,
        Lcom/samsung/android/glview/GLView$FocusListener;,
        Lcom/samsung/android/glview/GLView$DragListener;,
        Lcom/samsung/android/glview/GLView$ClickListener;,
        Lcom/samsung/android/glview/GLView$AnimationEventListener;
    }
.end annotation


# static fields
.field public static final ALIGN_END:I = 0x3

.field public static final ALIGN_MIDDLE:I = 0x2

.field public static final ALIGN_START:I = 0x1

.field private static final ANIMATION_PENDING_TIMEOUT:I = 0x64

.field public static final CLICKABLE:I = 0x4000

.field private static final DEFAULT_REPEAT_CLICK_INTERVAL:I = 0x64

.field public static final DIM_ALPHA_VALUE:F = 0.45f

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HOVER_DOWN:I = 0x52

.field public static final HOVER_LEFT:I = 0x31

.field public static final HOVER_RIGHT:I = 0x62

.field public static final HOVER_UP:I = 0x41

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field private static final LONG_CLICK_TIME:I = 0x1f4

.field private static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field protected mAlpha:F

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field protected mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/samsung/android/glview/GLView;

.field private mBackgroundResId:I

.field protected mBaseDepth:F

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field protected mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field public mContentDescription:Ljava/lang/String;

.field private mContinuousDrawMode:Z

.field protected mDefaultOrientation:I

.field private mDimmed:Z

.field protected mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

.field private mDragSensitivity:I

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

.field private mFocused:Z

.field private mForcedClipping:Z

.field protected final mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mIsTouchCanceled:Z

.field protected mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field private mLoaded:Z

.field private mLoading:Z

.field protected mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

.field private mLongClickable:Z

.field protected mManualClip:Z

.field private mManualClipRect:Landroid/graphics/Rect;

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mObjectTag:Ljava/lang/String;

.field private mOldAlpha:F

.field private mOrientation:I

.field private mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

.field private mOriginalClipRect:Landroid/graphics/Rect;

.field protected mOriginalDepth:F

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/samsung/android/glview/GLView;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field private mParentViewId:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRepeatClickInterval:I

.field private mRepeatClickWhenLongClicked:Z

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field protected mRotateDegree:I

.field private mRotationMatrix:[F

.field protected mScaleChanged:Z

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mShaderParameter:F

.field protected mShaderStep:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/samsung/android/glview/GLView;

.field public mTitle:Ljava/lang/String;

.field private mTop:F

.field protected mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mTranslationMatrix:[F

.field private mUpdateMatrixAfterAnimation:Z

.field private mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private mZCoordinate:F

.field private final repeatClick:Ljava/lang/Runnable;

.field private final setDragging:Ljava/lang/Runnable;

.field private final setLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 7

    const/4 v6, -0x1

    const/16 v5, 0x10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFF)V
    .locals 7

    const/4 v6, -0x1

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    iput p4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput p4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput p4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 7

    const/16 v3, 0x10

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    invoke-virtual {p0, v6, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    iput p6, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformScreenCoordinates(IIII)V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method


# virtual methods
.method public declared-synchronized addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBypassTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 0

    return-void
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 0

    return-void
.end method

.method public final bringToFront()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    return-void
.end method

.method public final cancelAnimation()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method protected final clip()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    new-array v2, v4, [F

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v7

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    aget v5, v0, v3

    aget v6, v0, v7

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v5

    sub-int/2addr v4, v5

    aget v3, v0, v3

    aget v5, v0, v7

    invoke-static {p1, p2, v4, v3, v5}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0
.end method

.method public final declared-synchronized draw([FLandroid/graphics/Rect;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    const/4 v4, 0x4

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$5;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    invoke-static {v1, p1, v0}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$4;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    goto :goto_1

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onDraw()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public dumpViewHierarchy(I)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v2, "| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v0, v7, v9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v1, v7, v9

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v2, v7, v9

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v3, v7, v9

    sub-float v7, v2, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sparse-switch p2, :sswitch_data_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    cmpl-float v7, v2, v0

    if-lez v7, :cond_1

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move-object v5, p0

    goto :goto_0

    :sswitch_1
    cmpg-float v7, v2, v0

    if-gez v7, :cond_1

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move-object v5, p0

    goto :goto_0

    :sswitch_2
    cmpl-float v7, v3, v1

    if-lez v7, :cond_1

    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    move-object v5, p0

    goto :goto_0

    :sswitch_3
    cmpg-float v7, v3, v1

    if-gez v7, :cond_1

    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    move-object v5, p0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v3, :cond_0

    move-object p0, v2

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v3, :cond_1

    move-object p0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v3, v5

    packed-switch p1, :pswitch_data_0

    :cond_2
    move-object p0, v2

    goto :goto_0

    :pswitch_0
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    :pswitch_1
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    :pswitch_2
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    :pswitch_3
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v7

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v7

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v3, v5, v7

    sparse-switch p2, :sswitch_data_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_0
    cmpg-float v5, v0, v2

    if-gez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, p0

    goto :goto_0

    :sswitch_1
    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, p0

    goto :goto_0

    :sswitch_2
    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, p0

    goto :goto_0

    :sswitch_3
    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, p0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getAlpha()F
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3ee66666    # 0.45f

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_0

    :goto_0
    mul-float/2addr v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_2

    :goto_2
    mul-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    return v0
.end method

.method public getClickListener()Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaTop()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/samsung/android/glview/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentDepth()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentLeft()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method public getFocusListener()Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method public final getHeight()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalFocusParent()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    return-object v2

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    return v0
.end method

.method public getLongClickListener()Lcom/samsung/android/glview/GLView$LongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    return-object v0
.end method

.method protected getMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutY()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutZ()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    goto :goto_0
.end method

.method public getOriginalClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getParentForcedClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParentHAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    return v0
.end method

.method public getRotateDegree()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    goto :goto_0
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized isClipped()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClippingForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    return v0
.end method

.method public isDim()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    return v0
.end method

.method public isHoverSwipeEvent(I)Z
    .locals 1

    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method public isParentClippingForced()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v0

    goto :goto_0
.end method

.method public isParentRotatable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final load()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLoad()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    move v0, v1

    goto :goto_0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final mapPoint([FFF)V
    .locals 7

    const/4 v3, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p3, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    if-nez v10, :cond_0

    const/4 v2, 0x0

    aput p2, p1, v2

    const/4 v2, 0x1

    aput p3, p1, v2

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v9

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    const/4 v2, 0x4

    new-array v8, v2, [F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v2, 0x4

    new-array v5, v2, [F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    const/4 v2, 0x4

    new-array v1, v2, [F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final moveBaseDepthLayout(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveBaseDepthLayout(FZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public final moveBaseLayout(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveBaseLayoutAbsolute(FF)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveBaseLayoutAbsolute(FFZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    if-eqz p3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public moveDepthLayout(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public moveDepthLayoutAbsolute(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public moveLayout(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveLayoutAbsolute(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final moveLayoutAbsolute(FFZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method protected onAlphaUpdated()V
    .locals 0

    return-void
.end method

.method protected onDepthUpdated()V
    .locals 0

    return-void
.end method

.method protected abstract onDraw()V
.end method

.method public onFocusStatusChanged(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    :cond_1
    return-void

    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverIndicatorColorChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onHoverStatusChanged(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move v8, p1

    if-nez v8, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, v2, :cond_5

    const/4 v8, 0x4

    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    :cond_3
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-nez v1, :cond_1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshClipRect()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/glview/GLView;->transformScreenCoordinates(IIII)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-gt v1, v2, :cond_0

    if-gt v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0

    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    if-nez p2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->isHoverSwipeEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    :goto_0
    move v2, v3

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/glview/GLContext;->onFocusChanged(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, p1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :sswitch_0
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    :sswitch_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, v6, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_3

    :cond_6
    move v2, v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onReset()V

    return-void
.end method

.method public final resetBaseDepth()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public final resetBaseLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public resetClipRect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    return-void
.end method

.method public final resetDepth()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method protected resetDrag()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public resetNextFocusId()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return-void
.end method

.method public final resetScale()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    return-void
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTranslate()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public declared-synchronized rotateDegree(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final scale(FF)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v5

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    neg-float v2, v2

    aget v3, v0, v5

    neg-float v3, v3

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    goto :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isEnableAccessibilityNode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    :cond_0
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    return-void
.end method

.method public setAsyncLoad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    return-void
.end method

.method public setBackground(I)Z
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAlpha(F)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBypassTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    return-void
.end method

.method public setCenterPivot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setClipping(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    return-void
.end method

.method public final setContinuousDrawMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    return-void
.end method

.method public final setDefaultOrientation(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method

.method public setDim(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    return-void
.end method

.method public setDragSensitivity(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForcedClipping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    return-void
.end method

.method public setHeight(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setInternalFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    return-void
.end method

.method public final setLeftTop(IFFZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method public setLongClickListener(Lcom/samsung/android/glview/GLView$LongClickListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusForwardId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    return-void
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return-void
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNinePatchBackground(I)Z
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNinePatchBackground(II)Z
    .locals 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$OrientationChangeListener;->onOrientationChanged(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_1
    return-void
.end method

.method public final setParentHAlign(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return-void
.end method

.method public setRotatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    return-void
.end method

.method public setRotateAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    return-void
.end method

.method public setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0

    return-void
.end method

.method public setShaderStep(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    return-void
.end method

.method public setSize(FF)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    return-void
.end method

.method public final setTag(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    return-void
.end method

.method public abstract setTint(I)V
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    :cond_1
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public final startAnimation()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    const/16 v6, 0x1f4

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_2
    move v0, v7

    :goto_3
    return v0

    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v6, 0x12c

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    move v0, v7

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/glview/GLView$DragListener;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    if-eqz v6, :cond_1

    move v0, v7

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_e
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->sendAccessibilityEvent()V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    if-eqz v0, :cond_16

    move v0, v7

    goto/16 :goto_3

    :cond_16
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final translate(FF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translate(FFF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    cmpl-float v2, p3, v5

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFFZ)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    if-eqz p4, :cond_2

    cmpl-float v2, p3, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_2
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    if-eqz p3, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translateAbsolute(FF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_2

    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public final translateAbsolute(FFF)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_3

    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFFZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_4

    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    if-eqz p4, :cond_2

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_2
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_3

    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    if-eqz p3, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public updateAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateScaleMatrix()V

    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    const/high16 v3, 0x40000000    # 2.0f

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x2

    new-array v6, v0, [F

    const/4 v0, 0x2

    new-array v8, v0, [F

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateScaleMatrix()V
    .locals 8

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v6

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    neg-float v2, v2

    aget v3, v0, v6

    neg-float v3, v3

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    return-void
.end method

.method protected updateSize(FF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->updateSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    return-void
.end method
