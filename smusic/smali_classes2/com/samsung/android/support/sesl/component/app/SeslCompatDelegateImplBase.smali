.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;
.implements Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;,
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;
    }
.end annotation


# static fields
.field private static APPROVED_PACKAGES:[Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See SeslCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final FLUSH_RESOURCE_CACHES_ON_NIGHT_CHANGE:Z = true

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "seslcompat:local_night_mode"

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

.field private mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

.field mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

.field private mClosingActionMenu:Z

.field final mContext:Landroid/content/Context;

.field private mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mHandleNativeActionModes:Z

.field mHasActionBar:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field private mLocalNightMode:I

.field private mLongPressBackDown:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mPanelMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

.field private mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

.field final mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

.field final mSeslCompatWindowCallback:Landroid/view/Window$Callback;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mViewInflater:Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "com.samsung.android.app.notes"

    aput-object v4, v1, v3

    const-string v4, "com.samsung.android.app.music"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "com.samsung.android.app.soundpicker"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "com.samsung.android.app.music.library"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "com.samsung.android.app.music.robolectric"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "com.samsung.android.oneconnect"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "com.samsung.android.familyctrl"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "com.samsung.android.app.reminder"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "com.samsung.android.app.connectauto"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "com.sec.android.app.vefull"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "com.samsung.android.app.simplesharing"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "com.samsung.android.app.spage"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "com.samsung.android.galaxycontinuity"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "com.samsung.android.email.provider"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "com.sec.sesl.tester"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "com.example.android.support.component"

    aput-object v5, v1, v4

    const/16 v4, 0x10

    const-string v5, "com.example.android.support.core"

    aput-object v5, v1, v4

    const/16 v4, 0x11

    const-string v5, "com.example.android.support.design"

    aput-object v5, v1, v4

    const/16 v4, 0x12

    const-string v5, "com.samsung.android.support.sesl.test"

    aput-object v5, v1, v4

    const/16 v4, 0x13

    const-string v5, "com.samsung.android.support.sesl.design.test"

    aput-object v5, v1, v4

    sput-object v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->APPROVED_PACKAGES:[Ljava/lang/String;

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    .line 139
    sget-boolean v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    if-nez v1, :cond_0

    .line 141
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 143
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 168
    sput-boolean v2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    .line 172
    :cond_0
    new-array v1, v2, [I

    const v2, 0x1010054

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    return-void

    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    move v1, v3

    .line 132
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;-><init>()V

    .line 209
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 230
    new-instance v4, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 257
    const/16 v4, -0x64

    iput v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHandleNativeActionModes:Z

    .line 266
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 267
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 268
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .line 270
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 271
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;

    if-eqz v4, :cond_0

    .line 272
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "SeslCompat has already installed itself into the Window"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatWindowCallback:Landroid/view/Window$Callback;

    .line 277
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 279
    sget-object v4, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    invoke-virtual {p1, v7, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 282
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 283
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 285
    .local v2, "resourceId":I
    if-eqz v2, :cond_1

    .line 286
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    .end local v2    # "resourceId":I
    :cond_1
    move-object v3, v1

    .line 291
    .local v3, "winBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 292
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 7

    .prologue
    .line 2084
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 2090
    .local v1, "cfl":Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 2091
    .local v2, "windowDecor":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 2092
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 2093
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 2091
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->setDecorPadding(IIII)V

    .line 2095
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2096
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowMinWidthMajor:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2097
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowMinWidthMinor:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2099
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedWidthMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2100
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedWidthMajor:I

    .line 2101
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 2100
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2103
    :cond_0
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedWidthMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2104
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedWidthMinor:I

    .line 2105
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 2104
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2107
    :cond_1
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedHeightMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2108
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedHeightMajor:I

    .line 2109
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 2108
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2111
    :cond_2
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedHeightMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2112
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowFixedHeightMinor:I

    .line 2113
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 2112
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2115
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2117
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->requestLayout()V

    .line 2118
    return-void
.end method

.method private checkApprovedPackage()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1872
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1873
    .local v1, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->APPROVED_PACKAGES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 1874
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1875
    const/4 v2, 0x1

    .line 1878
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    return v2

    .line 1873
    .restart local v0    # "item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 15

    .prologue
    const v14, 0x1020002

    const/16 v13, 0x6d

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1915
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1917
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowActionBar:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1918
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1919
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "You need to use a Theme.SeslCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1923
    :cond_0
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowNoTitle:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1924
    invoke-virtual {p0, v12}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->requestWindowFeature(I)Z

    .line 1929
    :cond_1
    :goto_0
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowActionBarOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1930
    invoke-virtual {p0, v13}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->requestWindowFeature(I)Z

    .line 1932
    :cond_2
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowActionModeOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1933
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->requestWindowFeature(I)Z

    .line 1935
    :cond_3
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsFloating:Z

    .line 1936
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1939
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1941
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1942
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 1945
    .local v5, "subDecor":Landroid/view/ViewGroup;
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindowNoTitle:Z

    if-nez v8, :cond_a

    .line 1946
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsFloating:Z

    if-eqz v8, :cond_6

    .line 1948
    sget v8, Lcom/samsung/android/support/sesl/R$layout;->sesl_dialog_title:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 1952
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    .line 2022
    :cond_4
    :goto_1
    if-nez v5, :cond_c

    .line 2023
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeslCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1925
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_5
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_seslWindowActionBar:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1927
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 1953
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_6
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v8, :cond_4

    .line 1959
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1960
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010431

    invoke-virtual {v8, v9, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1963
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_9

    .line 1964
    new-instance v6, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v8, v9}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1970
    .local v6, "themedContext":Landroid/content/Context;
    :goto_2
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/samsung/android/support/sesl/R$layout;->sesl_screen_toolbar:I

    .line 1971
    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 1973
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    sget v8, Lcom/samsung/android/support/sesl/R$id;->decor_content_parent:I

    .line 1974
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    .line 1975
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 1980
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    if-eqz v8, :cond_7

    .line 1981
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v8, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->initFeature(I)V

    .line 1983
    :cond_7
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureProgress:Z

    if-eqz v8, :cond_8

    .line 1984
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->initFeature(I)V

    .line 1986
    :cond_8
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureIndeterminateProgress:Z

    if-eqz v8, :cond_4

    .line 1987
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->initFeature(I)V

    goto/16 :goto_1

    .line 1966
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .restart local v6    # "themedContext":Landroid/content/Context;
    goto :goto_2

    .line 1991
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_a
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionMode:Z

    if-eqz v8, :cond_b

    .line 1992
    sget v8, Lcom/samsung/android/support/sesl/R$layout;->sesl_screen_simple_overlay_action_mode:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 2000
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :goto_3
    new-instance v8, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$5;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 1995
    :cond_b
    sget v8, Lcom/samsung/android/support/sesl/R$layout;->sesl_screen_simple:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    goto :goto_3

    .line 2033
    :cond_c
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-nez v8, :cond_d

    .line 2034
    sget v8, Lcom/samsung/android/support/sesl/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTitleView:Landroid/widget/TextView;

    .line 2038
    :cond_d
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 2040
    sget v8, Lcom/samsung/android/support/sesl/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 2043
    .local v2, "contentView":Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2044
    .local v7, "windowContentView":Landroid/view/ViewGroup;
    if-eqz v7, :cond_f

    .line 2047
    :goto_4
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    .line 2048
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2049
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2050
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2055
    .end local v1    # "child":Landroid/view/View;
    :cond_e
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 2056
    invoke-virtual {v2, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->setId(I)V

    .line 2060
    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    .line 2061
    check-cast v7, Landroid/widget/FrameLayout;

    .end local v7    # "windowContentView":Landroid/view/ViewGroup;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2066
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2068
    new-instance v8, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$6;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    invoke-virtual {v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->setAttachListener(Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;)V

    .line 2078
    return-object v5
.end method

.method private ensureAutoNightModeManager()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    if-nez v0, :cond_0

    .line 1402
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    .line 1404
    :cond_0
    return-void
.end method

.method private ensureSubDecor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1882
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->checkApprovedPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1883
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This application is not approved. To use the library, please ask for authorization first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1887
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecorInstalled:Z

    if-nez v2, :cond_3

    .line 1888
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 1891
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1892
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1893
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 1896
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->applyFixedSizeWindow()V

    .line 1898
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 1900
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecorInstalled:Z

    .line 1907
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    .line 1908
    .local v0, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v2, :cond_3

    .line 1909
    :cond_2
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->invalidatePanelMenu(I)V

    .line 1912
    .end local v0    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method private getNightMode()I
    .locals 2

    .prologue
    .line 1342
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getDefaultNightMode()I

    move-result v0

    goto :goto_0
.end method

.method private initializePanelContent(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 823
    iget-object v2, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 839
    :cond_0
    :goto_0
    return v1

    .line 827
    :cond_1
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v3, :cond_2

    move v1, v2

    .line 828
    goto :goto_0

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanelMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;

    if-nez v3, :cond_3

    .line 832
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanelMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;

    .line 835
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanelMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->getListMenuView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v0

    .line 837
    .local v0, "menuView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    iput-object v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 839
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private initializePanelDecor(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z
    .locals 2
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 729
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 730
    const/16 v0, 0x51

    iput v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->gravity:I

    .line 731
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 779
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 782
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v6, :cond_3

    .line 784
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 785
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 786
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 788
    const/4 v5, 0x0

    .line 789
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 790
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 791
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 792
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 793
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 800
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 801
    if-nez v5, :cond_1

    .line 802
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 803
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 805
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 808
    :cond_2
    if-eqz v5, :cond_3

    .line 809
    new-instance v2, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 810
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 814
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {v3, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 815
    .local v3, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 816
    invoke-virtual {p1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->setMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 818
    return v8

    .line 796
    .end local v3    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1143
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    .line 1145
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1147
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuPosted:Z

    .line 1149
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 997
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 998
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    .line 999
    .local v0, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    .line 1000
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1004
    .end local v0    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1008
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v5, :cond_1

    move v1, v4

    .line 1057
    :cond_0
    :goto_0
    return v1

    .line 1012
    :cond_1
    const/4 v1, 0x0

    .line 1013
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v3

    .line 1014
    .local v3, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    .line 1015
    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1016
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1017
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1018
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1019
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->showOverflowMenu()Z

    move-result v1

    .line 1048
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1049
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1051
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_8

    .line 1052
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1022
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 1025
    :cond_4
    iget-boolean v5, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-nez v5, :cond_5

    iget-boolean v5, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isHandled:Z

    if-eqz v5, :cond_6

    .line 1028
    :cond_5
    iget-boolean v1, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    .line 1030
    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_1

    .line 1031
    :cond_6
    iget-boolean v5, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    if-eqz v5, :cond_2

    .line 1032
    const/4 v2, 0x1

    .line 1033
    .local v2, "show":Z
    iget-boolean v5, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v5, :cond_7

    .line 1036
    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    .line 1037
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1040
    :cond_7
    if-eqz v2, :cond_2

    .line 1042
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->openPanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1043
    const/4 v1, 0x1

    goto :goto_1

    .line 1054
    .end local v2    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_8
    const-string v4, "SeslCompatDelegate"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 17
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 627
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 635
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 636
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v14, 0x1

    .line 638
    .local v14, "isXLarge":Z
    :goto_1
    if-nez v14, :cond_0

    .line 643
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 644
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 646
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_0

    .line 636
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 650
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 651
    .local v16, "wm":Landroid/view/WindowManager;
    if-eqz v16, :cond_0

    .line 656
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    :cond_5
    const/4 v3, -0x2

    .line 666
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_c

    .line 667
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v4, :cond_b

    .line 669
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->initializePanelDecor(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 677
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->initializePanelContent(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 682
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 683
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 686
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->background:I

    .line 687
    .local v10, "backgroundResId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 689
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 690
    .local v15, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v15, :cond_9

    instance-of v4, v15, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 691
    check-cast v15, Landroid/view/ViewGroup;

    .end local v15    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 700
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 711
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_a
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isHandled:Z

    .line 713
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->y:I

    const/16 v7, 0x3ea

    const/high16 v8, 0x820000

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 720
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 721
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 723
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 671
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 673
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_2

    .line 702
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 705
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 706
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 707
    const/4 v3, -0x1

    goto :goto_3
.end method

.method private performPanelShortcut(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    const/4 v0, 0x0

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    const/4 v0, 0x0

    .line 1127
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v1, :cond_3

    .line 1129
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1132
    :cond_3
    if-eqz v0, :cond_0

    .line 1134
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-nez v1, :cond_0

    .line 1135
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v5

    .line 848
    :cond_1
    iget-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 849
    goto :goto_0

    .line 852
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 854
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    .line 857
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 859
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 860
    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 863
    :cond_4
    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    const/16 v6, 0x6c

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 866
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v3, :cond_6

    .line 869
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setMenuPrepared()V

    .line 872
    :cond_6
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    if-eqz v1, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->peekSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    if-nez v3, :cond_12

    .line 876
    :cond_7
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 877
    :cond_8
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v3, :cond_9

    .line 878
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->initializePanelMenu(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v3, :cond_0

    .line 883
    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v3, :cond_b

    .line 884
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    if-nez v3, :cond_a

    .line 885
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    .line 887
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 892
    :cond_b
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 893
    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 895
    invoke-virtual {p1, v8}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->setMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 897
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v3, :cond_0

    .line 899
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 863
    goto :goto_1

    .line 905
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshMenuContent:Z

    .line 910
    :cond_e
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 914
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 915
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 916
    iput-object v8, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 920
    :cond_f
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 921
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v3, :cond_10

    .line 924
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 926
    :cond_10
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 931
    :cond_11
    if-eqz p2, :cond_13

    .line 932
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 931
    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 933
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->qwertyMode:Z

    .line 934
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-boolean v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setQwertyMode(Z)V

    .line 935
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    .line 939
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    .line 940
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isHandled:Z

    .line 941
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move v5, v4

    .line 943
    goto/16 :goto_0

    .line 932
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 933
    goto :goto_3
.end method

.method private reopenMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 7
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x6c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 736
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    .line 737
    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 741
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 742
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 744
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 746
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 747
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 750
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 754
    .local v1, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 755
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 756
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 757
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->showOverflowMenu()Z

    .line 776
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 761
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->hideOverflowMenu()Z

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 763
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 764
    .restart local v1    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 770
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 772
    .restart local v1    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    iput-boolean v5, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    .line 773
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    .line 775
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->openPanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    .line 1262
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1263
    const-string v0, "SeslCompatDelegate"

    const-string v1, "You should now use the SeslCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/16 p1, 0x6c

    .line 1272
    .end local p1    # "featureId":I
    :cond_0
    :goto_0
    return p1

    .line 1266
    .restart local p1    # "featureId":I
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1267
    const-string v0, "SeslCompatDelegate"

    const-string v1, "You should now use the SeslCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v2, 0x0

    .line 565
    if-nez p1, :cond_0

    move v1, v2

    .line 583
    :goto_0
    return v1

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, "windowDecor":Landroid/view/View;
    :goto_1
    if-nez p1, :cond_1

    .line 576
    const/4 v1, 0x1

    goto :goto_0

    .line 577
    :cond_1
    if-eq p1, v0, :cond_2

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 578
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 583
    goto :goto_0

    .line 585
    :cond_3
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1413
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mApplyDayNightCalled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 1416
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1418
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1419
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 1418
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1422
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 1430
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 1422
    goto :goto_0

    .line 1423
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SeslCompatDelegate"

    const-string v5, "Exception while getting ActivityInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 1430
    goto :goto_0
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 1256
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_0
    return-void
.end method

.method private updateForNightMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 1350
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1351
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1352
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v8, 0x30

    .line 1354
    .local v3, "currentNightMode":I
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    const/16 v5, 0x20

    .line 1358
    .local v5, "newNightMode":I
    :goto_0
    if-eq v3, v5, :cond_2

    .line 1359
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->shouldRecreateOnNightModeChange()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1366
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 1391
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    const/4 v8, 0x1

    .line 1397
    :goto_2
    return v8

    .line 1354
    .end local v5    # "newNightMode":I
    :cond_0
    const/16 v5, 0x10

    goto :goto_0

    .line 1371
    .restart local v5    # "newNightMode":I
    :cond_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1372
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1373
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1376
    .local v6, "originalFontScale":F
    iget v8, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v8, v5

    iput v8, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 1379
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1382
    invoke-virtual {v7, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1387
    iput v6, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1388
    invoke-virtual {v7, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 1397
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "originalFontScale":F
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 1848
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1849
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1850
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 1851
    return-void
.end method

.method public applyDayNight()Z
    .locals 4

    .prologue
    .line 2194
    const/4 v0, 0x0

    .line 2196
    .local v0, "applied":Z
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getNightMode()I

    move-result v2

    .line 2197
    .local v2, "nightMode":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mapNightMode(I)I

    move-result v1

    .line 2198
    .local v1, "modeToApply":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2199
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->updateForNightMode(I)Z

    move-result v0

    .line 2202
    :cond_0
    if-nez v2, :cond_1

    .line 2204
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureAutoNightModeManager()V

    .line 2205
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->setup()V

    .line 2208
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mApplyDayNightCalled:Z

    .line 2209
    return v0
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 622
    const/4 v0, 0x0

    return-object v0
.end method

.method callOnPanelClosed(ILcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1062
    if-nez p3, :cond_1

    .line 1064
    if-nez p2, :cond_0

    .line 1065
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1070
    :cond_0
    if-eqz p2, :cond_1

    .line 1072
    iget-object p3, p2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 1077
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_3

    .line 1086
    :cond_2
    :goto_0
    return-void

    .line 1080
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method checkCloseActionMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 947
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 958
    :goto_0
    return-void

    .line 951
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mClosingActionMenu:Z

    .line 952
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->dismissPopups()V

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 954
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 955
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 957
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 961
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    .line 962
    return-void
.end method

.method closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V
    .locals 5
    .param p1, "st"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 965
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    .line 966
    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->checkCloseActionMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 972
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 973
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 975
    if-eqz p2, :cond_2

    .line 976
    iget v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v1, p1, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->callOnPanelClosed(ILcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 980
    :cond_2
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    .line 981
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isHandled:Z

    .line 982
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    .line 985
    iput-object v4, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 989
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    .line 991
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 992
    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mViewInflater:Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mViewInflater:Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mViewInflater:Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method dismissPopups()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1280
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->dismissPopups()V

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1285
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1286
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1296
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->endOnGoingFadeAnimation()V

    .line 1298
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    .line 1299
    .local v0, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v1, :cond_3

    .line 1300
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close()V

    .line 1302
    :cond_3
    return-void

    .line 1289
    .end local v0    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 460
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 462
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    :goto_0
    return v3

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 468
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 469
    .local v0, "action":I
    if-nez v0, :cond_1

    move v1, v3

    .line 471
    .local v1, "isDown":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 469
    .end local v1    # "isDown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 471
    .restart local v1    # "isDown":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1152
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 1153
    .local v1, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    const/4 v0, 0x0

    .line 1154
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v2, :cond_1

    .line 1155
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1156
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1158
    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1161
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 1162
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->clear()V

    .line 1164
    :cond_1
    iput-boolean v4, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1165
    iput-boolean v4, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    .line 1168
    const/16 v2, 0x6c

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v2, :cond_3

    .line 1170
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 1171
    if-eqz v1, :cond_3

    .line 1172
    iput-boolean v3, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    .line 1173
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1176
    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 1753
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .line 1090
    .local v3, "panels":[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1091
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1092
    aget-object v2, v3, v1

    .line 1093
    .local v2, "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1097
    .end local v2    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1090
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1091
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1097
    .end local v2    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1499
    const/4 v1, 0x0

    .line 1502
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1503
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 1507
    :cond_0
    if-nez v1, :cond_1

    .line 1508
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1510
    :cond_1
    return-object v1
.end method

.method final getAutoNightModeManager()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureAutoNightModeManager()V

    .line 1409
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 1495
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslActionBarDrawableToggleImpl;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 408
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    .line 409
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .local v0, "ar":[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1103
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .line 1104
    .local v1, "nar":[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1105
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPanels:[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .line 1110
    .end local v1    # "nar":[Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1111
    .local v2, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1112
    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    .end local v2    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1114
    :cond_3
    return-object v2
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 2164
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 2165
    sparse-switch p1, :sswitch_data_0

    .line 2179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 2167
    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    goto :goto_0

    .line 2169
    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    goto :goto_0

    .line 2171
    :sswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionMode:Z

    goto :goto_0

    .line 2173
    :sswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureProgress:Z

    goto :goto_0

    .line 2175
    :sswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 2177
    :sswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindowNoTitle:Z

    goto :goto_0

    .line 2165
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 333
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    .line 338
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 336
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 3

    .prologue
    .line 591
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 592
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 593
    invoke-static {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    if-nez v1, :cond_0

    .line 597
    const-string v1, "SeslCompatDelegate"

    const-string v2, "The Activity\'s LayoutInflater already has a Factory installed so we can not install SeslCompat\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1586
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1588
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method final isDestroyed()Z
    .locals 1

    .prologue
    .line 2213
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsDestroyed:Z

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHandleNativeActionModes:Z

    return v0
.end method

.method final isStarted()Z
    .locals 1

    .prologue
    .line 2217
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsStarted:Z

    return v0
.end method

.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1328
    sparse-switch p1, :sswitch_data_0

    .line 1336
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 1330
    .restart local p1    # "mode":I
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureAutoNightModeManager()V

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    goto :goto_0

    .line 1334
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 1328
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1757
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v2, :cond_1

    .line 1758
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->finish()V

    .line 1769
    :cond_0
    :goto_0
    return v1

    .line 1763
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1764
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->collapseActionView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1769
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1776
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1780
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1786
    .end local v0    # "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->applyDayNight()Z

    .line 1787
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/16 v2, -0x64

    .line 299
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/app/SeslNavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->peekSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 303
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-nez v0, :cond_2

    .line 304
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mEnableDefaultActionBarUp:Z

    .line 311
    .end local v0    # "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    if-ne v1, v2, :cond_1

    .line 314
    const-string/jumbo v1, "seslcompat:local_night_mode"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    .line 317
    :cond_1
    return-void

    .line 306
    .restart local v0    # "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 610
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 611
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 616
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1855
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsDestroyed:Z

    .line 1861
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->onDestroy()V

    .line 1866
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    if-eqz v0, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->cleanup()V

    .line 1869
    :cond_2
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 515
    :goto_1
    return v0

    .line 504
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 512
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLongPressBackDown:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_2

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 521
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v3

    .line 527
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-eqz v5, :cond_2

    .line 528
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v5, v6, p2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->performPanelShortcut(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 530
    .local v1, "handled":Z
    if-eqz v1, :cond_2

    .line 531
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-eqz v4, :cond_0

    .line 532
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    iput-boolean v3, v4, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isHandled:Z

    goto :goto_0

    .line 542
    .end local v1    # "handled":Z
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mPreparedPanel:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    if-nez v5, :cond_3

    .line 543
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v2

    .line 544
    .local v2, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->preparePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 545
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->performPanelShortcut(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 546
    .restart local v1    # "handled":Z
    iput-boolean v4, v2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isPrepared:Z

    .line 547
    if-nez v1, :cond_0

    .end local v1    # "handled":Z
    .end local v2    # "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_3
    move v3, v4

    .line 551
    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 475
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 498
    :cond_1
    :goto_0
    return v2

    .line 477
    :sswitch_0
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 480
    :sswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLongPressBackDown:Z

    .line 481
    .local v1, "wasLongPressBackDown":Z
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLongPressBackDown:Z

    .line 483
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    .line 484
    .local v0, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_2

    .line 485
    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 475
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 445
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->findMenuPanel(Landroid/view/Menu;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 447
    .local v1, "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 448
    iget v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 451
    .end local v1    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->reopenMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 457
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 432
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 434
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 439
    .end local v0    # "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 416
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 418
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 429
    .end local v0    # "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    if-nez p1, :cond_0

    .line 424
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 425
    .local v1, "st":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    iget-boolean v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 323
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1813
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1814
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1816
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2232
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 2234
    const-string/jumbo v0, "seslcompat:local_night_mode"

    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2236
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsStarted:Z

    .line 1794
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->applyDayNight()Z

    .line 1795
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1800
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_0

    .line 1801
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1805
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    if-eqz v1, :cond_1

    .line 1806
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mAutoNightModeManager:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->cleanup()V

    .line 1808
    :cond_1
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 2081
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mDecorContentParent:Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2246
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->peekSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2242
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->peekSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2243
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final peekSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    return-object v0
.end method

.method public requestWindowFeature(I)Z
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2122
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 2124
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x6c

    if-ne p1, v2, :cond_0

    .line 2159
    :goto_0
    return v0

    .line 2127
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 2129
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    .line 2132
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 2134
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2135
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    move v0, v1

    .line 2136
    goto :goto_0

    .line 2138
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2139
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionBar:Z

    move v0, v1

    .line 2140
    goto :goto_0

    .line 2142
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2143
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionMode:Z

    move v0, v1

    .line 2144
    goto :goto_0

    .line 2146
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2147
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureProgress:Z

    move v0, v1

    .line 2148
    goto :goto_0

    .line 2150
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2151
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFeatureIndeterminateProgress:Z

    move v0, v1

    .line 2152
    goto :goto_0

    .line 2154
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 2155
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindowNoTitle:Z

    move v0, v1

    .line 2156
    goto :goto_0

    .line 2132
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 1829
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 1830
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1831
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1832
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1833
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 1834
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 1821
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1822
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1823
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1824
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 1825
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1838
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->ensureSubDecor()V

    .line 1839
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1840
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1841
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 1843
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2184
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHandleNativeActionModes:Z

    .line 2185
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1306
    packed-switch p1, :pswitch_data_0

    .line 1321
    const-string v0, "SeslCompatDelegate"

    const-string/jumbo v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1311
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    .line 1312
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mLocalNightMode:I

    .line 1313
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->applyDayNight()Z

    goto :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSupportActionBar(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 4
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 378
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 351
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    instance-of v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    if-eqz v2, :cond_1

    .line 352
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a SeslToolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 362
    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->onDestroy()V

    .line 366
    :cond_2
    if-eqz p1, :cond_3

    .line 367
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 368
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 369
    .local v1, "tbab":Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    .line 370
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 377
    .end local v1    # "tbab":Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->invalidateOptionsMenu()V

    goto :goto_0

    .line 372
    :cond_3
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionBar:Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    .line 374
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 2227
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 2228
    return-void
.end method

.method final shouldAnimateActionModeView()Z
    .locals 1

    .prologue
    .line 1746
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1557
    if-nez p1, :cond_0

    .line 1558
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SeslActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1561
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v2, :cond_1

    .line 1562
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->finish()V

    .line 1565
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)V

    .line 1567
    .local v1, "wrappedCallback":Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 1568
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v0, :cond_2

    .line 1569
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->startActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 1570
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    if-eqz v2, :cond_2

    .line 1571
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-interface {v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;->onSupportActionModeStarted(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 1575
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-nez v2, :cond_3

    .line 1577
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->startSupportActionModeFromWindow(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 1580
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    return-object v2
.end method

.method startSupportActionModeFromWindow(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .locals 11
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->endOnGoingFadeAnimation()V

    .line 1593
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v8, :cond_0

    .line 1594
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->finish()V

    .line 1597
    :cond_0
    instance-of v8, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    if-nez v8, :cond_1

    .line 1599
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)V

    .end local p1    # "callback":Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    .local v3, "callback":Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    move-object p1, v3

    .line 1602
    .end local v3    # "callback":Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    .restart local p1    # "callback":Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    :cond_1
    const/4 v5, 0x0

    .line 1603
    .local v5, "mode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1605
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    invoke-interface {v8, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;->onWindowStartingSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1611
    :cond_2
    :goto_0
    if-eqz v5, :cond_5

    .line 1612
    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 1737
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    if-eqz v8, :cond_4

    .line 1738
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-interface {v8, v9}, Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;->onSupportActionModeStarted(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 1740
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    return-object v8

    .line 1614
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    if-nez v8, :cond_6

    .line 1615
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mIsFloating:Z

    if-eqz v8, :cond_9

    .line 1617
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 1618
    .local v6, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1619
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v8, 0x1010431

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1622
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_8

    .line 1623
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1624
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1625
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1627
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1628
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1633
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-direct {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    .line 1634
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    sget v10, Lcom/samsung/android/support/sesl/R$attr;->seslActionModePopupWindowStyle:I

    invoke-direct {v8, v0, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1636
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 1638
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1639
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1641
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x10102eb

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1643
    iget v8, v6, Landroid/util/TypedValue;->data:I

    .line 1644
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 1643
    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 1645
    .local v4, "height":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setContentHeight(I)V

    .line 1646
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1647
    new-instance v8, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 1688
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "height":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    if-eqz v8, :cond_3

    .line 1689
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->endOnGoingFadeAnimation()V

    .line 1690
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->killMode()V

    .line 1691
    new-instance v5, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;

    .end local v5    # "mode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-direct {v5, v9, v10, p1, v8}, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;Z)V

    .line 1693
    .restart local v5    # "mode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onCreateActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1694
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->invalidate()V

    .line 1695
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->initForMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 1696
    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 1698
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->shouldAnimateActionModeView()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1699
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setAlpha(F)V

    .line 1700
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1701
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    new-instance v9, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1729
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_3

    .line 1730
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1630
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_2

    .line 1678
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Lcom/samsung/android/support/sesl/R$id;->action_mode_bar_stub:I

    .line 1679
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;

    .line 1680
    .local v7, "stub":Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;
    if-eqz v7, :cond_6

    .line 1682
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1683
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    goto/16 :goto_3

    .line 1691
    .end local v5    # "mode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .end local v7    # "stub":Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 1720
    .restart local v5    # "mode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    :cond_b
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setAlpha(F)V

    .line 1721
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    .line 1722
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1724
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_7

    .line 1725
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_5

    .line 1733
    :cond_c
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    goto/16 :goto_1

    .line 1606
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1185
    const/4 v6, 0x0

    .line 1187
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    if-eqz v8, :cond_3

    .line 1188
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1189
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    .line 1190
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1191
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1193
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1194
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1195
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1196
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1199
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1200
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1202
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1203
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1204
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1205
    const/4 v4, 0x1

    .line 1206
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1208
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1209
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    .line 1210
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$color;->sesl_input_method_navigation_guard:I

    .line 1211
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1210
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1212
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1232
    :goto_2
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1233
    const/4 p1, 0x0

    .line 1242
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1243
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1248
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1203
    goto :goto_0

    .line 1216
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1217
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1218
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1219
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1226
    goto :goto_2

    .line 1237
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1238
    const/4 v4, 0x1

    .line 1239
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1248
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 388
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method
