.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;,
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    }
.end annotation


# static fields
.field protected static final KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field protected static final KEY_WINDOW_POSITION_Y:Ljava/lang/String; = "shared_element:windowPositionY"

.field public static final MSG_CANCEL:I = 0x6a

.field public static final MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field private static final SAFE_DEBUG:Z

.field protected static final SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsReturning:Z

.field private mIsStartingTransition:Z

.field protected mListener:Landroid/app/SharedElementCallback;

.field private mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTransition:Ljava/lang/Runnable;

.field protected mResultReceiver:Landroid/os/ResultReceiver;

.field protected final mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementTransitionComplete:Z

.field protected final mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsTransitionComplete:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    .line 150
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "allSharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    .line 229
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 230
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 231
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .line 232
    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    .line 227
    return-void
.end method

.method private static getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitionArgs"    # Landroid/os/Bundle;

    .prologue
    .line 618
    new-instance v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v3}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    .line 619
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    .line 622
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    .line 623
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    .line 627
    instance-of v4, p0, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 628
    return-object v3

    .line 630
    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 631
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 632
    return-object v3

    .line 634
    :cond_1
    const-string/jumbo v4, "shared_element:scaleType"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 635
    .local v2, "scaleTypeInt":I
    if-gez v2, :cond_2

    .line 636
    return-object v3

    :cond_2
    move-object v1, p0

    .line 639
    check-cast v1, Landroid/widget/ImageView;

    .line 640
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 641
    iget-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_3

    .line 642
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    .line 644
    :cond_3
    return-object v3
.end method

.method private getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 550
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    const/4 v0, -0x1

    .line 552
    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_2

    .line 553
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 555
    .local v3, "viewParent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 557
    check-cast v1, Landroid/view/ViewGroup;

    .line 558
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 559
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 549
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_1
    return-void

    .line 551
    .end local v0    # "index":I
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 564
    .restart local v0    # "index":I
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 565
    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method public static isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .locals 2
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "decor"    # Landroid/view/ViewGroup;

    .prologue
    .line 894
    if-eq p0, p1, :cond_0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 897
    check-cast v0, Landroid/view/ViewGroup;

    .line 898
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    const/4 v1, 0x1

    return v1

    .line 895
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 901
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v1

    return v1
.end method

.method private static isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 284
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v0, 0x0

    .line 285
    .local v0, "isNested":Z
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 286
    check-cast v2, Landroid/view/View;

    .line 287
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    const/4 v0, 0x1

    .line 293
    .end local v2    # "parentView":Landroid/view/View;
    :cond_0
    return v0

    .line 291
    .restart local v2    # "parentView":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method protected static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 1
    .param p0, "transition1"    # Landroid/transition/Transition;
    .param p1, "transition2"    # Landroid/transition/Transition;

    .prologue
    .line 402
    if-nez p0, :cond_0

    .line 403
    return-object p1

    .line 404
    :cond_0
    if-nez p1, :cond_1

    .line 405
    return-object p0

    .line 407
    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 408
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 409
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 410
    return-object v0
.end method

.method private static noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V
    .locals 5
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1035
    instance-of v4, p0, Landroid/transition/Visibility;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 1036
    check-cast v3, Landroid/transition/Visibility;

    .line 1037
    .local v3, "visibility":Landroid/transition/Visibility;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/transition/Visibility;->setSuppressLayout(Z)V

    .line 1034
    .end local v3    # "visibility":Landroid/transition/Visibility;
    :cond_0
    return-void

    .line 1038
    :cond_1
    instance-of v4, p0, Landroid/transition/TransitionSet;

    if-eqz v4, :cond_0

    move-object v2, p0

    .line 1039
    check-cast v2, Landroid/transition/TransitionSet;

    .line 1040
    .local v2, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    .line 1041
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1042
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private releaseViewRootPauseInput()V
    .locals 5

    .prologue
    .line 727
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 728
    const-string/jumbo v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseViewRootPauseInput : this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 731
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 733
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 734
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 735
    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "releaseViewRootPauseInput : call viewRoot.setPausedForTransition(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 726
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    return-void
.end method

.method private static scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .locals 2
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1011
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 1012
    return v0

    .line 1010
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private setEpicenter(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 334
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v2}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    .line 332
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 338
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected static setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "originalState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    const/high16 v10, 0x40000000    # 2.0f

    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 681
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 682
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    .line 683
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v6, :cond_0

    move-object v2, v4

    .line 684
    check-cast v2, Landroid/widget/ImageView;

    .line 685
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 686
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_0

    .line 687
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 690
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setElevation(F)V

    .line 691
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 692
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 694
    .local v5, "widthSpec":I
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 696
    .local v0, "heightSpec":I
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    .line 697
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v7, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v8, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v9, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v0    # "heightSpec":I
    .end local v3    # "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "widthSpec":I
    :cond_1
    return-void
