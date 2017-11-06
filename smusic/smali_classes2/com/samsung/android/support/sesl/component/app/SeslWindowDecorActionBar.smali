.class public Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;
.super Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
.source "SeslWindowDecorActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeslWindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

.field mDeferredDestroyActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

.field mDeferredModeDestroyCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->$assertionsDisabled:Z

    .line 76
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    .line 110
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    .line 115
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    .line 121
    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 138
    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 146
    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    .line 156
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 158
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->init(Landroid/view/View;)V

    .line 160
    if-nez p2, :cond_0

    .line 161
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 163
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    .line 121
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 138
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 146
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 167
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->init(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    .line 121
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 138
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 146
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    .line 176
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->init(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 511
    if-eqz p2, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 514
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 225
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 224
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    if-eqz v0, :cond_1

    .line 225
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getWrapper()Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 227
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 465
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowingForMode:Z

    .line 466
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 469
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 471
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    sget v5, Lcom/samsung/android/support/sesl/R$id;->decor_content_parent:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    .line 182
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 185
    :cond_0
    sget v5, Lcom/samsung/android/support/sesl/R$id;->action_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 186
    sget v5, Lcom/samsung/android/support/sesl/R$id;->action_context_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    .line 188
    sget v5, Lcom/samsung/android/support/sesl/R$id;->action_bar_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 191
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    if-nez v5, :cond_2

    .line 192
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 199
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 200
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_7

    move v4, v7

    .line 201
    .local v4, "homeAsUp":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 202
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 205
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->get(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;

    move-result-object v1

    .line 206
    .local v1, "abp":Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_8

    :cond_4
    move v5, v7

    :goto_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 208
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar:[I

    const v10, 0x10102ce

    invoke-virtual {v5, v8, v9, v10, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_hideOnContentScroll:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 214
    :cond_5
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_elevation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 215
    .local v3, "elevation":I
    if-eqz v3, :cond_6

    .line 216
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setElevation(F)V

    .line 218
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v4, v6

    .line 200
    goto :goto_0

    .restart local v1    # "abp":Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_8
    move v5, v6

    .line 206
    goto :goto_1
.end method

.method private shouldAnimateContextView()Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 439
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 440
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowingForMode:Z

    .line 441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 444
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 446
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 522
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 525
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 526
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    .line 528
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->doShow(Z)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    .line 533
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public animateToMode(Z)V
    .locals 12
    .param p1, "toActionMode"    # Z

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v8, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 627
    if-eqz p1, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->showForActionMode()V

    .line 633
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    if-eqz p1, :cond_1

    .line 640
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v3, v5, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    .line 642
    .local v1, "fadeOut":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v3, v4, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 650
    .local v0, "fadeIn":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :goto_1
    new-instance v2, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;-><init>()V

    .line 651
    .local v2, "set":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->playSequentially(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 652
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->start()V

    .line 663
    .end local v0    # "fadeIn":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v1    # "fadeOut":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v2    # "set":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    :goto_2
    return-void

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v3, v4, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 647
    .restart local v0    # "fadeIn":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v3, v6, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    .restart local v1    # "fadeOut":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    goto :goto_1

    .line 654
    .end local v0    # "fadeIn":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v1    # "fadeOut":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_2
    if-eqz p1, :cond_3

    .line 655
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 658
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setVisibility(I)V

    .line 659
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->collapseActionView()V

    .line 728
    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 245
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 246
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 248
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 277
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 286
    :cond_0
    return-void

    .line 280
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mLastMenuVisibility:Z

    .line 282
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 283
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 284
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x1

    .line 589
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->cancel()V

    .line 593
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_4

    .line 595
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setAlpha(F)V

    .line 596
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTransitioning(Z)V

    .line 597
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;-><init>()V

    .line 598
    .local v1, "anim":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 599
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 600
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 601
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getLocationInWindow([I)V

    .line 602
    aget v4, v3, v6

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 604
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 605
    .local v0, "a":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setUpdateListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 606
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->play(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 607
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->play(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 610
    :cond_3
    sget-object v4, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 611
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 612
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 613
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 614
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->start()V

    .line 618
    .end local v0    # "a":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .end local v2    # "endingY":F
    :goto_0
    return-void

    .line 616
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 600
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 539
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 540
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->cancel()V

    .line 542
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setVisibility(I)V

    .line 544
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTranslationY(F)V

    .line 548
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 549
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 550
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 551
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getLocationInWindow([I)V

    .line 552
    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 554
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTranslationY(F)V

    .line 555
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;-><init>()V

    .line 556
    .local v1, "anim":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 557
    .local v0, "a":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mUpdateListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setUpdateListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 558
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->play(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 559
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 560
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 561
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->play(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 563
    :cond_3
    sget-object v4, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 564
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 572
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 573
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 574
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->start()V

    .line 583
    .end local v0    # "a":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .end local v2    # "startingY":F
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    if-eqz v4, :cond_4

    .line 584
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestApplyInsets()V

    .line 586
    :cond_4
    return-void

    .line 576
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setAlpha(F)V

    .line 577
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTranslationY(F)V

    .line 578
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 579
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 581
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 550
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    .line 428
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 672
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 673
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 674
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 675
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 676
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 678
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 679
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 684
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 681
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 475
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    .line 476
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->getHeight()I

    move-result v0

    .line 623
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->cancel()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 718
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurWindowVisibility:I

    .line 252
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 346
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 348
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 291
    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 910
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    .prologue
    .line 914
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 916
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 950
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 306
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayOptions(II)V

    .line 307
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 358
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setDisplayOptions(I)V

    .line 362
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 366
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setDisplayOptions(I)V

    .line 370
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 316
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayOptions(II)V

    .line 317
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 301
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayOptions(II)V

    .line 302
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 311
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayOptions(II)V

    .line 312
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 296
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setDisplayOptions(II)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setElevation(F)V

    .line 235
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 502
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 507
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 482
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideOnContentScroll:Z

    .line 487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 488
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationContentDescription(I)V

    .line 710
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 705
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationIcon(I)V

    .line 700
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 695
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setHomeButtonEnabled(Z)V

    .line 322
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(I)V

    .line 921
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 926
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 934
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setLogo(I)V

    .line 935
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 940
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 263
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->cancel()V

    .line 266
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 382
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 433
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    .line 434
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->updateVisibility(Z)V

    .line 453
    :cond_0
    return-void
.end method

.method public startActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->finish()V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->killMode()V

    .line 407
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)V

    .line 408
    .local v0, "mode":Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    .line 412
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 413
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->initForMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 414
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->animateToMode(Z)V

    .line 415
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->sendAccessibilityEvent(I)V

    .line 418
    .end local v0    # "mode":Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
