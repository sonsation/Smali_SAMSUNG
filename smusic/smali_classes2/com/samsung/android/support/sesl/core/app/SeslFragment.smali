.class public Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mReenterTransition:Landroid/transition/Transition;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mReturnTransition:Landroid/transition/Transition;

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementEnterTransition:Landroid/transition/Transition;

.field mSharedElementReturnTransition:Landroid/transition/Transition;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 189
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 214
    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    .line 226
    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    .line 298
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    .line 320
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    .line 326
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransition:Landroid/transition/Transition;

    .line 327
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReturnTransition:Landroid/transition/Transition;

    .line 328
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransition:Landroid/transition/Transition;

    .line 329
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReenterTransition:Landroid/transition/Transition;

    .line 330
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 331
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 335
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 336
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 407
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 433
    :try_start_0
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 434
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 437
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 440
    .local v2, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz p2, :cond_1

    .line 441
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 442
    iput-object p2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 444
    :cond_1
    return-object v2

    .line 445
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 449
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 453
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 470
    :try_start_0
    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 471
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 474
    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    const-class v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 478
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1969
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1970
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1971
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1972
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1975
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1976
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1977
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1978
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1979
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1980
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1981
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1982
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1983
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1984
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1985
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1986
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1987
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1988
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_1

    .line 1994
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1997
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v0, :cond_2

    .line 1998
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2001
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2002
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2004
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2005
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2008
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2009
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2012
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v0, :cond_6

    .line 2013
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2014
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2017
    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    if-eqz v0, :cond_7

    .line 2018
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2020
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2021
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2023
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2024
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2026
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2027
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2029
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2030
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2032
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2034
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_c

    .line 2035
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SeslLoader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2038
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_d

    .line 2039
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2042
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 512
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2051
    .end local p0    # "this":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :goto_0
    return-object p0

    .line 2048
    .restart local p0    # "this":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2049
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object p0

    goto :goto_0

    .line 2051
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    .line 714
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0

    .line 716
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 717
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 718
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 719
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 720
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public final getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1132
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getLayoutInflaterFactory()Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;)V

    .line 1134
    return-object v0
.end method

.method public getLoaderManager()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 914
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 922
    :goto_0
    return-object v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    .line 921
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 922
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_0
.end method

.method public final getParentFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 1907
    :goto_0
    return-object v0

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1527
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    .line 1528
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    .line 1529
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 1530
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    .line 1531
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    .line 1532
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    .line 1533
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    .line 1534
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    .line 1535
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1536
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1537
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 1538
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    .line 1539
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 1540
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    .line 1541
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    .line 1542
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    .line 1543
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    .line 1544
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 1545
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    .line 1546
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    .line 1547
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    .prologue
    .line 2055
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 2056
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 2071
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    .line 786
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    .line 786
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1365
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 992
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1237
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1220
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1221
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 1222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1223
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttach(Landroid/app/Activity;)V

    .line 1225
    :cond_0
    return-void

    .line 1220
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "childFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1211
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1460
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1698
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1265
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1266
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1268
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    .line 1271
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 1243
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1653
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1572
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1322
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1508
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1511
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1512
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    .line 1513
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    .line 1518
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1599
    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1500
    return-void
.end method

.method public onDetach()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1556
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 819
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1199
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1182
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1183
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1185
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1187
    :cond_0
    return-void

    .line 1182
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1486
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1445
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1620
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1631
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1470
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 1454
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1589
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1094
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1413
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1435
    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1390
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1392
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 1393
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    .line 1394
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1395
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    .line 1402
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1480
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1336
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1381
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 2098
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2100
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2101
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2102
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    .line 2108
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2163
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2167
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2230
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 2231
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2240
    :cond_0
    :goto_0
    return v0

    .line 2234
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2235
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 2077
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2079
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2080
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2081
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_1
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2186
    const/4 v0, 0x0

    .line 2187
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2188
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2189
    const/4 v0, 0x1

    .line 2190
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2192
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2193
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2196
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 2091
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    .line 2331
    :cond_0
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2332
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2333
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroy()V

    .line 2334
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2335
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2338
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 2339
    return-void
.end method

.method performDestroyView()V
    .locals 3

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroyView()V

    .line 2315
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2317
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyView()V

    .line 2318
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2319
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2322
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 2323
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportNextStart()V

    .line 2325
    :cond_2
    return-void
.end method

.method performDetach()V
    .locals 3

    .prologue
    .line 2342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2343
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDetach()V

    .line 2344
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_0

    .line 2345
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2353
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-nez v0, :cond_1

    .line 2354
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child SeslFragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    .line 2358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 2360
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onLowMemory()V

    .line 2171
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchLowMemory()V

    .line 2174
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2149
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onMultiWindowModeChanged(Z)V

    .line 2150
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2153
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2214
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 2215
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 2216
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2226
    :cond_0
    :goto_0
    return v0

    .line 2220
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2221
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2226
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2244
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2245
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2252
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPause()V

    .line 2268
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2270
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPause()V

    .line 2271
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2272
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2275
    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2156
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPictureInPictureModeChanged(Z)V

    .line 2157
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2160
    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2200
    const/4 v0, 0x0

    .line 2201
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2202
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2203
    const/4 v0, 0x1

    .line 2204
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2206
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2207
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2210
    :cond_1
    return v0
.end method

.method performReallyStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchReallyStop()V

    .line 2294
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2295
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-eqz v0, :cond_2

    .line 2296
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    .line 2297
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    .line 2298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    .line 2299
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    .line 2301
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 2302
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2303
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    .line 2309
    :cond_2
    :goto_0
    return-void

    .line 2305
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performResume()V
    .locals 3

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 2133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    .line 2135
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onResume()V

    .line 2138
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2139
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2142
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    .line 2144
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    .line 2146
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2255
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2256
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2257
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2258
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2259
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2262
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 2113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    .line 2115
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2117
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStart()V

    .line 2118
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2119
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2122
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2123
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    .line 2125
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 2126
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportStart()V

    .line 2128
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 3

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStop()V

    .line 2281
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 2282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 2283
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStop()V

    .line 2284
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2285
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1666
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1667
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onRequestPermissionsFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;[Ljava/lang/String;I)V

    .line 1072
    return-void
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1286
    if-eqz p1, :cond_1

    .line 1287
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1289
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v1, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    .line 1294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .line 1295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    .line 1298
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 487
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 488
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 489
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 1920
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 1921
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 1944
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 1945
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 566
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslFragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    .line 570
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1710
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransition:Landroid/transition/Transition;

    .line 1735
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1721
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransition:Landroid/transition/Transition;

    .line 1800
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 852
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    .line 853
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 857
    :cond_0
    return-void
.end method

.method final setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 496
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    .line 497
    if-eqz p2, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    .prologue
    .line 589
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslFragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 594
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 870
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    .line 871
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 875
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReenterTransition:Landroid/transition/Transition;

    .line 1833
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0
    .param p1, "retain"    # Z

    .prologue
    .line 836
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    .line 837
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mReturnTransition:Landroid/transition/Transition;

    .line 1766
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 1863
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 1892
    return-void
.end method

.method public setTargetFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;I)V
    .locals 0
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 608
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 609
    iput p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    .line 610
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    const/4 v1, 0x4

    .line 894
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->performPendingDeferredStart(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 898
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    .line 899
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    .line 900
    return-void

    .line 899
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 931
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 938
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 942
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 950
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 957
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 961
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onStartIntentSenderFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 975
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 525
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 526
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 527
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 531
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 535
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1677
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1678
    return-void
.end method
