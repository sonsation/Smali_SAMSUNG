.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$1;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_FOCUSED_ID_TAG:Ljava/lang/String; = "android:accessibilityFocusedViewId"

.field private static final ACCESSIBILITY_FOCUSED_VIRTUAL_ID_TAG:Ljava/lang/String; = "android:accessibilityFocusedVirtualViewId"

.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field mBackgroundFallbackResource:I

.field mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field mContentParent:Landroid/view/ViewGroup;

.field private mContentParentExplicitlySet:Z

.field private mContentScene:Landroid/transition/Scene;

.field mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private mDecor:Lcom/android/internal/policy/DecorView;

.field private mDecorCaptionShade:I

.field mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field mDefaultNavigationBarColor:I

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForceDecorInstall:Z

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mIsTranslucent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mLoadElevation:Z

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field mNavigationBarColor:I

.field mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field mStatusBarColor:I

.field private mSupportsPictureInPicture:Z

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mUseDecorContext:Z

.field private mVolumeControlStreamType:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 329
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 332
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 167
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 168
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 251
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 252
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 262
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 264
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 265
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 266
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 267
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 270
    const v0, -0xa0a0b

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 272
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 274
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 276
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 282
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 288
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 292
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 304
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 305
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 306
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 307
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 308
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 309
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 310
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 311
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 314
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 320
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 333
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 343
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 344
    if-eqz p2, :cond_0

    .line 345
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 346
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 347
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    const-string/jumbo v3, "force_resizable_activities"

    .line 356
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 358
    .local v0, "forceResizable":Z
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 359
    const-string/jumbo v2, "android.software.picture_in_picture"

    .line 358
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 339
    return-void

    :cond_2
    move v1, v2

    .line 358
    goto :goto_0
.end method