.end method

.method private setSharedElementMatrices()V
    .locals 7

    .prologue
    .line 533
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 534
    .local v2, "numSharedElements":I
    if-lez v2, :cond_0

    .line 535
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 537
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 538
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 541
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 542
    .local v3, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 543
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 544
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 545
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .locals 34
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempRect"    # Landroid/graphics/RectF;
    .param p6, "decorLoc"    # [I

    .prologue
    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 439
    .local v21, "sharedElementBundle":Landroid/os/Bundle;
    if-nez v21, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 444
    const-string/jumbo v31, "shared_element:scaleType"

    const/16 v32, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 445
    .local v20, "scaleTypeInt":I
    if-ltz v20, :cond_1

    move-object/from16 v11, p1

    .line 446
    check-cast v11, Landroid/widget/ImageView;

    .line 447
    .local v11, "imageView":Landroid/widget/ImageView;
    sget-object v31, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v19, v31, v20

    .line 448
    .local v19, "scaleType":Landroid/widget/ImageView$ScaleType;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 449
    sget-object v31, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 450
    const-string/jumbo v31, "shared_element:imageMatrix"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v14

    .line 451
    .local v14, "matrixValues":[F
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->setValues([F)V

    .line 452
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 457
    .end local v11    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "matrixValues":[F
    .end local v19    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v20    # "scaleTypeInt":I
    :cond_1
    const-string/jumbo v31, "shared_element:translationZ"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v30

    .line 458
    .local v30, "z":F
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 459
    const-string/jumbo v31, "shared_element:elevation"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 460
    .local v7, "elevation":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setElevation(F)V

    .line 462
    const-string/jumbo v31, "shared_element:screenLeft"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    .line 463
    .local v12, "left":F
    const-string/jumbo v31, "shared_element:screenTop"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v23

    .line 464
    .local v23, "top":F
    const-string/jumbo v31, "shared_element:screenRight"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v18

    .line 465
    .local v18, "right":F
    const-string/jumbo v31, "shared_element:screenBottom"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 467
    .local v5, "bottom":F
    if-eqz p6, :cond_2

    .line 468
    const/16 v31, 0x0

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v12, v12, v31

    .line 469
    const/16 v31, 0x1

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v23, v23, v31

    .line 470
    const/16 v31, 0x0

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v18, v18, v31

    .line 471
    const/16 v31, 0x1

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v5, v5, v31

    .line 521
    :goto_0
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 522
    .local v28, "x":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 523
    .local v29, "y":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v31

    sub-int v26, v31, v28

    .line 524
    .local v26, "width":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v31

    sub-int v9, v31, v29

    .line 525
    .local v9, "height":I
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v26

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 526
    .local v27, "widthSpec":I
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v31

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 527
    .local v10, "heightSpec":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 529
    add-int v31, v28, v26

    add-int v32, v29, v9

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 437
    return-void

    .line 474
    .end local v9    # "height":I
    .end local v10    # "heightSpec":I
    .end local v26    # "width":I
    .end local v27    # "widthSpec":I
    .end local v28    # "x":I
    .end local v29    # "y":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v6

    .line 479
    .local v6, "decorView":Landroid/view/ViewGroup;
    if-eqz v6, :cond_3

    .line 480
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v31

    const/16 v32, 0x1

    aget v15, v31, v32

    .line 481
    .local v15, "newTop":I
    const-string/jumbo v31, "shared_element:windowPositionY"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 483
    .local v16, "oldTop":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Matrix;->reset()V

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 485
    .local v17, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 486
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p4

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 488
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 489
    .local v22, "tempFloats":[F
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 490
    const/16 v31, 0x5

    aget v32, v22, v31

    sub-int v33, v15, v16

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    aput v32, v22, v31

    .line 491
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 496
    .end local v15    # "newTop":I
    .end local v16    # "oldTop":I
    .end local v17    # "parent":Landroid/view/ViewGroup;
    .end local v22    # "tempFloats":[F
    :cond_3
    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 497
    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 499
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    .line 500
    .local v13, "leftInParent":F
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    .line 503
    .local v24, "topInParent":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 504
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v25

    .line 505
    .local v25, "width":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 508
    .local v8, "height":F
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 509
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 510
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 511
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 512
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 515
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    sub-float v12, v13, v31

    .line 516
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    sub-float v23, v24, v31

    .line 517
    add-float v18, v12, v25

    .line 518
    add-float v5, v23, v8

    goto/16 :goto_0
.end method

.method private setSharedElements(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x1

    .line 262
    .local v1, "isFirstRun":Z
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 263
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 264
    .local v3, "numSharedElements":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 265
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 266
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    .local v2, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_2

    .line 268
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 264
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 269
    :cond_2
    invoke-static {v4, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 270
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 275
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v3    # "numSharedElements":I
    :cond_4
    return-void
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setTransitionAlpha"    # Z

    .prologue
    .line 765
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 766
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 769
    :cond_0
    if-eqz p2, :cond_1

    .line 770
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 764
    :cond_1
    return-void
.end method

.method private startInputWhenTransitionsComplete()V
    .locals 5

    .prologue
    .line 967
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 968
    const-string/jumbo v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputWhenTransitionsComplete : this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v2, :cond_3

    .line 971
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 972
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 973
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 974
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 975
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 976
    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "startInputWhenTransitionsComplete : call viewRoot.setPausedForTransition(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 983
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    .line 966
    .end local v0    # "decor":Landroid/view/View;
    :cond_3
    return-void

    .line 980
    .restart local v0    # "decor":Landroid/view/View;
    :cond_4
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 981
    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "startInputWhenTransitionsComplete : decor is null.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected cancelPendingTransitions()Z
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 850
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected captureSharedElementState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 702
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 704
    .local v5, "tempBounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 705
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 707
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    move-object v0, p0

    .line 708
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 710
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method protected captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v8, 0x0

    .line 786
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v5, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 788
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 790
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 792
    const-string/jumbo v6, "shared_element:screenLeft"

    iget v7, p5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 793
    const-string/jumbo v6, "shared_element:screenRight"

    iget v7, p5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 794
    const-string/jumbo v6, "shared_element:screenTop"

    iget v7, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 795
    const-string/jumbo v6, "shared_element:screenBottom"

    iget v7, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 796
    const-string/jumbo v6, "shared_element:translationZ"

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 797
    const-string/jumbo v6, "shared_element:elevation"

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 800
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 801
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 802
    const-string/jumbo v6, "shared_element:windowPositionY"

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    :cond_0
    const/4 v0, 0x0

    .line 808
    .local v0, "bitmap":Landroid/os/Parcelable;
    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v6, :cond_1

    .line 809
    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v6, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    .line 812
    .end local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_1
    if-eqz v0, :cond_2

    .line 813
    const-string/jumbo v6, "shared_element:bitmap"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 816
    :cond_2
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p1

    .line 817
    check-cast v2, Landroid/widget/ImageView;

    .line 818
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result v4

    .line 819
    .local v4, "scaleTypeInt":I
    const-string/jumbo v6, "shared_element:scaleType"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    .line 821
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 822
    .local v3, "matrix":[F
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 823
    const-string/jumbo v6, "shared_element:imageMatrix"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 827
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":[F
    .end local v4    # "scaleTypeInt":I
    :cond_3
    invoke-virtual {p3, p2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 785
    return-void
.end method

.method protected clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 715
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->releaseViewRootPauseInput()V

    .line 716
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 717
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 718
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 719
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 720
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 721
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 722
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 723
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 713
    return-void
.end method

.method protected configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "includeTransitioningViews"    # Z

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 394
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 395
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 397
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 398
    return-object p1
.end method

.method public copyMappedViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    .line 649
    .local v10, "numSharedElements":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    .local v13, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_0

    .line 651
    return-object v13

    .line 653
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 654
    .local v7, "context":Landroid/content/Context;
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 655
    .local v6, "decorLoc":[I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v8

    .line 656
    .local v8, "decorView":Landroid/view/ViewGroup;
    if-eqz v8, :cond_1

    .line 657
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 659
    :cond_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 660
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 661
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 662
    .local v12, "sharedElementBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 663
    .local v1, "snapshot":Landroid/view/View;
    if-eqz v12, :cond_3

    .line 664
    const-string/jumbo v0, "shared_element:bitmap"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 665
    .local v11, "parcelable":Landroid/os/Parcelable;
    if-eqz v11, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, v7, v11}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v1

    .line 668
    .end local v1    # "snapshot":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    .line 669
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 673
    .end local v11    # "parcelable":Landroid/os/Parcelable;
    :cond_3
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_4
    return-object v13
.end method

.method public getAcceptedNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDecor()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 315
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected getFadeDuration()J
    .locals 2

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMappedNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 349
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object v1
.end method

.method protected abstract getViewsTransition()Landroid/transition/Transition;
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected hideViews(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 748
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 749
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 750
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected isViewsTransitionComplete()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method protected mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 417
    .local v2, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p1, :cond_0

    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 419
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 423
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 427
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-object v2
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method protected moveSharedElementsFromOverlay()V
    .locals 9

    .prologue
    .line 906
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 907
    .local v4, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 908
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    .line 909
    .local v3, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v3}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 910
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    .end local v3    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 917
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 918
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 919
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v5

    .line 920
    .local v5, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 921
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 922
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 923
    .local v7, "sharedElement":Landroid/view/View;
    invoke-static {v7}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    .end local v0    # "count":I
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v7    # "sharedElement":Landroid/view/View;
    :cond_1
    return-void

    .line 905
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method protected moveSharedElementsToOverlay()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 854
    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 857
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    .line 858
    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 859
    .local v6, "numSharedElements":I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 860
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 861
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v5

    .line 863
    .local v5, "moveWithParent":Z
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_0

    move-object v0, v1

    .line 864
    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 865
    .local v0, "d":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupportBridge()Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-result-object v2

    .line 866
    .local v2, "decorBridge":Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->getStackId()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 867
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 872
    .end local v0    # "d":Lcom/android/internal/policy/DecorView;
    .end local v2    # "decorBridge":Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;
    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 873
    .local v8, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 874
    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 875
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 876
    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    invoke-virtual {v10, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 877
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 878
    invoke-static {v9, v1, v8}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    .line 879
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 880
    .local v7, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    invoke-static {v7, v1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 873
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 855
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v5    # "moveWithParent":Z
    .end local v6    # "numSharedElements":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 881
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    .restart local v3    # "i":I
    .restart local v5    # "moveWithParent":Z
    .restart local v6    # "numSharedElements":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v8    # "tempMatrix":Landroid/graphics/Matrix;
    .restart local v9    # "view":Landroid/view/View;
    :cond_3
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-direct {v4, v9, v7, v1}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 882
    .local v4, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 883
    iget-object v10, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    .end local v3    # "i":I
    .end local v4    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    .end local v5    # "moveWithParent":Z
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected notifySharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 593
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method protected pauseInput()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 988
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 989
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_1

    .line 990
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 991
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 987
    :cond_0
    return-void

    .line 989
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_0
.end method

.method protected scheduleGhostVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 940
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 942
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$2;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;I)V

    .line 941
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 938
    :cond_0
    return-void
.end method

.method protected scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 601
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 603
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$1;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 602
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 599
    :cond_0
    return-void
.end method

.method protected setEpicenter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "epicenter":Landroid/view/View;
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    .end local v0    # "epicenter":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    .line 321
    return-void

    .line 324
    .restart local v0    # "epicenter":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 325
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 326
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "epicenter":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .local v0, "epicenter":Landroid/view/View;
    goto :goto_0
.end method

.method protected setGhostVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 929
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 930
    .local v2, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 931
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    .line 932
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 930
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    .end local v0    # "ghostView":Landroid/view/GhostView;
    :cond_1
    return-void
.end method

.method protected setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 431
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 430
    return-void
.end method

.method protected setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 572
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v9, "originalImageState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    if-eqz p1, :cond_0

    .line 574
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 575
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 576
    .local v5, "tempRect":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 577
    .local v8, "numSharedElements":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 578
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 579
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    .local v2, "name":Ljava/lang/String;
    invoke-static {v1, v2, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    move-result-object v10

    .line 582
    .local v10, "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v3, p1

    .line 583
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v7    # "i":I
    .end local v8    # "numSharedElements":I
    .end local v10    # "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 590
    :cond_1
    return-object v9
.end method

.method protected setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "add"    # Z

    .prologue
    const/4 v4, 0x0

    .line 361
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 362
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 361
    if-eqz v3, :cond_1

    .line 363
    :cond_0
    return-object v4

    .line 367
    :cond_1
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 368
    .local v1, "set":Landroid/transition/TransitionSet;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 370
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 371
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_2

    .line 372
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    .line 369
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 374
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 382
    if-nez p2, :cond_4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    :cond_4
    :goto_2
    return-object v1

    .line 384
    :cond_5
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    goto :goto_2
.end method

.method protected setTransitioningViewsVisiblity(IZ)V
    .locals 4
    .param p1, "visiblity"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 1019
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 1020
    .local v1, "numElements":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1021
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1022
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 1023
    if-eqz p2, :cond_0

    .line 1024
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1020
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1019
    .end local v0    # "i":I
    .end local v1    # "numElements":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "numElements":I
    goto :goto_0

    .line 1018
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    .line 964
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 962
    return-void
.end method

.method protected showViews(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "setTransitionAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 759
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 760
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    return-void
.end method

.method protected startTransition(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 832
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_0

    .line 833
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 831
    :goto_0
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 836
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stripOffscreenViews()V
    .locals 4

    .prologue
    .line 297
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 301
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 302
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 303
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 301
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 296
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected transitionStarted()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 840
    return-void
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    .line 241
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 243
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    .line 246
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 248
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    .line 235
    return-void
.end method

.method protected viewsTransitionComplete()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    .line 959
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 957
    return-void
.end method
