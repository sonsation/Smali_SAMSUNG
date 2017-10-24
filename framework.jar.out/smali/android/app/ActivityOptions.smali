.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CLIP_REVEAL:I = 0xb

.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final ANIM_CUSTOM_SCALE_DOWN:I = 0x3ea

.field public static final ANIM_CUSTOM_SCALE_UP:I = 0x3e9

.field public static final ANIM_DEFAULT:I = 0x6

.field public static final ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_SCENE_TRANSITION:I = 0x5

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_HOME_ITEM:Ljava/lang/String; = "android:activity.animHomeItem"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_DOCK_CREATE_MODE:Ljava/lang/String; = "android:activity.dockCreateMode"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field public static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field private static final KEY_LAUNCH_STACK_ID:Ljava/lang/String; = "android.activity.launchStackId"

.field private static final KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mDockCreateMode:I

.field private mExitCoordinatorIndex:I

.field private mHeight:I

.field private mIsHomeItem:Z

.field private mIsReturning:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchStackId:I

.field private mLaunchTaskId:I

.field private mPackageName:Ljava/lang/String;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:I

.field private mStartY:I

.field private mTaskOverlay:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 258
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 259
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 260
    iput v1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 819
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "opts"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 258
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 259
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 260
    iput v4, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 826
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 828
    const-string/jumbo v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 830
    :try_start_0
    const-string/jumbo v3, "android:activity.usageTimeReport"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    const-string/jumbo v3, "android:activity.launchBounds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 835
    const-string/jumbo v3, "android:activity.animType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 836
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v3, :sswitch_data_0

    .line 885
    :goto_1
    const-string/jumbo v3, "android.activity.launchStackId"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 886
    const-string/jumbo v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 887
    const-string/jumbo v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 888
    const-string/jumbo v3, "android:activity.dockCreateMode"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 889
    const-string/jumbo v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    const-string/jumbo v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 891
    .local v2, "specs":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v3, v3, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 892
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 893
    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v3, v2, v1

    check-cast v3, Landroid/view/AppTransitionAnimationSpec;

    aput-object v3, v4, v1

    .line 892
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 831
    .end local v1    # "i":I
    .end local v2    # "specs":[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ActivityOptions"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 838
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :sswitch_0
    const-string/jumbo v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 839
    const-string/jumbo v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 841
    const-string/jumbo v3, "android:activity.animStartListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 840
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_1

    .line 845
    :sswitch_1
    const-string/jumbo v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_1

    .line 854
    :sswitch_2
    const-string/jumbo v3, "android:activity.animStartX"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 855
    const-string/jumbo v3, "android:activity.animStartY"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 856
    const-string/jumbo v3, "android:activity.animWidth"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 857
    const-string/jumbo v3, "android:activity.animHeight"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 859
    const-string/jumbo v3, "android:activity.animHomeItem"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    goto/16 :goto_1

    .line 867
    :sswitch_3
    const-string/jumbo v3, "android:activity.animThumbnail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 868
    const-string/jumbo v3, "android:activity.animStartX"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 869
    const-string/jumbo v3, "android:activity.animStartY"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 870
    const-string/jumbo v3, "android:activity.animWidth"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 871
    const-string/jumbo v3, "android:activity.animHeight"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 873
    const-string/jumbo v3, "android:activity.animStartListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 872
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto/16 :goto_1

    .line 877
    :sswitch_4
    const-string/jumbo v3, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 878
    const-string/jumbo v3, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 879
    const-string/jumbo v3, "android:activity.sharedElementNames"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 880
    const-string/jumbo v3, "android:activity.resultData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 881
    const-string/jumbo v3, "android:activity.resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 882
    const-string/jumbo v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_1

    .line 896
    :cond_0
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 898
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 897
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 823
    :cond_1
    return-void

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method public static abort(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1041
    if-eqz p0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1040
    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 1036
    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private static makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .prologue
    .line 586
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 587
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 588
    if-eqz p8, :cond_0

    const/16 v2, 0x8

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 590
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 591
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 592
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 593
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 594
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 595
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 596
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 597
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 598
    return-object v0

    .line 589
    .end local v1    # "pts":[I
    :cond_0
    const/16 v2, 0x9

    goto :goto_0
.end method

.method public static makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    .prologue
    .line 734
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 735
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 436
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 437
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v2, 0xb

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 438
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 439
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 440
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 441
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 442
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 443
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 444
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 303
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 304
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 305
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 306
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 307
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 308
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 309
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You must specify a valid animation."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 330
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 331
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 332
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 333
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x2

    .line 408
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 409
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 410
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 411
    new-array v1, v3, [I

    .line 412
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 413
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 414
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 415
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 416
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 417
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 702
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 703
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 704
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 706
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 707
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    .line 708
    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 710
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .prologue
    .line 636
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 661
    new-instance v7, Landroid/app/ActivityOptions;

    invoke-direct {v7}, Landroid/app/ActivityOptions;-><init>()V

    .line 662
    .local v7, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    const/4 v1, 0x6

    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 664
    return-object v7

    .line 666
    :cond_0
    const/4 v1, 0x5

    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3

    .line 672
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, p1

    if-ge v6, v1, :cond_3

    .line 673
    aget-object v8, p1, v6

    .line 674
    .local v8, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 675
    .local v9, "sharedElementName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 676
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element name must not be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    .line 680
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_2

    .line 681
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element must not be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :cond_2
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 687
    .end local v6    # "i":I
    .end local v8    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v9    # "sharedElementName":Ljava/lang/String;
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 689
    .local v0, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v0, v7, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 690
    iput-object v2, v7, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 691
    iput-boolean v5, v7, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 693
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    .line 692
    iput v1, v7, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 694
    return-object v7
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    .prologue
    .line 724
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 725
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 726
    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 519
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 520
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 521
    if-eqz p5, :cond_0

    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 522
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 523
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 524
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 525
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 526
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 528
    return-object v0

    .line 521
    .end local v1    # "pts":[I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 580
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 579
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .prologue
    .line 606
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 607
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 608
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 609
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 610
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 611
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 612
    return-object v0
.end method

.method public static makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 554
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 553
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 513
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 491
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static semMakeCustomScaleDownAnimation(IIII)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 803
    const-string/jumbo v1, "ActivityOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semMakeCustomScaleDownAnimation,  startX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", startY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 805
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 806
    iput p2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 807
    iput p3, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 808
    iput p0, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 809
    iput p1, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 810
    return-object v0
.end method

.method public static semMakeCustomScaleUpAnimation(Landroid/view/View;II)Landroid/app/ActivityOptions;
    .locals 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 753
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 754
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 755
    const/16 v2, 0x3e9

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 756
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 757
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 758
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 759
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 760
    iput p1, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 761
    iput p2, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 762
    const-string/jumbo v2, "ActivityOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semMakeCustomScaleUpAnimation, width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-object v0
.end method

.method public static semMakeCustomScaleUpAnimation(Landroid/view/View;IIZ)Landroid/app/ActivityOptions;
    .locals 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fromHomeScreen"    # Z

    .prologue
    .line 784
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 785
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 786
    const/16 v2, 0x3e9

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 787
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 788
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 789
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 790
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 791
    iput p1, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 792
    iput p2, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 793
    iput-boolean p3, v0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    .line 794
    const-string/jumbo v2, "ActivityOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semMakeCustomScaleUpAnimation, width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mIsHomeItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-object v0
.end method

.method private setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .prologue
    .line 363
    if-eqz p2, :cond_0

    .line 364
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 362
    :cond_0
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 338
    if-eqz p2, :cond_0

    .line 339
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 999
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    .line 1001
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public forTargetActivity()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 1301
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1302
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1303
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 1304
    return-object v0

    .line 1307
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public getDockCreateMode()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLaunchStackId()I
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    .prologue
    .line 816
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchTaskId()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
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
    .line 1014
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getTaskOverlay()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public isHomeItem()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    return v0
.end method

.method public isReturning()Z
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 1292
    return-void
.end method

.method public setDockCreateMode(I)V
    .locals 0
    .param p1, "dockCreateMode"    # I

    .prologue
    .line 1096
    iput p1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 1095
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 913
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 914
    return-object p0
.end method

.method public setLaunchStackId(I)V
    .locals 0
    .param p1, "launchStackId"    # I

    .prologue
    .line 1054
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 1053
    return-void
.end method

.method public setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 1062
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1061
    return-void
.end method

.method public setTaskOverlay(Z)V
    .locals 0
    .param p1, "taskOverlay"    # Z

    .prologue
    .line 1079
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1078
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1193
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1194
    return-object v1

    .line 1196
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1197
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1198
    const-string/jumbo v2, "android:activity.packageName"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1201
    const-string/jumbo v2, "android:activity.launchBounds"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1203
    :cond_2
    const-string/jumbo v2, "android:activity.animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1204
    iget-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 1205
    const-string/jumbo v2, "android:activity.usageTimeReport"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1207
    :cond_3
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v2, :sswitch_data_0

    .line 1254
    :goto_0
    const-string/jumbo v1, "android.activity.launchStackId"

    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    const-string/jumbo v1, "android.activity.launchTaskId"

    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    const-string/jumbo v1, "android.activity.taskOverlay"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1257
    const-string/jumbo v1, "android:activity.dockCreateMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_4

    .line 1259
    const-string/jumbo v1, "android:activity.animSpecs"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1261
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_5

    .line 1262
    const-string/jumbo v1, "android:activity.animationFinishedListener"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1265
    :cond_5
    return-object v0

    .line 1209
    :sswitch_0
    const-string/jumbo v2, "android:activity.animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    const-string/jumbo v2, "android:activity.animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1211
    const-string/jumbo v2, "android:activity.animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_6

    .line 1212
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1211
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1215
    :sswitch_1
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    iget v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1223
    :sswitch_2
    const-string/jumbo v1, "android:activity.animStartX"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1224
    const-string/jumbo v1, "android:activity.animStartY"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1225
    const-string/jumbo v1, "android:activity.animWidth"

    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    const-string/jumbo v1, "android:activity.animHeight"

    iget v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    const-string/jumbo v1, "android:activity.animHomeItem"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1235
    :sswitch_3
    const-string/jumbo v2, "android:activity.animThumbnail"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1236
    const-string/jumbo v2, "android:activity.animStartX"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1237
    const-string/jumbo v2, "android:activity.animStartY"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    const-string/jumbo v2, "android:activity.animWidth"

    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    const-string/jumbo v2, "android:activity.animHeight"

    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1240
    const-string/jumbo v2, "android:activity.animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_7

    .line 1241
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1240
    :cond_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1244
    :sswitch_4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_8

    .line 1245
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1247
    :cond_8
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1248
    const-string/jumbo v1, "android:activity.sharedElementNames"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1249
    const-string/jumbo v1, "android:activity.resultData"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1250
    const-string/jumbo v1, "android:activity.resultCode"

    iget v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1251
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    iget v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1207
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    const-string/jumbo v1, ", mAnimationType="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    const-string/jumbo v1, ", mStartX="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    const-string/jumbo v1, ", mStartY="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    const-string/jumbo v1, ", mWidth="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    const-string/jumbo v1, ", mHeight="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1105
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1108
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 1109
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1110
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1111
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1112
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1113
    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1114
    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1115
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1116
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v1, :sswitch_data_0

    .line 1180
    :goto_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1181
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1104
    return-void

    .line 1118
    :sswitch_0
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1119
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1120
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1121
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1127
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1130
    :sswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_0

    .line 1137
    :sswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1138
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1139
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1140
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1142
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    .line 1144
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    .line 1146
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1150
    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1156
    :sswitch_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1157
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1158
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1159
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1160
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1161
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_3

    .line 1163
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1167
    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1170
    :sswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1171
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1172
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1173
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1174
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1175
    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1176
    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1177
    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 1147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1124
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1116
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method