.method private adjustVolumeControlStreamTypeForKnox(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 1910
    move v1, p1

    .line 1912
    .local v1, "ret":I
    invoke-static {}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v0

    .line 1913
    .local v0, "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeControlStream()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1928
    :cond_0
    return p1

    .line 1916
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1918
    :pswitch_1
    const/4 v2, 0x2

    return v2

    .line 1920
    :pswitch_2
    const/4 v2, 0x3

    return v2

    .line 1922
    :pswitch_3
    const/4 v2, 0x5

    return v2

    .line 1914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private adjustVolumeForRotation(I)I
    .locals 7
    .param p1, "val"    # I

    .prologue
    const/4 v6, 0x2

    .line 1886
    move v1, p1

    .line 1888
    .local v1, "ret":I
    invoke-static {}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v0

    .line 1889
    .local v0, "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeButtonRotationState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1890
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1891
    .local v3, "windowService":Landroid/view/WindowManager;
    if-eqz v3, :cond_1

    .line 1892
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1893
    .local v2, "rot":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    .line 1894
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-ne v2, v6, :cond_1

    .line 1895
    :cond_0
    mul-int/lit8 v1, p1, -0x1

    .line 1905
    .end local v2    # "rot":I
    .end local v3    # "windowService":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    return v1

    .line 1898
    .restart local v2    # "rot":I
    .restart local v3    # "windowService":Landroid/view/WindowManager;
    :cond_2
    if-eq v2, v6, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1899
    :cond_3
    mul-int/lit8 v1, p1, -0x1

    goto :goto_0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3329
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3330
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    .line 3331
    return-void

    .line 3334
    :cond_0
    if-nez p3, :cond_2

    .line 3336
    if-nez p2, :cond_1

    .line 3337
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 3338
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 3342
    :cond_1
    if-eqz p2, :cond_2

    .line 3344
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3349
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_5

    .line 3352
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3353
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3328
    :cond_4
    return-void

    .line 3350
    :cond_5
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 782
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1184
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1181
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1193
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1192
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 3242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3243
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3245
    :cond_1
    const v0, 0x102047d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3246
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 3247
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3249
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3050
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 3051
    if-nez p2, :cond_0

    .line 3052
    return-object v5

    .line 3054
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3058
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-gt v3, p1, :cond_4

    .line 3059
    :cond_2
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3060
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    .line 3061
    array-length v3, v0

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3063
    :cond_3
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3066
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v2, v0, p1

    .line 3067
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_5

    .line 3068
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    .line 3070
    :cond_5
    return-object v2
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3254
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 3256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3257
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3259
    :cond_1
    const v0, 0x102047e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3260
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 3261
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3263
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2040
    const-string/jumbo v1, "keyguard"

    .line 2039
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3204
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3206
    :cond_1
    const v0, 0x1020042

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    .line 1416
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneWindow"

    const-string/jumbo v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    const/16 v1, 0x51

    return v1
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3097
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 3098
    if-nez p2, :cond_0

    .line 3099
    return-object v5

    .line 3101
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3105
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-gt v3, p1, :cond_4

    .line 3106
    :cond_2
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3107
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    .line 3108
    array-length v3, v0

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3110
    :cond_3
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3113
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v2, v0, p1

    .line 3114
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_5

    .line 3115
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_0
    aput-object v2, v0, p1

    .line 3119
    :cond_5
    return-object v2

    .line 3117
    :cond_6
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3268
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3271
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3273
    :cond_1
    const v0, 0x1020044

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 3023
    if-eq p1, p2, :cond_0

    .line 3024
    return-object p1

    .line 3026
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3027
    .local v2, "transitionId":I
    move-object v1, p2

    .line 3028
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 3029
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 3030
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 3031
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 3032
    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3033
    const/4 v1, 0x0

    .line 3036
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v1
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .prologue
    .line 1839
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1841
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1842
    return-object v0

    .line 1845
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1763
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1764
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1765
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    .line 1766
    if-eqz p2, :cond_0

    .line 1767
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1768
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1769
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1771
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1772
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1773
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1774
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1761
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 24

    .prologue
    .line 2845
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 2847
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2856
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    if-nez v19, :cond_13

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/DecorView;->makeOptionalFitsSystemWindows()V

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    .line 2863
    const v20, 0x102047f

    .line 2862
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/DecorContentParent;

    .line 2865
    .local v9, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v9, :cond_18

    .line 2866
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    if-nez v19, :cond_1

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2872
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v14

    .line 2873
    .local v14, "localFeatures":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 2874
    const/16 v19, 0x1

    shl-int v19, v19, v12

    and-int v19, v19, v14

    if-eqz v19, :cond_2

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2873
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2854
    .end local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .end local v12    # "i":I
    .end local v14    # "localFeatures":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto/16 :goto_0

    .line 2879
    .restart local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v12    # "i":I
    .restart local v14    # "localFeatures":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_14

    .line 2882
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 2884
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_6

    .line 2885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2890
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_16

    .line 2891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 2900
    :cond_7
    :goto_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v16

    .line 2901
    .local v16, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v19

    if-nez v19, :cond_9

    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 2921
    .end local v12    # "i":I
    .end local v14    # "localFeatures":I
    .end local v16    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    .line 2927
    :cond_a
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 2929
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2930
    const/16 v20, 0x1b

    .line 2931
    const/16 v21, 0x0

    .line 2929
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 2932
    .local v18, "transitionRes":I
    if-eqz v18, :cond_1b

    .line 2933
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v13

    .line 2935
    .local v13, "inflater":Landroid/transition/TransitionInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    .line 2934
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 2941
    .end local v13    # "inflater":Landroid/transition/TransitionInflater;
    .end local v18    # "transitionRes":I
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 2942
    const/16 v21, 0x1c

    .line 2941
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2944
    const/16 v21, 0x28

    .line 2943
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 2946
    const/16 v21, 0x1d

    .line 2945
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2948
    const/16 v21, 0x29

    .line 2947
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 2950
    const/16 v21, 0x1e

    .line 2949
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    .line 2952
    sget-object v20, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2953
    const/16 v21, 0x2a

    .line 2951
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 2955
    const/16 v21, 0x1f

    .line 2954
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    move-object/from16 v19, v0

    .line 2957
    sget-object v20, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2958
    const/16 v21, 0x2b

    .line 2956
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 2960
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2961
    const/16 v20, 0x21

    const/16 v21, 0x1

    .line 2960
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2963
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    .line 2964
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2965
    const/16 v20, 0x20

    const/16 v21, 0x1

    .line 2964
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2967
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gez v19, :cond_e

    .line 2968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2969
    const/16 v20, 0x25

    .line 2970
    const/16 v21, 0x12c

    .line 2968
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 2972
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2974
    const/16 v20, 0x2c

    const/16 v21, 0x1

    .line 2973
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 2978
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 2979
    .local v7, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 2981
    .local v8, "coverMode":I
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 2982
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    .line 2981
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2983
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_10

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 2984
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.android.sdk.cover.MODE"

    .line 2985
    const/16 v21, 0x0

    .line 2984
    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 2990
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_10
    :goto_6
    if-nez v8, :cond_12

    .line 2991
    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v19, v0

    if-nez v19, :cond_11

    instance-of v0, v7, Landroid/content/ContextWrapper;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 2992
    check-cast v7, Landroid/content/ContextWrapper;

    .end local v7    # "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 2994
    .restart local v7    # "context":Landroid/content/Context;
    :cond_11
    if-eqz v7, :cond_12

    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 2996
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 2998
    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2999
    const/16 v21, 0x80

    .line 2996
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3000
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_12

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 3001
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.android.sdk.cover.MODE"

    .line 3002
    const/16 v21, 0x0

    .line 3001
    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 3003
    .local v6, "cm":I
    if-eqz v6, :cond_12

    .line 3004
    move v8, v6

    .line 3014
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "cm":I
    :cond_12
    :goto_7
    if-eqz v8, :cond_13

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3016
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v15, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2844
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "coverMode":I
    .end local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .end local v15    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    return-void

    .line 2883
    .restart local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v12    # "i":I
    .restart local v14    # "localFeatures":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    goto/16 :goto_2

    .line 2886
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 2886
    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_2

    .line 2892
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto/16 :goto_3

    .line 2902
    .restart local v16    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_17
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    goto/16 :goto_4

    .line 2905
    .end local v12    # "i":I
    .end local v14    # "localFeatures":I
    .end local v16    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_18
    const v19, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_1a

    .line 2908
    const v19, 0x1020045

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 2909
    .local v17, "titleContainer":Landroid/view/View;
    if-eqz v17, :cond_19

    .line 2910
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2914
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 2912
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 2916
    .end local v17    # "titleContainer":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2937
    .restart local v18    # "transitionRes":I
    :cond_1b
    new-instance v19, Landroid/transition/TransitionManager;

    invoke-direct/range {v19 .. v19}, Landroid/transition/TransitionManager;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_5

    .line 2987
    .end local v18    # "transitionRes":I
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "coverMode":I
    :catch_0
    move-exception v10

    .line 2988
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 3009
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v11

    .line 3010
    .local v11, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_7

    .line 3007
    .end local v11    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v10

    .line 3008
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_7
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    .line 3365
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 3366
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3367
    :cond_0
    const/4 v4, 0x0

    .line 3383
    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    .line 3384
    const/4 v7, 0x4

    .line 3383
    if-ne v6, v7, :cond_3

    .line 3386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3387
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3388
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    .line 3389
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 3388
    invoke-virtual {v6, v9, v7, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v6

    return v6

    .line 3369
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3370
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 3371
    .local v2, "deviceId":I
    const/4 v5, 0x0

    .line 3372
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_2

    .line 3373
    new-instance v5, Landroid/view/SearchEvent;

    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    .line 3376
    :cond_2
    :try_start_0
    invoke-interface {v1, v5}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "result":Z
    goto :goto_0

    .line 3377
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 3378
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WindowCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3379
    const-string/jumbo v8, " method onSearchRequested(SearchEvent); fa"

    .line 3378
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3380
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    .restart local v4    # "result":Z
    goto/16 :goto_0

    .line 3391
    .end local v2    # "deviceId":I
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_3
    return v4
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 3042
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 3041
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3043
    :catch_0
    move-exception v0

    .line 3044
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    return-object v4
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 810
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    :cond_0
    return-void

    .line 816
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_4

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 818
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 819
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    .line 820
    const/4 v5, 0x4

    .line 819
    if-ne v4, v5, :cond_2

    const/4 v15, 0x1

    .line 821
    .local v15, "isXLarge":Z
    :goto_0
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 822
    const/16 v5, 0xb

    .line 821
    if-lt v4, v5, :cond_3

    const/4 v14, 0x1

    .line 824
    .local v14, "isHoneycombApp":Z
    :goto_1
    if-eqz v15, :cond_4

    if-eqz v14, :cond_4

    .line 825
    return-void

    .line 819
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "isXLarge":Z
    goto :goto_0

    .line 821
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "isHoneycombApp":Z
    goto :goto_1

    .line 829
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 830
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 836
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    .line 837
    .local v18, "wm":Landroid/view/WindowManager;
    if-nez v18, :cond_7

    .line 838
    return-void

    .line 832
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 833
    return-void

    .line 842
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 843
    return-void

    .line 846
    :cond_8
    const/4 v3, -0x2

    .line 847
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_12

    .line 848
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v4, :cond_b

    .line 850
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v4, :cond_c

    .line 851
    :cond_a
    return-void

    .line 852
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 854
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 858
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 862
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 863
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_d

    .line 864
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 868
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, v16

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    .line 871
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 872
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 877
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 880
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    .line 881
    .local v17, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_e

    .line 882
    check-cast v17, Landroid/view/ViewGroup;

    .end local v17    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 884
    :cond_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_f

    .line 891
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 904
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 906
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 908
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    .line 911
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v9, v4, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 907
    const/4 v4, -0x2

    .line 908
    const/16 v7, 0x3eb

    .line 909
    const/high16 v8, 0x820000

    .line 906
    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 913
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_14

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 915
    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 920
    :goto_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 922
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 806
    return-void

    .line 859
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    return-void

    .line 875
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_2

    .line 893
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_13

    .line 894
    const/4 v3, -0x1

    goto :goto_3

    .line 895
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_f

    .line 898
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 899
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v16, :cond_f

    move-object/from16 v0, v16

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 900
    const/4 v3, -0x1

    goto :goto_3

    .line 917
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_4
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    .prologue
    .line 3278
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 3279
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 3286
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3285
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 3276
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 7
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1283
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1285
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v3

    .line 1283
    if-eqz v3, :cond_5

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1287
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 1307
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1308
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1309
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1313
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1288
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1290
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    .line 1291
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 1292
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1293
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1296
    :cond_3
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1300
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_1

    .line 1301
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    .line 1300
    if-eqz v3, :cond_1

    .line 1302
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1303
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 1310
    :cond_4
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1316
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1318
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_6

    .line 1319
    return-void

    .line 1323
    :cond_6
    if-eqz p1, :cond_8

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    .line 1325
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1326
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1329
    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1331
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1282
    return-void

    .line 1323
    :cond_7
    const/4 v1, 0x1

    .local v1, "newExpandedMode":Z
    goto :goto_1

    .end local v1    # "newExpandedMode":Z
    :cond_8
    iget-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .local v1, "newExpandedMode":Z
    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    .line 2346
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2347
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2348
    .local v0, "curFeatureId":I
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2349
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2346
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2354
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2355
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 2343
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2326
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2327
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 2328
    return-void

    .line 2331
    :cond_0
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2332
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 2333
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2331
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2325
    :cond_2
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4004
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4006
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4003
    :cond_0
    :goto_0
    return-void

    .line 4007
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1749
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1750
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 1751
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1752
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1755
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1756
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1757
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1748
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 517
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 511
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_0
.end method

.method private tryFocusingVirtualView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2308
    const v1, 0x7fffffff

    if-eq p2, v1, :cond_0

    .line 2309
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2310
    .local v0, "nodeProvider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_0

    .line 2312
    const/16 v1, 0x40

    .line 2311
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 2315
    .end local v0    # "nodeProvider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private tryRestoreAccessibilityFocus(II)V
    .locals 4
    .param p1, "hostViewId"    # I
    .param p2, "virtualViewId"    # I

    .prologue
    .line 2292
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 2293
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2294
    .local v0, "needsAccessFocus":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2295
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->tryFocusingVirtualView(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2296
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2291
    .end local v0    # "needsAccessFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2297
    .restart local v0    # "needsAccessFocus":Landroid/view/View;
    :cond_1
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to restore focus to previously accessibility focused view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2301
    :cond_2
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Previously accessibility focused view reported id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2302
    const-string/jumbo v3, " during save, but can\'t be found during restore."

    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 3143
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 3144
    return-void

    .line 3147
    :cond_0
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 3149
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    if-eqz p3, :cond_6

    .line 3153
    :cond_1
    const/4 v0, 0x0

    .line 3154
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 3155
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3156
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 3157
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3158
    :cond_2
    if-nez v0, :cond_3

    .line 3159
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3161
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_7

    .line 3162
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3163
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_5

    .line 3164
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3140
    :cond_5
    :goto_0
    return-void

    .line 3150
    :cond_6
    return-void

    .line 3167
    :cond_7
    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_8

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_5

    .line 3170
    :cond_8
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3171
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3172
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 3180
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 3181
    return-void

    .line 3184
    :cond_0
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 3186
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 3190
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 3191
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3192
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    .line 3176
    :cond_2
    :goto_0
    return-void

    .line 3187
    :cond_3
    return-void

    .line 3195
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1672
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1673
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1675
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1676
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_6

    .line 1677
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    .line 1678
    if-eqz v2, :cond_4

    .line 1679
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1680
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .line 1682
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1687
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    .line 1688
    if-eqz v0, :cond_5

    .line 1689
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1671
    :cond_2
    :goto_2
    return-void

    .line 1681
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1684
    .end local v3    # "level":I
    :cond_4
    const-string/jumbo v6, "PhoneWindow"

    const-string/jumbo v7, "Horizontal progress bar not located in current window decor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1691
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1694
    :cond_6
    const/4 v6, -0x2

    if-ne p1, v6, :cond_a

    .line 1695
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_7

    .line 1696
    if-eqz v2, :cond_8

    .line 1697
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1702
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1703
    if-eqz v0, :cond_9

    .line 1704
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1699
    :cond_8
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1706
    :cond_9
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1709
    :cond_a
    const/4 v6, -0x3

    if-ne p1, v6, :cond_c

    .line 1710
    if-eqz v2, :cond_b

    .line 1711
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1713
    :cond_b
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1715
    :cond_c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_e

    .line 1716
    if-eqz v2, :cond_d

    .line 1717
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1719
    :cond_d
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1721
    :cond_e
    if-ltz p1, :cond_11

    if-gt p1, v8, :cond_11

    .line 1725
    if-eqz v2, :cond_f

    .line 1726
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1731
    :goto_4
    if-ge p1, v8, :cond_10

    .line 1732
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1728
    :cond_f
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1734
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1736
    :cond_11
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1737
    if-eqz v2, :cond_12

    .line 1738
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1743
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1740
    :cond_12
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 492
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const-string/jumbo v1, "PhoneWindow"

    const-string/jumbo v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 499
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    :cond_2
    :goto_0
    return-void

    .line 500
    :cond_3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_0
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 2841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2840
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 995
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 996
    return-void

    .line 999
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1000
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1002
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 994
    return-void

    .line 1003
    :cond_2
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public clearContentView()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 505
    :cond_0
    return-void
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1161
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 1162
    return-void

    .line 1165
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1166
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 1167
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1168
    aget-object v2, v3, v1

    .line 1169
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 1170
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1167
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1174
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1159
    return-void
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 929
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    .line 929
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 934
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 928
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 936
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 953
    if-eqz p2, :cond_0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    .line 953
    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 956
    return-void

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 960
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_2

    .line 961
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 962
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 964
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_1

    .line 965
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 969
    :cond_1
    if-eqz p2, :cond_2

    .line 970
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 974
    :cond_2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 975
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 976
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 979
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 981
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_3

    .line 984
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 985
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 988
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_4

    .line 989
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 990
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 951
    :cond_4
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 3211
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3212
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 3213
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3216
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 3217
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3218
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->isFullWindow()Z

    move-result v0

    .line 3230
    .local v0, "showCaption":Z
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 3231
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3210
    .end local v0    # "showCaption":Z
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1036
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1037
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 1038
    return-void

    .line 1040
    :cond_0
    const/4 v0, 0x0

    .line 1041
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2

    .line 1042
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1043
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1045
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1048
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1049
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1051
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_2
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1052
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1055
    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    .line 1056
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_4

    .line 1057
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1058
    if-eqz v1, :cond_4

    .line 1059
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1060
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1035
    :cond_4
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1028
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 1256
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1257
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1258
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1259
    aget-object v2, v3, v1

    .line 1260
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1261
    return-object v2

    .line 1257
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1258
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1264
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-object v5
.end method

.method protected generateDecor(I)Lcom/android/internal/policy/DecorView;
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    .line 2445
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v2, :cond_2

    .line 2446
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2447
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2448
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2458
    .end local v0    # "applicationContext":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v1, p1, p0, v3}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v2

    .line 2450
    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 2451
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2452
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    .line 2456
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method protected generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .locals 29
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .prologue
    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2476
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    .line 2477
    const v27, 0x10100

    and-int v10, v27, v26

    .line 2479
    .local v10, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_27

    .line 2480
    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2481
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2486
    :goto_0
    const/16 v26, 0x3

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 2487
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2493
    :cond_0
    :goto_1
    const/16 v26, 0x11

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2494
    const/16 v26, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2497
    :cond_1
    const/16 v26, 0x10

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 2498
    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2501
    :cond_2
    const/16 v26, 0x19

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2502
    const/16 v26, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2505
    :cond_3
    const/16 v26, 0x9

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    const/16 v27, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2509
    :cond_4
    const/16 v26, 0x17

    .line 2510
    const/16 v27, 0x0

    .line 2509
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 2512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    .line 2511
    const/high16 v27, 0x4000000

    and-int v26, v26, v27

    const/high16 v27, 0x4000000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2515
    :cond_5
    const/16 v26, 0x18

    .line 2516
    const/16 v27, 0x0

    .line 2515
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 2518
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    .line 2517
    const/high16 v27, 0x8000000

    and-int v26, v26, v27

    const/high16 v27, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2521
    :cond_6
    const/16 v26, 0x16

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x2000000

    and-int v26, v26, v27

    const/high16 v27, 0x2000000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2525
    :cond_7
    const/16 v26, 0xe

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 2526
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x100000

    and-int v26, v26, v27

    const/high16 v27, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2530
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v26, v0

    .line 2531
    const/16 v27, 0xb

    .line 2530
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_29

    const/16 v26, 0x1

    .line 2529
    :goto_2
    const/16 v27, 0x12

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x800000

    and-int v26, v26, v27

    const/high16 v27, 0x800000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2535
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    const/16 v27, 0x13

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    const/16 v27, 0x14

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2539
    const/16 v26, 0x31

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    if-nez v26, :cond_a

    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2542
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    .line 2541
    const/16 v27, 0x31

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2544
    :cond_b
    const/16 v26, 0x33

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    if-nez v26, :cond_c

    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2547
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    .line 2546
    const/16 v27, 0x33

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2549
    :cond_d
    const/16 v26, 0x34

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    if-nez v26, :cond_e

    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2552
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    .line 2551
    const/16 v27, 0x34

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2554
    :cond_f
    const/16 v26, 0x32

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    if-nez v26, :cond_10

    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2557
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    .line 2556
    const/16 v27, 0x32

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2559
    :cond_11
    const/16 v26, 0x1a

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 2560
    const/16 v26, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2562
    :cond_12
    const/16 v26, 0x2d

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 2563
    const/16 v26, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2566
    :cond_13
    const/16 v26, 0x5

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2568
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 2569
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v24, v0

    .line 2570
    .local v24, "targetSdk":I
    const/16 v26, 0xb

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2a

    const/16 v21, 0x1

    .line 2571
    .local v21, "targetPreHoneycomb":Z
    :goto_3
    const/16 v26, 0xe

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2b

    const/16 v22, 0x1

    .line 2572
    .local v22, "targetPreIcs":Z
    :goto_4
    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2c

    const/16 v23, 0x1

    .line 2573
    .local v23, "targetPreL":Z
    :goto_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 2574
    const v27, 0x1120008

    .line 2573
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 2575
    .local v20, "targetHcNeedsOptions":Z
    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v26

    if-eqz v26, :cond_2d

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v15

    .line 2577
    :goto_6
    if-nez v21, :cond_14

    if-eqz v22, :cond_2e

    if-eqz v20, :cond_2e

    if-eqz v15, :cond_2e

    .line 2578
    :cond_14
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    .line 2583
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    move/from16 v26, v0

    if-nez v26, :cond_15

    .line 2584
    const/16 v26, 0x23

    const/high16 v27, -0x1000000

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2586
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    move/from16 v26, v0

    if-nez v26, :cond_16

    .line 2588
    sget-boolean v26, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-nez v26, :cond_2f

    .line 2589
    const/16 v26, 0x24

    const/high16 v27, -0x1000000

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2604
    :cond_16
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 2608
    .local v16, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 2609
    if-nez v23, :cond_17

    .line 2610
    const/16 v26, 0x22

    .line 2611
    const/16 v27, 0x0

    .line 2609
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    move/from16 v0, v26

    not-int v0, v0

    move/from16 v26, v0

    const/high16 v27, -0x80000000

    and-int v26, v26, v27

    .line 2612
    const/high16 v27, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2615
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 2616
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x20000

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2619
    :cond_18
    const/16 v26, 0x2e

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 2621
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v26

    move/from16 v0, v26

    or-int/lit16 v0, v0, 0x2000

    move/from16 v26, v0

    .line 2620
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2628
    :cond_19
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "current_sec_active_themepackage"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2629
    .local v25, "themePackageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "current_sec_theme_package_festival"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2630
    .local v9, "festivalPackageName":Ljava/lang/String;
    if-eqz v25, :cond_1a

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_33

    .line 2652
    :cond_1a
    :goto_9
    sget-boolean v26, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v26, :cond_1b

    .line 2653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    .line 2654
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v26

    or-int/lit8 v26, v26, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2660
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v26, v0

    if-nez v26, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v26, v0

    .line 2661
    const/16 v27, 0xb

    .line 2660
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1d

    .line 2663
    :cond_1c
    const/16 v26, 0x15

    .line 2664
    const/16 v27, 0x0

    .line 2662
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 2665
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2669
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v26

    if-nez v26, :cond_1e

    .line 2672
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v26, v0

    .line 2671
    const/16 v27, 0xd

    .line 2670
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2676
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    .line 2675
    const/16 v27, 0xb

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 2678
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-nez v26, :cond_1f

    .line 2679
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2681
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v26

    if-nez v26, :cond_20

    .line 2683
    const/16 v26, 0x0

    const/high16 v27, 0x3f000000    # 0.5f

    .line 2682
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2687
    :cond_20
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v26, v0

    if-nez v26, :cond_21

    .line 2689
    const/16 v26, 0x8

    const/16 v27, 0x0

    .line 2688
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2694
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v26

    if-nez v26, :cond_26

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-nez v26, :cond_24

    .line 2696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v26, v0

    if-nez v26, :cond_22

    .line 2698
    const/16 v26, 0x1

    const/16 v27, 0x0

    .line 2697
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/DecorView;->setLastBackgroundResource(I)V

    .line 2703
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v26, v0

    if-nez v26, :cond_23

    .line 2704
    const/16 v26, 0x2

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2707
    :cond_23
    const/16 v26, 0x2f

    const/16 v27, 0x0

    .line 2706
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 2714
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2715
    const/16 v26, 0x0

    const/16 v27, 0x26

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2717
    :cond_25
    const/16 v26, 0x27

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2718
    const/16 v26, 0x7

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2724
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v8

    .line 2726
    .local v8, "features":I
    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    if-eqz v26, :cond_35

    .line 2727
    const v13, 0x10900e5

    .line 2783
    .local v13, "layoutResource":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2786
    const v26, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2787
    .local v6, "contentParent":Landroid/view/ViewGroup;
    if-nez v6, :cond_3f

    .line 2788
    new-instance v26, Ljava/lang/RuntimeException;

    const-string/jumbo v27, "Window couldn\'t find content container view"

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2483
    .end local v6    # "contentParent":Landroid/view/ViewGroup;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "features":I
    .end local v9    # "festivalPackageName":Ljava/lang/String;
    .end local v13    # "layoutResource":I
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "targetHcNeedsOptions":Z
    .end local v21    # "targetPreHoneycomb":Z
    .end local v22    # "targetPreIcs":Z
    .end local v23    # "targetPreL":Z
    .end local v24    # "targetSdk":I
    .end local v25    # "themePackageName":Ljava/lang/String;
    :cond_27
    const v26, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 2488
    :cond_28
    const/16 v26, 0xf

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2490
    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 2530
    :cond_29
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 2570
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v24    # "targetSdk":I
    :cond_2a
    const/16 v21, 0x0

    .restart local v21    # "targetPreHoneycomb":Z
    goto/16 :goto_3

    .line 2571
    :cond_2b
    const/16 v22, 0x0

    .restart local v22    # "targetPreIcs":Z
    goto/16 :goto_4

    .line 2572
    :cond_2c
    const/16 v23, 0x0

    .restart local v23    # "targetPreL":Z
    goto/16 :goto_5

    .line 2575
    .restart local v20    # "targetHcNeedsOptions":Z
    :cond_2d
    const/4 v15, 0x1

    .local v15, "noActionBar":Z
    goto/16 :goto_6

    .line 2580
    .end local v15    # "noActionBar":Z
    :cond_2e
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    goto/16 :goto_7

    .line 2591
    :cond_2f
    sget-boolean v26, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_BG_COLOR:Z

    if-eqz v26, :cond_32

    .line 2592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    move/from16 v26, v0

    const/16 v27, 0x24

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 2593
    .local v14, "navColor":I
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "navigationbar_current_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 2594
    .local v19, "setColor":I
    if-nez v14, :cond_31

    .end local v14    # "navColor":I
    :cond_30
    :goto_b
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2596
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    goto/16 :goto_8

    .line 2595
    .restart local v14    # "navColor":I
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_30

    move/from16 v14, v19

    goto :goto_b

    .line 2598
    .end local v14    # "navColor":I
    .end local v19    # "setColor":I
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    move/from16 v26, v0

    const/16 v27, 0x24

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    goto/16 :goto_8

    .line 2631
    .restart local v9    # "festivalPackageName":Ljava/lang/String;
    .restart local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v25    # "themePackageName":Ljava/lang/String;
    :cond_33
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1a

    .line 2633
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 2634
    .local v12, "isDeviceDefault":Landroid/util/TypedValue;
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v26

    const v27, 0x11600cb

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2637
    if-eqz v12, :cond_1a

    iget v0, v12, Landroid/util/TypedValue;->data:I

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 2638
    const/16 v26, 0x2e

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    .line 2637
    if-eqz v26, :cond_1a

    .line 2639
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x11200dd

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_34

    .line 2641
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v26

    move/from16 v0, v26

    or-int/lit16 v0, v0, 0x2000

    move/from16 v26, v0

    .line 2640
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2646
    :goto_c
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x10600f6

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    goto/16 :goto_9

    .line 2644
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, -0x2001

    move/from16 v26, v0

    .line 2643
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    goto :goto_c

    .line 2728
    .end local v12    # "isDeviceDefault":Landroid/util/TypedValue;
    .restart local v8    # "features":I
    :cond_35
    and-int/lit8 v26, v8, 0x18

    if-eqz v26, :cond_37

    .line 2729
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_36

    .line 2730
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 2731
    .local v18, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v26

    .line 2732
    const v27, 0x116002a

    const/16 v28, 0x1

    .line 2731
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2733
    move-object/from16 v0, v18

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 2738
    .end local v18    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_d
    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_a

    .line 2735
    .end local v13    # "layoutResource":I
    :cond_36
    const v13, 0x10900e7

    .restart local v13    # "layoutResource":I
    goto :goto_d

    .line 2740
    .end local v13    # "layoutResource":I
    :cond_37
    and-int/lit8 v26, v8, 0x24

    if-eqz v26, :cond_38

    .line 2741
    and-int/lit16 v0, v8, 0x100

    move/from16 v26, v0

    if-nez v26, :cond_38

    .line 2744
    const v13, 0x10900e2

    .line 2741
    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2746
    .end local v13    # "layoutResource":I
    :cond_38
    and-int/lit16 v0, v8, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3a

    .line 2749
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_39

    .line 2750
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 2751
    .restart local v18    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v26

    .line 2752
    const v27, 0x116002b

    const/16 v28, 0x1

    .line 2751
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2753
    move-object/from16 v0, v18

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 2758
    .end local v18    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_e
    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_a

    .line 2755
    .end local v13    # "layoutResource":I
    :cond_39
    const v13, 0x10900e1

    .restart local v13    # "layoutResource":I
    goto :goto_e

    .line 2759
    .end local v13    # "layoutResource":I
    :cond_3a
    and-int/lit8 v26, v8, 0x2

    if-nez v26, :cond_3d

    .line 2762
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3b

    .line 2763
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 2764
    .restart local v18    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v26

    .line 2765
    const v27, 0x116002c

    const/16 v28, 0x1

    .line 2764
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2766
    move-object/from16 v0, v18

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2767
    .end local v13    # "layoutResource":I
    .end local v18    # "res":Landroid/util/TypedValue;
    :cond_3b
    and-int/lit16 v0, v8, 0x100

    move/from16 v26, v0

    if-eqz v26, :cond_3c

    .line 2769
    const/16 v26, 0x30

    .line 2770
    const v27, 0x10900e0

    .line 2768
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2772
    .end local v13    # "layoutResource":I
    :cond_3c
    const v13, 0x10900e6

    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2775
    .end local v13    # "layoutResource":I
    :cond_3d
    and-int/lit16 v0, v8, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_3e

    .line 2776
    const v13, 0x10900e4

    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2779
    .end local v13    # "layoutResource":I
    :cond_3e
    const v13, 0x10900e3

    .restart local v13    # "layoutResource":I
    goto/16 :goto_a

    .line 2791
    .restart local v6    # "contentParent":Landroid/view/ViewGroup;
    :cond_3f
    and-int/lit8 v26, v8, 0x20

    if-eqz v26, :cond_40

    .line 2792
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v17

    .line 2793
    .local v17, "progress":Landroid/widget/ProgressBar;
    if-eqz v17, :cond_40

    .line 2794
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2798
    .end local v17    # "progress":Landroid/widget/ProgressBar;
    :cond_40
    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    if-eqz v26, :cond_41

    .line 2799
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V

    .line 2804
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v26

    if-nez v26, :cond_44

    .line 2806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v26, v0

    if-eqz v26, :cond_45

    .line 2807
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2811
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v26, v0

    if-eqz v26, :cond_46

    .line 2815
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2819
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_42

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2828
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v26, v0

    if-nez v26, :cond_43

    .line 2829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2831
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    .line 2834
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2836
    return-object v6

    .line 2809
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v5    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_f

    .line 2817
    :cond_46
    const/4 v11, 0x0

    .local v11, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_10
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 3515
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2047
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDecorCaptionShade()I
    .locals 1

    .prologue
    .line 4095
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    return v0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_1

    .line 2167
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2169
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 1501
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method getLocalFeaturesPrivate()I
    .locals 1

    .prologue
    .line 3988
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 4028
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 3082
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3462
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3495
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 3494
    :goto_0
    return-object v0

    .line 3495
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3484
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 3483
    :goto_0
    return-object v0

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 4014
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    .prologue
    .line 3520
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0

    .line 3521
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 3401
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1447
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1448
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1449
    return v5

    .line 1452
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1453
    return v4

    .line 1456
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1457
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1460
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1461
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_0
    move-object v2, v1

    .line 1464
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1466
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1468
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1469
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    .line 1470
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1472
    :cond_3
    return v5

    .line 1462
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_0

    .line 1474
    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_5
    return v4
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1394
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1395
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1396
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1398
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 1397
    const/4 v5, 0x0

    .line 1398
    const/4 v6, 0x0

    .line 1397
    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1399
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1400
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_0

    .line 1401
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1403
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1405
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 11
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const v10, 0x1010397

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1344
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1347
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 1348
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1349
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1350
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1351
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1353
    const/4 v5, 0x0

    .line 1354
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1355
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1356
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1357
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1358
    invoke-virtual {v5, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1365
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1366
    if-nez v5, :cond_1

    .line 1367
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1368
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1370
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1373
    :cond_2
    if-eqz v5, :cond_3

    .line 1374
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1375
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1379
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1380
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1381
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1383
    return v8

    .line 1361
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1835
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1834
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1020
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1022
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1024
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1019
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 3136
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 3137
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method isShowingWallpaper()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 2161
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 708
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 709
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 710
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 711
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 713
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 717
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 723
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 726
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 729
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 730
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 732
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 706
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 739
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1617
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1618
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1625
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1626
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1627
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1615
    :goto_1
    return-void

    .line 1619
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1620
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1622
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_1
    return-void

    .line 1630
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1642
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1643
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1641
    :cond_1
    :goto_0
    return-void

    .line 1644
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1645
    const v1, 0x1020045

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1646
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1647
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1955
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1959
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2034
    :cond_0
    return v3

    .line 1955
    :cond_1
    const/4 v1, 0x0

    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    .line 1963
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/4 v0, 0x0

    .line 1964
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1

    .line 1977
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 1979
    .local v2, "volumeControlStreamType":I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->adjustVolumeForRotation(I)I

    move-result v0

    .line 1980
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->adjustVolumeControlStreamTypeForKnox(I)I

    move-result v2

    .line 1986
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 1987
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3, v0, v6}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 1994
    :goto_2
    return v6

    .line 1966
    .end local v2    # "volumeControlStreamType":I
    :sswitch_1
    const/4 v0, 0x1

    .line 1967
    goto :goto_1

    .line 1969
    :sswitch_2
    const/4 v0, -0x1

    .line 1970
    goto :goto_1

    .line 1972
    :sswitch_3
    const/16 v0, 0x65

    .line 1973
    goto :goto_1

    .line 1989
    .restart local v2    # "volumeControlStreamType":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v3

    .line 1990
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 1991
    const/16 v5, 0x1011

    .line 1989
    invoke-virtual {v3, v4, v0, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2

    .line 2009
    .end local v0    # "direction":I
    .end local v2    # "volumeControlStreamType":I
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    .line 2010
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2011
    return v6

    .line 2014
    :cond_3
    return v3

    .line 2018
    :sswitch_5
    if-gez p1, :cond_4

    move p1, v3

    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 2019
    return v6

    .line 2023
    .restart local p1    # "featureId":I
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 2024
    if-ltz p1, :cond_0

    .line 2026
    if-eqz v1, :cond_5

    .line 2027
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2029
    :cond_5
    return v6

    .line 1959
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_4
        0x52 -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 1964
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 1072
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1074
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1078
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1079
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_1

    .line 1084
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v3

    .line 1080
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x1014

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2060
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2061
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    if-eqz v0, :cond_1

    .line 2062
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2067
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 2157
    :cond_2
    return v3

    .line 2070
    :sswitch_0
    const/16 v1, 0x1014

    .line 2074
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    .line 2075
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 2080
    :goto_0
    return v6

    .line 2077
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    .line 2078
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 2077
    invoke-virtual {v4, v5, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_0

    .line 2087
    .end local v1    # "flags":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    .line 2088
    return v6

    .line 2103
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_4

    .line 2104
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2105
    return v6

    .line 2108
    :cond_4
    return v3

    .line 2112
    :sswitch_3
    if-gez p1, :cond_5

    move p1, v3

    .end local p1    # "featureId":I
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2114
    return v6

    .line 2118
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_2

    .line 2119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2120
    if-nez p1, :cond_6

    .line 2121
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2122
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_6

    .line 2125
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2126
    return v6

    .line 2129
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2130
    return v6

    .line 2140
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2143
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2146
    :cond_7
    :goto_1
    return v6

    .line 2144
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2150
    :sswitch_6
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v3, :cond_9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2153
    :cond_9
    :goto_2
    return v6

    .line 2151
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    goto :goto_2

    .line 2067
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
        0xab -> :sswitch_6
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1094
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_5

    .line 1095
    iput v6, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1097
    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1099
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    .line 1101
    :cond_0
    return-void

    .line 1100
    :cond_1
    if-eqz v3, :cond_0

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_2

    .line 1106
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    .line 1105
    if-eqz v4, :cond_2

    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1116
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_8

    .line 1120
    :cond_3
    iget-boolean v1, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1123
    .local v1, "playSoundEffect":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1146
    .end local v1    # "playSoundEffect":Z
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1148
    const-string/jumbo v5, "audio"

    .line 1147
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1149
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_a

    .line 1150
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1092
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_1
    return-void

    .line 1108
    .local v1, "playSoundEffect":Z
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1109
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1110
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .local v1, "playSoundEffect":Z
    goto :goto_0

    .line 1113
    .local v1, "playSoundEffect":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    .local v1, "playSoundEffect":Z
    goto :goto_0

    .line 1125
    .local v1, "playSoundEffect":Z
    :cond_8
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_4

    .line 1126
    const/4 v2, 0x1

    .line 1127
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_9

    .line 1130
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1131
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1134
    .end local v2    # "show":Z
    :cond_9
    if-eqz v2, :cond_4

    .line 1136
    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1139
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1141
    const/4 v1, 0x1

    goto :goto_0

    .line 1152
    .end local v1    # "playSoundEffect":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_a
    const-string/jumbo v4, "PhoneWindow"

    const-string/jumbo v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1269
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1275
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1270
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1271
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1272
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1278
    return-void
.end method

.method public onMultiWindowFeaturesChanged()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->onMultiWindowFeaturesChanged()V

    .line 766
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    .line 749
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupportBridge()Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->setMultiWindowModeChanged(Z)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 757
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupportBridge()Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->setMultiWindowModeChanged(Z)V

    .line 746
    :cond_1
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1424
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1425
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    return-void

    .line 1427
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_1

    .line 1428
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1429
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v0, :cond_2

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1431
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1432
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_2

    .line 1433
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    return-void
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 797
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    .line 797
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 796
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0
.end method

.method openPanelsAfterRestore()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2370
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2372
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 2373
    return-void

    .line 2377
    :cond_0
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2378
    aget-object v2, v1, v0

    .line 2382
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 2383
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2384
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_1

    .line 2385
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2386
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2377
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2369
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1237
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1238
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    return v4

    .line 1241
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1242
    return v4

    .line 1245
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1248
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_2

    .line 1249
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1252
    :cond_2
    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1208
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1209
    :cond_0
    return v2

    .line 1212
    :cond_1
    const/4 v0, 0x0

    .line 1216
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1218
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1221
    .end local v0    # "handled":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 1223
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1226
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_4

    .line 1227
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1231
    :cond_4
    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    return v5

    .line 606
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_1

    .line 607
    return v4

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_2

    .line 612
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 615
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 617
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    .line 618
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 622
    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_4

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_8

    :cond_4
    move v1, v4

    .line 624
    .local v1, "isActionBarMenu":Z
    :goto_0
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5

    .line 627
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 630
    :cond_5
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    .line 632
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_c

    .line 633
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_9

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_9

    .line 635
    :cond_7
    return v5

    .end local v1    # "isActionBarMenu":Z
    :cond_8
    move v1, v5

    .line 622
    goto :goto_0

    .line 639
    .restart local v1    # "isActionBarMenu":Z
    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_b

    .line 640
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_a

    .line 641
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 643
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 650
    :cond_b
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 651
    if-eqz v0, :cond_f

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 663
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 670
    :cond_c
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 674
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_d

    .line 675
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 676
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 679
    :cond_d
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 680
    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_e

    .line 683
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 685
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 686
    return v5

    .line 653
    :cond_f
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 655
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 657
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 660
    :cond_10
    return v5

    .line 691
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 690
    :goto_1
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 692
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_2
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 693
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 694
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 698
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 699
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 700
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 702
    return v4

    .line 691
    :cond_13
    const/4 v3, -0x1

    goto :goto_1

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 692
    goto :goto_2
.end method

.method public reportActivityRelaunched()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportActivityRelaunched()V

    .line 776
    :cond_0
    return-void
.end method

.method public requestFeature(I)Z
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 369
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-eqz v2, :cond_0

    .line 370
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 373
    .local v0, "features":I
    shl-int v2, v5, p1

    or-int v1, v0, v2

    .line 374
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 375
    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_1

    .line 378
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 379
    const-string/jumbo v3, "You cannot combine custom titles with other title features"

    .line 378
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_2

    .line 382
    return v3

    .line 384
    :cond_2
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    if-ne p1, v5, :cond_3

    .line 386
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 389
    :cond_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 390
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 391
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    .line 390
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_5

    if-ne p1, v4, :cond_5

    .line 394
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 395
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    .line 394
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 398
    if-eqz v2, :cond_6

    .line 400
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    return v2
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x1

    .line 2242
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 2243
    return-void

    .line 2247
    :cond_0
    const-string/jumbo v7, "android:views"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 2248
    .local v6, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v6, :cond_1

    .line 2249
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2253
    :cond_1
    const-string/jumbo v7, "android:focusedViewId"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2254
    .local v3, "focusedViewId":I
    if-eq v3, v10, :cond_2

    .line 2255
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2256
    .local v4, "needsFocus":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 2257
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 2267
    .end local v4    # "needsFocus":Landroid/view/View;
    :cond_2
    :goto_0
    const-string/jumbo v7, "android:accessibilityFocusedViewId"

    .line 2266
    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2269
    .local v0, "accessFocusHostViewId":I
    const-string/jumbo v7, "android:accessibilityFocusedVirtualViewId"

    const v8, 0x7fffffff

    .line 2268
    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2270
    .local v1, "accessFocusVirtualViewId":I
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->tryRestoreAccessibilityFocus(II)V

    .line 2273
    const-string/jumbo v7, "android:Panels"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 2274
    .local v5, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v5, :cond_3

    .line 2275
    invoke-direct {p0, v5}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2278
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v7, :cond_4

    .line 2280
    const-string/jumbo v7, "android:ActionBar"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2281
    .local v2, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_6

    .line 2282
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2283
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7, v2}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2241
    .end local v2    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    :goto_1
    return-void

    .line 2259
    .end local v0    # "accessFocusHostViewId":I
    .end local v1    # "accessFocusVirtualViewId":I
    .end local v5    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v4    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string/jumbo v7, "PhoneWindow"

    .line 2260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Previously focused view reported id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2261
    const-string/jumbo v9, " during save, but can\'t be found during restore."

    .line 2260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2259
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2285
    .end local v4    # "needsFocus":Landroid/view/View;
    .restart local v0    # "accessFocusHostViewId":I
    .restart local v1    # "accessFocusVirtualViewId":I
    .restart local v2    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v5    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string/jumbo v7, "PhoneWindow"

    const-string/jumbo v8, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 2188
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2189
    .local v4, "outState":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v9, :cond_0

    .line 2190
    return-object v4

    .line 2193
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2194
    .local v6, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2195
    const-string/jumbo v9, "android:views"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2198
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2199
    .local v3, "focusedView":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 2200
    const-string/jumbo v9, "android:focusedViewId"

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2204
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v9, :cond_2

    .line 2205
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    .line 2206
    .local v7, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_2

    .line 2207
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2208
    .local v0, "accessFocusHost":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v11, :cond_2

    .line 2209
    const-string/jumbo v9, "android:accessibilityFocusedViewId"

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 2214
    .local v1, "accessFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 2216
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v10

    .line 2215
    invoke-static {v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v8

    .line 2217
    .local v8, "virtualNodeId":I
    const-string/jumbo v9, "android:accessibilityFocusedVirtualViewId"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2224
    .end local v0    # "accessFocusHost":Landroid/view/View;
    .end local v1    # "accessFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v8    # "virtualNodeId":I
    :cond_2
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 2225
    .local v5, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v5}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2226
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 2227
    const-string/jumbo v9, "android:Panels"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2230
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v9, :cond_4

    .line 2231
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2232
    .local v2, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v9, v2}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2233
    const-string/jumbo v9, "android:ActionBar"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2236
    .end local v2    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    return-object v4
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 3996
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3995
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3999
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 3500
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3499
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 3510
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3509
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 4100
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4101
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4102
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 4099
    :cond_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1514
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-eqz v1, :cond_2

    .line 1515
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 1516
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1517
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1520
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_2

    .line 1521
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    .line 1513
    :cond_2
    return-void

    .line 1521
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3124
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3125
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3126
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 3123
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 3131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 3130
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1506
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1505
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 363
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 442
    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 444
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 448
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 450
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    :cond_1
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 431
    return-void

    .line 437
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 451
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 458
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 472
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 473
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 475
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 479
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 481
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    :cond_1
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 462
    return-void

    .line 468
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 482
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_2
.end method

.method public setDecorCaptionShade(I)V
    .locals 1
    .param p1, "decorCaptionShade"    # I

    .prologue
    .line 4088
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 4089
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 4087
    :cond_0
    return-void
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1790
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1791
    return-void

    .line 1793
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1794
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1796
    :cond_1
    if-eqz p1, :cond_3

    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1798
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1789
    :cond_2
    :goto_0
    return-void

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1801
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1800
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1802
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1818
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1819
    return-void

    .line 1821
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1822
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1817
    :cond_1
    :goto_0
    return-void

    .line 1823
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_0
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 3992
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3991
    return-void
.end method

.method public final setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .prologue
    .line 1485
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1487
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1496
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1484
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 3416
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3415
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 3426
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3425
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1577
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1578
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1579
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1580
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1576
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1558
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1559
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1560
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1561
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1562
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1563
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1557
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1569
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1570
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1571
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1572
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1568
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1528
    if-eqz p2, :cond_1

    .line 1529
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1530
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1531
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1532
    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1533
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1534
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1527
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1543
    if-eqz p2, :cond_1

    .line 1544
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1545
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :goto_0
    return-void

    .line 1546
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1547
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1548
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1549
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    goto :goto_0

    .line 1552
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1585
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1780
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1781
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1782
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1783
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1779
    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    .prologue
    .line 4067
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 4066
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1829
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1828
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1809
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1810
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1811
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1808
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3405
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 4033
    sget-boolean v2, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_BG_COLOR:Z

    if-eqz v2, :cond_0

    .line 4034
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1060076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 4035
    .local v0, "defaultColor":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4036
    const-string/jumbo v3, "navigationbar_current_color"

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 4035
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4037
    .local v1, "setColor":I
    if-eq v0, v1, :cond_0

    .line 4038
    return-void

    .line 4041
    .end local v0    # "defaultColor":I
    .end local v1    # "setColor":I
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4042
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4043
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    .line 4044
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4045
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    .line 4032
    :cond_1
    return-void
.end method

.method public setNavigationBarGuardColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor(I)V

    .line 4059
    :cond_0
    return-void
.end method

.method public setNavigationBarInternalColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 4051
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4053
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4054
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4055
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    .line 4050
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 3431
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3430
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4082
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 3421
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3420
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 3436
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3435
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3445
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3450
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 3441
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3440
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 3534
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3533
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 4019
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4021
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4022
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4018
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 4072
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 4073
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 4074
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4075
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 4076
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4071
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 562
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 573
    if-eqz p2, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 575
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 566
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 584
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 3526
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3529
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3525
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 421
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 406
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 412
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 411
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 3396
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3395
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 530
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 1854
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 526
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1010
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1011
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1009
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1601
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1602
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1603
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1600
    :cond_0
    return-void
.end method
