.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_CAN_MOVE_TASK_TO_SCREEN:Ljava/lang/String; = "can_move_task_to_screen"

.field private static final ATTR_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_IS_PRIVAT_EMODE:Ljava/lang/String; = "is_private_mode"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field static final INVALID_MAX_SIZE:I = -0x1

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field canMoveTaskToScreen:Z

.field displayId:I

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field isPrivateMode:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field private mAppIconHeight:I

.field private mAppIconWidth:I

.field mBounds:Landroid/graphics/Rect;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field mDexCompatLaunchPolicy:I

.field private final mFilename:Ljava/lang/String;

.field mFullscreen:Z

.field mHiddenState:I

.field private mIsCustomScaleDownAnimationAllowed:Z

.field mIsDexCompatEnabled:Z

.field mIsDexModeTask:Z

.field private mIsHomeItem:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field private mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMovingTaskWithReplacing:Z

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mProcessKillAfterRemovingTask:Z

.field mRequestedPreserveWindowOnRelaunch:Z

.field mResizeMode:I

.field private mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSlideMode:Z

.field mSnapTargetFull:Z

.field mSnapView:Z

.field private mStartX:I

.field private mStartY:I

.field mSupportFreefromDensity:Z

.field private mTaskToReturnTo:I

.field mTemporarilyUnresizable:Z

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "lastThumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;
    .param p26, "taskAffiliation"    # I
    .param p27, "prevTaskId"    # I
    .param p28, "nextTaskId"    # I
    .param p29, "taskAffiliationColor"    # I
    .param p30, "callingUid"    # I
    .param p31, "callingPackage"    # Ljava/lang/String;
    .param p32, "resizeMode"    # I
    .param p33, "privileged"    # Z
    .param p34, "_realActivitySuspended"    # Z
    .param p35, "userSetupComplete"    # Z
    .param p36, "minWidth"    # I
    .param p37, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 226
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 230
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 242
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 260
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 273
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 282
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 285
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 286
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 287
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 288
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 289
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 302
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 304
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 308
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 309
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    .line 312
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    .line 313
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mRequestedPreserveWindowOnRelaunch:Z

    .line 316
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    .line 319
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    .line 320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingTaskWithReplacing:Z

    .line 324
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mProcessKillAfterRemovingTask:Z

    .line 328
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 329
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    .line 342
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    .line 346
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    .line 348
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    .line 438
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    const-string/jumbo v3, ".png"

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 441
    new-instance v2, Ljava/io/File;

    invoke-static/range {p13 .. p13}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 442
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 443
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 444
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 445
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 446
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 447
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 448
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 449
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 450
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 451
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 452
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 453
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 454
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 455
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 456
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 457
    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 458
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 459
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 460
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 461
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 462
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 463
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 464
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 465
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 466
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 467
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 468
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 469
    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 470
    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 471
    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 472
    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 473
    move/from16 v0, p30

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 474
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 475
    move/from16 v0, p32

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 476
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 477
    move/from16 v0, p36

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 478
    move/from16 v0, p37

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 437
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p6, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 226
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 230
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 242
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 253
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 256
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 271
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 273
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 282
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 285
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 294
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 302
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 304
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 308
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 309
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 311
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    .line 312
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    .line 313
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mRequestedPreserveWindowOnRelaunch:Z

    .line 316
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    .line 319
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    .line 320
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 322
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mMovingTaskWithReplacing:Z

    .line 324
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mProcessKillAfterRemovingTask:Z

    .line 328
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 329
    iput v3, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    .line 342
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    .line 346
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    .line 348
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    .line 386
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    const-string/jumbo v1, ".png"

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 389
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 390
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 391
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 392
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 393
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 394
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 395
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 396
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 398
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 399
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 400
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 401
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 404
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMaxDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 415
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 416
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 418
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 418
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 421
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 422
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 423
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 385
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 226
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 230
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 242
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 253
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 256
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 260
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 271
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 273
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 282
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 285
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 294
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 302
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 304
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 308
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 309
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 311
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    .line 312
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    .line 313
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mRequestedPreserveWindowOnRelaunch:Z

    .line 316
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingTaskWithReplacing:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mProcessKillAfterRemovingTask:Z

    .line 328
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 329
    iput v2, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    .line 342
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    .line 346
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    .line 348
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    .line 353
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    const-string/jumbo v1, ".png"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 356
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 357
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 358
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 359
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 360
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 361
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 362
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 363
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 365
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 366
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 367
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 371
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMaxDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 352
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, -0x1

    .line 1646
    if-nez p1, :cond_0

    .line 1647
    return-void

    .line 1649
    :cond_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1650
    .local v3, "minWidth":I
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1654
    .local v2, "minHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1655
    if-ne v3, v6, :cond_1

    .line 1656
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1658
    :cond_1
    if-ne v2, v6, :cond_2

    .line 1659
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1662
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    .line 1663
    .local v1, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_4

    const/4 v0, 0x1

    .line 1664
    .local v0, "adjustHeight":Z
    :goto_1
    if-nez v1, :cond_5

    move v4, v0

    :goto_2
    if-nez v4, :cond_6

    .line 1665
    return-void

    .line 1662
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "adjustWidth":Z
    goto :goto_0

    .line 1663
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "adjustHeight":Z
    goto :goto_1

    .line 1664
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 1668
    :cond_6
    if-eqz v1, :cond_7

    .line 1669
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_9

    .line 1670
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eq v4, v5, :cond_9

    .line 1671
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 1678
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 1679
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_a

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_a

    .line 1680
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eq v4, v5, :cond_a

    .line 1681
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 1645
    :cond_8
    :goto_4
    return-void

    .line 1675
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1685
    :cond_a
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method private calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1864
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)Landroid/content/res/Configuration;
    .locals 23
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z
    .param p5, "applyHorizontalMode"    # Z

    .prologue
    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz p2, :cond_3

    move-object/from16 v21, p2

    .line 1875
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;->subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    if-eqz p2, :cond_4

    move-object/from16 v21, p2

    .line 1878
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;->subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1885
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 1886
    .local v17, "serviceConfig":Landroid/content/res/Configuration;
    new-instance v9, Landroid/content/res/Configuration;

    sget-object v21, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1888
    .local v9, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v21

    if-eqz v21, :cond_5

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->computeScreenConfiguration(Landroid/content/res/Configuration;I)V

    .line 1944
    .end local p2    # "insetBounds":Landroid/graphics/Rect;
    :goto_2
    sget-boolean v21, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v21, :cond_2

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1946
    sget-boolean v21, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    if-eqz v21, :cond_1

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z

    .line 1950
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getFreeformDensity(II)I

    move-result v12

    .line 1951
    .local v12, "freeformDensityDpi":I
    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1953
    iput v12, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 1955
    int-to-float v0, v12

    move/from16 v21, v0

    const v22, 0x3bcccccd    # 0.00625f

    mul-float v11, v21, v22

    .line 1956
    .local v11, "freeformDensity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v8, v0

    .line 1960
    .local v8, "compatScreenWidthDpF":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v6, v0

    .line 1961
    .local v6, "compatScreenHeightDpF":I
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1962
    .local v16, "longSizeF":I
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1963
    .local v19, "shortSizeF":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v13

    .line 1964
    .local v13, "freeformSl":I
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 1970
    .end local v6    # "compatScreenHeightDpF":I
    .end local v8    # "compatScreenWidthDpF":I
    .end local v11    # "freeformDensity":F
    .end local v12    # "freeformDensityDpi":I
    .end local v13    # "freeformSl":I
    .end local v16    # "longSizeF":I
    .end local v19    # "shortSizeF":I
    :cond_1
    iget v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    iget v0, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1973
    iget v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    iget v0, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1974
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1980
    :cond_2
    return-object v9

    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v17    # "serviceConfig":Landroid/content/res/Configuration;
    .restart local p2    # "insetBounds":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v21, p1

    .line 1876
    goto/16 :goto_0

    :cond_4
    move-object/from16 v21, p1

    .line 1879
    goto/16 :goto_1

    .line 1903
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/ActivityManagerService;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v21

    if-eqz v21, :cond_6

    const/4 v14, 0x1

    .line 1905
    .local v14, "hideStatusBar":Z
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3bcccccd    # 0.00625f

    mul-float v10, v21, v22

    .line 1907
    .local v10, "density":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    if-eqz p5, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1906
    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    if-eqz p5, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1910
    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1916
    iget v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    iget v0, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 1917
    const/16 v21, 0x1

    .line 1916
    :goto_6
    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1922
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1928
    .local v7, "compatScreenWidthDp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1929
    .local v5, "compatScreenHeightDp":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v20

    .line 1930
    .local v20, "sl":I
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1931
    .local v15, "longSize":I
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1932
    .local v18, "shortSize":I
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 1934
    sget-boolean v21, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1935
    iget v0, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto/16 :goto_2

    .line 1903
    .end local v5    # "compatScreenHeightDp":I
    .end local v7    # "compatScreenWidthDp":I
    .end local v10    # "density":F
    .end local v14    # "hideStatusBar":Z
    .end local v15    # "longSize":I
    .end local v18    # "shortSize":I
    .end local v20    # "sl":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "hideStatusBar":Z
    goto/16 :goto_3

    .line 1908
    .restart local v10    # "density":F
    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_4

    .line 1909
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    goto/16 :goto_4

    .line 1912
    :cond_9
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_5

    .line 1913
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v21, v0

    goto/16 :goto_5

    .line 1918
    :cond_b
    const/16 v21, 0x2

    goto/16 :goto_6

    .line 1938
    .restart local v5    # "compatScreenHeightDp":I
    .restart local v7    # "compatScreenWidthDp":I
    .restart local v15    # "longSize":I
    .restart local v18    # "shortSize":I
    .restart local v20    # "sl":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    .line 1939
    if-eqz p2, :cond_d

    .line 1938
    .end local p2    # "insetBounds":Landroid/graphics/Rect;
    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto/16 :goto_2

    .restart local p2    # "insetBounds":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 p2, p1

    .line 1939
    goto :goto_7
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 61
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1441
    const/4 v8, 0x0

    .line 1442
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1443
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 1445
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/16 v39, 0x0

    .line 1446
    .local v39, "realActivitySuspended":Z
    const/4 v13, 0x0

    .line 1447
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1448
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1449
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v54, 0x0

    .line 1450
    .local v54, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 1451
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 1452
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 1453
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 1454
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 1455
    .local v18, "userId":I
    const/16 v40, 0x1

    .line 1456
    .local v40, "userSetupComplete":Z
    const/16 v19, -0x1

    .line 1457
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 1458
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 1459
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 1460
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 1461
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 1462
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    .line 1463
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v56

    .line 1464
    .local v56, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1465
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v30, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v30 .. v30}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    .line 1466
    .local v30, "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    const/16 v31, -0x1

    .line 1467
    .local v31, "taskAffiliation":I
    const/16 v34, 0x0

    .line 1468
    .local v34, "taskAffiliationColor":I
    const/16 v32, -0x1

    .line 1469
    .local v32, "prevTaskId":I
    const/16 v33, -0x1

    .line 1470
    .local v33, "nextTaskId":I
    const/16 v35, -0x1

    .line 1471
    .local v35, "callingUid":I
    const-string/jumbo v36, ""

    .line 1472
    .local v36, "callingPackage":Ljava/lang/String;
    const/16 v37, 0x4

    .line 1473
    .local v37, "resizeMode":I
    const/16 v38, 0x0

    .line 1474
    .local v38, "privileged":Z
    const/16 v48, 0x0

    .line 1475
    .local v48, "bounds":Landroid/graphics/Rect;
    const/16 v41, -0x1

    .line 1476
    .local v41, "minWidth":I
    const/16 v42, -0x1

    .line 1478
    .local v42, "minHeight":I
    const/16 v51, 0x0

    .line 1479
    .local v51, "displayId":I
    const/16 v49, 0x1

    .line 1482
    .local v49, "canMoveTaskToScreen":Z
    const/16 v58, 0x0

    .line 1485
    .local v58, "privateMode":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v46, v6, -0x1

    .end local v10    # "affinity":Ljava/lang/String;
    .end local v11    # "rootAffinity":Ljava/lang/String;
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    .end local v14    # "rootHasReset":Z
    .end local v15    # "autoRemoveRecents":Z
    .end local v16    # "askedCompatMode":Z
    .end local v20    # "lastDescription":Ljava/lang/String;
    .end local v28    # "neverRelinquishIdentity":Z
    .end local v38    # "privileged":Z
    .end local v39    # "realActivitySuspended":Z
    .end local v40    # "userSetupComplete":Z
    .end local v48    # "bounds":Landroid/graphics/Rect;
    .end local v49    # "canMoveTaskToScreen":Z
    .end local v58    # "privateMode":Z
    .local v46, "attrNdx":I
    :goto_0
    if-ltz v46, :cond_24

    .line 1486
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v45

    .line 1487
    .local v45, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v47

    .line 1490
    .local v47, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1491
    const/4 v6, -0x1

    if-ne v7, v6, :cond_0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1485
    :cond_0
    :goto_1
    add-int/lit8 v46, v46, -0x1

    goto :goto_0

    .line 1492
    :cond_1
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1493
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "realActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1494
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v6, "real_activity_suspended"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1495
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    .local v39, "realActivitySuspended":Z
    goto :goto_1

    .line 1496
    .end local v39    # "realActivitySuspended":Z
    :cond_3
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1497
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .local v13, "origActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1498
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v6, "affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1499
    move-object/from16 v10, v47

    .local v10, "affinity":Ljava/lang/String;
    goto :goto_1

    .line 1500
    .end local v10    # "affinity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1501
    move-object/from16 v11, v47

    .line 1502
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v54, 0x1

    goto :goto_1

    .line 1503
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1504
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .local v14, "rootHasReset":Z
    goto :goto_1

    .line 1505
    .end local v14    # "rootHasReset":Z
    :cond_7
    const-string/jumbo v6, "auto_remove_recents"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1506
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .local v15, "autoRemoveRecents":Z
    goto :goto_1

    .line 1507
    .end local v15    # "autoRemoveRecents":Z
    :cond_8
    const-string/jumbo v6, "asked_compat_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1508
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .local v16, "askedCompatMode":Z
    goto/16 :goto_1

    .line 1509
    .end local v16    # "askedCompatMode":Z
    :cond_9
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1510
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_1

    .line 1511
    :cond_a
    const-string/jumbo v6, "user_setup_complete"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1512
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    .local v40, "userSetupComplete":Z
    goto/16 :goto_1

    .line 1513
    .end local v40    # "userSetupComplete":Z
    :cond_b
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1514
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 1515
    :cond_c
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1516
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_1

    .line 1517
    :cond_d
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1518
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 1519
    :cond_e
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1520
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_1

    .line 1521
    :cond_f
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1522
    move-object/from16 v20, v47

    .local v20, "lastDescription":Ljava/lang/String;
    goto/16 :goto_1

    .line 1523
    .end local v20    # "lastDescription":Ljava/lang/String;
    :cond_10
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1524
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_1

    .line 1525
    :cond_11
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1526
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .local v28, "neverRelinquishIdentity":Z
    goto/16 :goto_1

    .line 1527
    .end local v28    # "neverRelinquishIdentity":Z
    :cond_12
    const-string/jumbo v6, "task_thumbnailinfo_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1528
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1529
    :cond_13
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1530
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1531
    :cond_14
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1532
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto/16 :goto_1

    .line 1533
    :cond_15
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1534
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto/16 :goto_1

    .line 1535
    :cond_16
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1536
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_1

    .line 1537
    :cond_17
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1538
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_1

    .line 1539
    :cond_18
    const-string/jumbo v6, "calling_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1540
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_1

    .line 1541
    :cond_19
    const-string/jumbo v6, "calling_package"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1542
    move-object/from16 v36, v47

    goto/16 :goto_1

    .line 1543
    :cond_1a
    const-string/jumbo v6, "resize_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1544
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1545
    const/4 v6, 0x1

    move/from16 v0, v37

    if-ne v0, v6, :cond_0

    .line 1546
    const/16 v37, 0x4

    goto/16 :goto_1

    .line 1547
    :cond_1b
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1548
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .local v38, "privileged":Z
    goto/16 :goto_1

    .line 1549
    .end local v38    # "privileged":Z
    :cond_1c
    const-string/jumbo v6, "non_fullscreen_bounds"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1550
    invoke-static/range {v47 .. v47}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v48

    .local v48, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 1551
    .end local v48    # "bounds":Landroid/graphics/Rect;
    :cond_1d
    const-string/jumbo v6, "min_width"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1552
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    goto/16 :goto_1

    .line 1553
    :cond_1e
    const-string/jumbo v6, "min_height"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1554
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto/16 :goto_1

    .line 1556
    :cond_1f
    const-string/jumbo v6, "display_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1557
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v51

    goto/16 :goto_1

    .line 1558
    :cond_20
    const-string/jumbo v6, "can_move_task_to_screen"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1559
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    .local v49, "canMoveTaskToScreen":Z
    goto/16 :goto_1

    .line 1562
    .end local v49    # "canMoveTaskToScreen":Z
    :cond_21
    const-string/jumbo v6, "is_private_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1563
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    .local v58, "privateMode":Z
    goto/16 :goto_1

    .line 1566
    .end local v58    # "privateMode":Z
    :cond_22
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1581
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v45    # "attrName":Ljava/lang/String;
    .end local v47    # "attrValue":Ljava/lang/String;
    .local v53, "event":I
    .local v55, "name":Ljava/lang/String;
    :cond_23
    const-string/jumbo v6, "activity"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1582
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1585
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_24

    .line 1586
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v53    # "event":I
    .end local v55    # "name":Ljava/lang/String;
    :cond_24
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v53

    .restart local v53    # "event":I
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_28

    .line 1572
    const/4 v6, 0x3

    move/from16 v0, v53

    if-ne v0, v6, :cond_25

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v56

    if-lt v6, v0, :cond_28

    .line 1573
    :cond_25
    const/4 v6, 0x2

    move/from16 v0, v53

    if-ne v0, v6, :cond_24

    .line 1574
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v55

    .line 1577
    .restart local v55    # "name":Ljava/lang/String;
    const-string/jumbo v6, "affinity_intent"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1578
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    .local v9, "affinityIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1579
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    :cond_26
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1580
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    .local v8, "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1589
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_27
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "restoreTask: Unexpected name="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1594
    .end local v55    # "name":Ljava/lang/String;
    :cond_28
    if-nez v54, :cond_2c

    .line 1595
    move-object v11, v10

    .line 1599
    :cond_29
    :goto_3
    if-gtz v19, :cond_2b

    .line 1600
    if-eqz v8, :cond_2d

    move-object/from16 v50, v8

    .line 1601
    .local v50, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    .line 1602
    if-eqz v50, :cond_2a

    .line 1603
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v57

    .line 1606
    .local v57, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v50 .. v50}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1607
    const/16 v59, 0x2200

    .line 1605
    move-object/from16 v0, v57

    move/from16 v1, v59

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v44

    .line 1609
    .local v44, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v44, :cond_2a

    .line 1610
    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    .end local v44    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v57    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2a
    :goto_5
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "Updating task #"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, " for "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    .line 1616
    const-string/jumbo v60, ": effectiveUid="

    .line 1615
    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .end local v50    # "checkIntent":Landroid/content/Intent;
    :cond_2b
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v42}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V

    .line 1626
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1628
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v43, v6, -0x1

    .local v43, "activityNdx":I
    :goto_6
    if-ltz v43, :cond_2e

    .line 1629
    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1628
    add-int/lit8 v43, v43, -0x1

    goto :goto_6

    .line 1596
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    :cond_2c
    const-string/jumbo v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1597
    const/4 v11, 0x0

    .local v11, "rootAffinity":Ljava/lang/String;
    goto/16 :goto_3

    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_2d
    move-object/from16 v50, v9

    .line 1600
    goto/16 :goto_4

    .line 1634
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v43    # "activityNdx":I
    :cond_2e
    move/from16 v0, v51

    iput v0, v5, Lcom/android/server/am/TaskRecord;->displayId:I

    .line 1635
    move/from16 v0, v49

    iput-boolean v0, v5, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 1639
    move/from16 v0, v58

    iput-boolean v0, v5, Lcom/android/server/am/TaskRecord;->isPrivateMode:Z

    .line 1642
    return-object v5

    .line 1612
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    .restart local v50    # "checkIntent":Landroid/content/Intent;
    .restart local v57    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v52

    .local v52, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 508
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_6

    .line 510
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_5

    move v4, v5

    .line 509
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 515
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 516
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 520
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 522
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 523
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 525
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 526
    if-eqz p1, :cond_3

    .line 530
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 531
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 532
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 533
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 537
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 538
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 539
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 560
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_a

    move v1, v6

    .line 561
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 564
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 566
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 567
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 568
    const-string/jumbo v7, "user_setup_complete"

    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 567
    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 569
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_c

    .line 571
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 585
    :goto_5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 586
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 587
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    :goto_6
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 507
    return-void

    .end local v1    # "intentFlags":I
    :cond_5
    move v4, v6

    .line 510
    goto/16 :goto_0

    .line 511
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_0

    .line 512
    return-void

    :cond_7
    move-object v4, v7

    .line 538
    goto :goto_1

    .line 541
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    .line 542
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 541
    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_9

    .line 544
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 545
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 546
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 547
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 550
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 551
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 552
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 554
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_9
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 555
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 556
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 560
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto/16 :goto_3

    .restart local v1    # "intentFlags":I
    :cond_b
    move v4, v6

    .line 567
    goto :goto_4

    .line 572
    :cond_c
    const v4, 0x82000

    and-int/2addr v4, v1

    .line 573
    const/high16 v7, 0x80000

    .line 572
    if-ne v4, v7, :cond_e

    .line 577
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_d

    .line 578
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    .line 580
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    .line 583
    :cond_e
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    :cond_f
    move v5, v6

    .line 587
    goto :goto_6
.end method

.method private setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "taskWidth"    # I
    .param p3, "taskHeight"    # I
    .param p4, "screenOrientation"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 741
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 742
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 743
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p3, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 744
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p4, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 745
    if-nez p1, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 752
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setMaxDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, -0x1

    .line 607
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 608
    .local v0, "maxTaskDimensions":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v1, v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getMaxTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    .line 609
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 610
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 605
    return-void
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, -0x1

    .line 617
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 619
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 622
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 623
    .local v0, "minTaskDimensions":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v1, v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getMinTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    .line 624
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 625
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 616
    .end local v0    # "minTaskDimensions":Landroid/graphics/Point;
    :goto_0
    return-void

    .line 629
    :cond_0
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 630
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_0
.end method

.method private subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1836
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1837
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractNonDecorInsets(Landroid/graphics/Rect;)V

    .line 1838
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1839
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1840
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 1841
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1842
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1835
    return-void

    .line 1840
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_0

    .line 1841
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_1
.end method

.method private subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1847
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1848
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractStableInsets(Landroid/graphics/Rect;)V

    .line 1849
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1853
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1854
    const/4 v3, 0x0

    .line 1856
    .local v3, "topInset":I
    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 1857
    .local v2, "rightInset":I
    :goto_1
    if-eqz p4, :cond_2

    const/4 v0, 0x0

    .line 1858
    .local v0, "bottomInset":I
    :goto_2
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1846
    return-void

    .line 1854
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    .end local v3    # "topInset":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .restart local v3    # "topInset":I
    goto :goto_0

    .line 1856
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_1

    .line 1857
    :cond_2
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_2
.end method

.method static validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 2079
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received strange task bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    return-object v3

    .line 2083
    :cond_0
    return-object p0
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 911
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 910
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 920
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_0

    .line 922
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 926
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 927
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 928
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 929
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 931
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 932
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v3

    .line 931
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 938
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 940
    .local v0, "size":I
    if-ne p1, v0, :cond_3

    if-lez v0, :cond_3

    .line 941
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 942
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1

    .line 945
    add-int/lit8 p1, p1, -0x1

    .line 949
    :cond_1
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 950
    if-eq p1, v0, :cond_2

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_3

    .line 951
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, p2}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isMinTaskDimensionsChangedLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    .line 950
    if-eqz v2, :cond_3

    .line 952
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, p2}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setMinTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    .line 958
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 959
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 960
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 961
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 918
    :cond_4
    return-void

    .line 935
    .end local v0    # "size":I
    :cond_5
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 914
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1008
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method canGoInDockedStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1232
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inCropWindowsResizeMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isSnapViewing()Z

    move-result v0

    :cond_0
    return v0

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inCropWindowsResizeMode()Z

    move-result v0

    :cond_2
    return v0
.end method

.method canMatchRootAffinity()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2177
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method clearAppIconInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2383
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearAppIconInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mStartX:I

    .line 2385
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mStartY:I

    .line 2386
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mAppIconWidth:I

    .line 2387
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mAppIconHeight:I

    .line 2388
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsHomeItem:Z

    .line 2389
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    .line 2382
    return-void
.end method

.method closeRecentsChain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 668
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 674
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 675
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 667
    return-void
.end method

.method disposeThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;->reset()V

    .line 787
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 788
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 785
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2182
    const-string/jumbo v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2183
    const-string/jumbo v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2184
    const-string/jumbo v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2185
    const-string/jumbo v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2187
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2191
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2196
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "canMoveTaskToScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_3

    .line 2202
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    const-string/jumbo v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 2208
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2209
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2211
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 2215
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2216
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2218
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 2222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 2226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-eqz v0, :cond_14

    .line 2231
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2232
    const-string/jumbo v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2233
    const-string/jumbo v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2234
    const-string/jumbo v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2235
    const-string/jumbo v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2237
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_a

    .line 2238
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v3, :cond_b

    .line 2239
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2240
    const-string/jumbo v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2241
    const-string/jumbo v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2242
    const-string/jumbo v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    :cond_b
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v7, :cond_15

    .line 2247
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2248
    const-string/jumbo v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2249
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_16

    .line 2251
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    :goto_3
    const-string/jumbo v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2256
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_17

    .line 2258
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    :goto_4
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2265
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v0, :cond_18

    .line 2270
    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2271
    const-string/jumbo v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2272
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 2273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2275
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_f

    .line 2276
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2278
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hasBeenVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mResizeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isResizeable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " firstActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " lastActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (inactive for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    const/4 v6, 0x0

    .line 2287
    .local v6, "mwPrinted":Z
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-eqz v0, :cond_10

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mHiddenState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 2290
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    if-nez v0, :cond_11

    .line 2291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_19

    const-string/jumbo v0, " "

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "freeformDensity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 2293
    :cond_11
    if-eqz v6, :cond_12

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2297
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    const-string/jumbo v0, "isPrivateMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPrivateMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2180
    return-void

    .line 2189
    .end local v6    # "mwPrinted":Z
    :cond_13
    const-string/jumbo v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2229
    :cond_14
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_8

    .line 2230
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 2245
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v7, :cond_c

    .line 2246
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_d

    goto/16 :goto_2

    .line 2253
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2260
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2266
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2267
    const-string/jumbo v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2268
    const-string/jumbo v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_5

    .restart local v6    # "mwPrinted":Z
    :cond_19
    move-object v0, p2

    .line 2291
    goto/16 :goto_6
.end method

.method extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1989
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1990
    .local v0, "extracted":Landroid/content/res/Configuration;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1991
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1992
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1993
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1994
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1995
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1996
    return-object v0
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1253
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1254
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1255
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1256
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 1254
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1260
    return-object v1

    .line 1263
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .prologue
    .line 1324
    const/4 v1, 0x0

    .line 1325
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1326
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 1327
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1328
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 1326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1331
    :cond_1
    move v1, v0

    .line 1332
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_0

    .line 1336
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 778
    return-void
.end method

.method gatherVisibleActivities(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "outArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    .line 822
    return-void

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 826
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 827
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1

    .line 831
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 820
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method getAppIconHeight()I
    .locals 1

    .prologue
    .line 2360
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAppIconHeight:I

    return v0
.end method

.method getAppIconWidth()I
    .locals 1

    .prologue
    .line 2356
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAppIconWidth:I

    return v0
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 3
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 759
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 760
    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 761
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 763
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/server/am/RecentTasks;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 766
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 769
    const/high16 v2, 0x10000000

    .line 768
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_1
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2129
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2130
    return-object v1

    .line 2133
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_1

    .line 2134
    return-object v1

    .line 2137
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2138
    .local v0, "stackId":I
    if-eqz v0, :cond_2

    .line 2139
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2142
    :cond_2
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    if-eqz v2, :cond_5

    .line 2143
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2140
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2147
    :cond_4
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2148
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2146
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    :cond_6
    return-object v1

    .line 2171
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1
.end method

.method getLaunchStackId()I
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2118
    const/4 v0, 0x0

    return v0

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 2121
    const/4 v0, 0x2

    return v0

    .line 2123
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 800
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    return-object v1

    .line 805
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getStartX()I
    .locals 1

    .prologue
    .line 2348
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mStartX:I

    return v0
.end method

.method getStartY()I
    .locals 1

    .prologue
    .line 2352
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mStartY:I

    return v0
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    .line 1117
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 1118
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1119
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1121
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    .line 1124
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 1125
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 1126
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 809
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 810
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 811
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 809
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 814
    :cond_0
    return-object v1

    .line 816
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method inCropWindowsResizeMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1227
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isApplicationTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1201
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isCustomScaleDownAnimationAllowed()Z
    .locals 3

    .prologue
    .line 2368
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCustomScaleDownAnimationAllowed() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    return v0
.end method

.method isHomeItem()Z
    .locals 1

    .prologue
    .line 2364
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsHomeItem:Z

    return v0
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1193
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskWhitelistedLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1176
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "pkg":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 1178
    return v5

    .line 1180
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1181
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1182
    return v5

    .line 1184
    :cond_2
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1185
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1186
    const/4 v3, 0x1

    return v3

    .line 1184
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1189
    :cond_4
    return v5
.end method

.method isOverHomeStack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1205
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecentsTask()Z
    .locals 2

    .prologue
    .line 1197
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isResizeable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1215
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v2, :cond_3

    .line 1217
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v2, :cond_2

    .line 1218
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    .line 1217
    if-eqz v2, :cond_0

    .line 1218
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1222
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v2, :cond_4

    .line 1223
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    .line 1222
    if-eqz v2, :cond_5

    .line 1223
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    if-eqz v2, :cond_6

    .line 1222
    :cond_5
    :goto_1
    return v0

    :cond_6
    move v0, v1

    .line 1223
    goto :goto_1
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 643
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 644
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isSnapViewing()Z
    .locals 1

    .prologue
    .line 1241
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 1242
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSnapView:Z

    return v0

    .line 1244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1136
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    .line 1137
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1138
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1139
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1140
    :pswitch_4
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 898
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 7
    .param p1, "activityNdx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1017
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1019
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 1017
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2

    .line 1024
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 1025
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1026
    add-int/lit8 p1, p1, -0x1

    .line 1027
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1029
    const-string/jumbo v4, "clear-task-index"

    move v5, v2

    .line 1028
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    add-int/lit8 p1, p1, -0x1

    .line 1031
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1015
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 1051
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1052
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1053
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1054
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1070
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1072
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 1070
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    move-object v11, v1

    .line 1079
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 1080
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1081
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 1079
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1084
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 1085
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 1086
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1088
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1089
    const-string/jumbo v4, "clear-task-stack"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1088
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    add-int/lit8 v8, v8, -0x1

    .line 1091
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 1098
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    .line 1099
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    .line 1100
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 1101
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    .line 1102
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1103
    const-string/jumbo v6, "clear-task-top"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    .line 1102
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1105
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 1109
    :cond_7
    return-object v11

    .line 1113
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method final performClearTaskLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1041
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 1042
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1045
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p0, v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V

    .line 1039
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 967
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_0

    .line 969
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 971
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 975
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 979
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 983
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 984
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 985
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 988
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 992
    :cond_5
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_6

    .line 993
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 994
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isMinTaskDimensionsChangedLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 995
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setMinTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    .line 1000
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1001
    return v1
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 1129
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 680
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 681
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 682
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 683
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 678
    :cond_0
    return-void
.end method

.method sanitizeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2059
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_0

    .line 2060
    return-void

    .line 2066
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 2067
    .local v1, "overrideScreenLayout":I
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2068
    .local v0, "newScreenLayout":I
    and-int/lit8 v2, v0, -0x31

    .line 2069
    and-int/lit8 v3, v1, 0x30

    .line 2068
    or-int v0, v2, v3

    .line 2070
    and-int/lit8 v2, v0, -0x10

    .line 2071
    and-int/lit8 v3, v1, 0xf

    .line 2070
    or-int v0, v2, v3

    .line 2072
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 2075
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 2057
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x80000

    const/4 v8, 0x0

    .line 1348
    const-string/jumbo v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1350
    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1352
    :cond_0
    const-string/jumbo v4, "real_activity_suspended"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1353
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1354
    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 1361
    const-string/jumbo v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1362
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1363
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1368
    :cond_2
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    const-string/jumbo v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1370
    const-string/jumbo v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    const-string/jumbo v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1372
    const-string/jumbo v4, "user_setup_complete"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1373
    const-string/jumbo v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1374
    const-string/jumbo v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1375
    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1376
    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1378
    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1379
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1380
    const-string/jumbo v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1382
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_4

    .line 1383
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1385
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1386
    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1388
    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1389
    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    const-string/jumbo v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1391
    const-string/jumbo v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_b

    const-string/jumbo v4, ""

    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    const-string/jumbo v4, "resize_mode"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1393
    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1394
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    .line 1396
    const-string/jumbo v4, "non_fullscreen_bounds"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 1395
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1398
    :cond_5
    const-string/jumbo v4, "min_width"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1399
    const-string/jumbo v4, "min_height"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1403
    const-string/jumbo v4, "display_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1404
    const-string/jumbo v4, "can_move_task_to_screen"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    const-string/jumbo v4, "is_private_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->isPrivateMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1412
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1413
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1415
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    :cond_6
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1419
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1420
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1423
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1424
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 1425
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1426
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1427
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_c

    .line 1429
    if-lez v1, :cond_c

    .line 1345
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    return-void

    .line 1363
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_8
    const-string/jumbo v4, "@"

    goto/16 :goto_0

    .line 1365
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1366
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "@"

    goto :goto_4

    .line 1391
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto/16 :goto_2

    .line 1433
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1435
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method setAppIconInfo(IIIIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isHomeItem"    # Z

    .prologue
    .line 2373
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppIconInfo(), x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isHomeItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mStartX:I

    .line 2375
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mStartY:I

    .line 2376
    iput p3, p0, Lcom/android/server/am/TaskRecord;->mAppIconWidth:I

    .line 2377
    iput p4, p0, Lcom/android/server/am/TaskRecord;->mAppIconHeight:I

    .line 2378
    iput-boolean p5, p0, Lcom/android/server/am/TaskRecord;->mIsHomeItem:Z

    .line 2379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsCustomScaleDownAnimationAllowed:Z

    .line 2372
    return-void
.end method

.method setFrontOfTask()V
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 862
    return-void
.end method

.method setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 872
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 874
    .local v1, "foundFront":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 875
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 876
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 877
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_2

    .line 878
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 875
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 872
    .end local v0    # "activityNdx":I
    .end local v1    # "foundFront":Z
    .end local v2    # "numActivities":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "foundFront":Z
    goto :goto_0

    .line 880
    .restart local v0    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 882
    const/4 v1, 0x1

    goto :goto_2

    .line 885
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v1, :cond_4

    if-lez v2, :cond_4

    .line 888
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 890
    :cond_4
    if-eqz p1, :cond_5

    .line 891
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 867
    :cond_5
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 501
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 502
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 503
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 500
    return-void
.end method

.method setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 715
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 716
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 717
    .local v3, "taskWidth":I
    const/4 v2, 0x0

    .line 718
    .local v2, "taskHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 720
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 721
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 731
    :goto_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z

    move-result v4

    return v4

    .line 722
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    .line 724
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 725
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    .line 726
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 727
    iget v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 729
    .end local v0    # "displaySize":Landroid/graphics/Point;
    :cond_1
    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setLastThumbnailLocked() called on Task without stack"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setLockTaskAuth()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1146
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    if-nez v2, :cond_1

    .line 1147
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-eq v2, v1, :cond_0

    .line 1148
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-ne v2, v0, :cond_1

    .line 1150
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 1152
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    packed-switch v2, :pswitch_data_0

    .line 1145
    :goto_0
    return-void

    .line 1154
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1155
    const/4 v0, 0x3

    .line 1154
    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1159
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1163
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1167
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setMaxTaskDimensions(II)V
    .locals 1
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 599
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 600
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 601
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 598
    :cond_0
    return-void
.end method

.method setMinTaskDimensions(II)V
    .locals 1
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 593
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 594
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 595
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 592
    :cond_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 663
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 661
    return-void

    .line 663
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 658
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 656
    return-void

    .line 658
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 689
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 690
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 692
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 693
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 694
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_2

    .line 695
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    const-string/jumbo v3, " should be "

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 698
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 700
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 705
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 707
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 687
    return-void

    .line 703
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 1
    .param p1, "taskToReturnTo"    # I

    .prologue
    .line 648
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 649
    const/4 p1, 0x1

    .line 648
    .end local p1    # "taskToReturnTo":I
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 647
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2306
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2307
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    const-string/jumbo v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2310
    const-string/jumbo v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2312
    const-string/jumbo v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2314
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2311
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 2317
    :cond_1
    const-string/jumbo v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    .line 2322
    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2328
    :goto_1
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2330
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2331
    const-string/jumbo v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2324
    :cond_2
    const-string/jumbo v1, "d-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2333
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 2334
    const-string/jumbo v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2336
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_5

    .line 2337
    const-string/jumbo v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2340
    :cond_5
    const-string/jumbo v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 837
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 838
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 839
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 840
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    return-object v1

    .line 838
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 845
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 849
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 850
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 851
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 852
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 853
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 852
    if-nez v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    return-object v1

    .line 850
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 859
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v4
.end method

.method touchActiveTime()V
    .locals 4

    .prologue
    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 490
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 491
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 488
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1341
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1342
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1339
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1696
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/content/res/Configuration;
    .locals 19
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1705
    const/4 v9, 0x0

    .line 1709
    .local v9, "boundsChanged":Z
    if-nez p1, :cond_0

    .line 1710
    const/4 v9, 0x1

    .line 1716
    :cond_0
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_5

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1718
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-lt v2, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-ge v2, v4, :cond_2

    .line 1719
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-ge v2, v5, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    :goto_0
    add-int v17, v4, v2

    .line 1720
    .local v17, "right":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-ge v2, v5, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    :goto_1
    add-int v8, v4, v2

    .line 1721
    .local v8, "bottom":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v4, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1722
    const/4 v9, 0x1

    .line 1724
    .end local v8    # "bottom":I
    .end local v17    # "right":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1725
    const/4 v9, 0x1

    .line 1728
    :cond_3
    new-instance v14, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v14, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1729
    .local v14, "newConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    .line 1730
    .local v18, "serviceConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v10

    .line 1731
    .local v10, "changes":I
    and-int/lit16 v2, v10, 0x1000

    if-eqz v2, :cond_d

    const/4 v13, 0x1

    .line 1732
    .local v13, "isDensityChange":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mMovingTaskWithReplacing:Z

    if-nez v2, :cond_4

    if-eqz v13, :cond_5

    .line 1733
    :cond_4
    const/16 p3, 0x1

    .line 1736
    .end local v10    # "changes":I
    .end local v13    # "isDensityChange":Z
    .end local v14    # "newConfig":Landroid/content/res/Configuration;
    .end local v18    # "serviceConfig":Landroid/content/res/Configuration;
    .end local p3    # "forceUpdate":Z
    :cond_5
    if-nez v9, :cond_6

    if-eqz p3, :cond_e

    .line 1748
    .end local v9    # "boundsChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1749
    .local v15, "oldConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    move/from16 v16, v0

    .line 1751
    .local v16, "oldFullscreen":Z
    if-nez p1, :cond_f

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 1752
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_10

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_7

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    .line 1753
    if-eqz v2, :cond_7

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1757
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1758
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1780
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 1781
    .local v12, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 1782
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1783
    .local v11, "defaultDisplaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 1784
    invoke-virtual {v12, v11}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1785
    new-instance v3, Landroid/graphics/Rect;

    iget v2, v12, Landroid/graphics/Point;->x:I

    iget v4, v12, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1786
    .local v3, "tmp":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1820
    .end local v3    # "tmp":Landroid/graphics/Rect;
    .end local v11    # "defaultDisplaySize":Landroid/graphics/Point;
    .end local v12    # "displaySize":Landroid/graphics/Point;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    move/from16 v0, v16

    if-eq v2, v0, :cond_9

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V

    .line 1825
    :cond_9
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_18

    .line 1826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_18

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mMovingTaskWithReplacing:Z

    if-eqz v2, :cond_17

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_5
    return-object v2

    .line 1719
    .end local v15    # "oldConfig":Landroid/content/res/Configuration;
    .end local v16    # "oldFullscreen":Z
    .restart local v9    # "boundsChanged":Z
    .restart local p3    # "forceUpdate":Z
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto/16 :goto_0

    .line 1720
    .restart local v17    # "right":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto/16 :goto_1

    .line 1731
    .end local v17    # "right":I
    .restart local v10    # "changes":I
    .restart local v14    # "newConfig":Landroid/content/res/Configuration;
    .restart local v18    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "isDensityChange":Z
    goto/16 :goto_2

    .line 1737
    .end local v10    # "changes":I
    .end local v13    # "isDensityChange":Z
    .end local v14    # "newConfig":Landroid/content/res/Configuration;
    .end local v18    # "serviceConfig":Landroid/content/res/Configuration;
    .end local p3    # "forceUpdate":Z
    :cond_e
    const/4 v2, 0x0

    return-object v2

    .line 1751
    .end local v9    # "boundsChanged":Z
    .restart local v15    # "oldConfig":Landroid/content/res/Configuration;
    .restart local v16    # "oldFullscreen":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1792
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1795
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_11

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->adjustForMaximumTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 1799
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_14

    .line 1800
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1804
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1805
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1807
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-eq v2, v4, :cond_15

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v6, :cond_16

    const/4 v4, 0x1

    .line 1807
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    goto/16 :goto_4

    .line 1802
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 1808
    :cond_15
    const/4 v2, 0x0

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    goto :goto_8

    .line 1827
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1830
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_9
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_9
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 2089
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_0

    .line 2090
    return-void

    .line 2093
    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2095
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2096
    const-string/jumbo v2, " in stack="

    .line 2095
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2098
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 2099
    return-void

    .line 2101
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 2088
    :goto_0
    return-void

    .line 2104
    :cond_3
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 2107
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 17

    .prologue
    .line 2001
    const/4 v13, 0x0

    .line 2002
    .local v13, "recentBounds":Landroid/graphics/Rect;
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2004
    .local v16, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_6

    .line 2005
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    move v9, v1

    .line 2007
    .local v9, "hasOptionsLauchBounds":Z
    :goto_1
    if-nez v9, :cond_0

    .line 2008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getBoundsInDeXFromRecentTasks(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2011
    .end local v9    # "hasOptionsLauchBounds":Z
    .end local v13    # "recentBounds":Landroid/graphics/Rect;
    .end local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v13, :cond_7

    move-object v7, v13

    .line 2014
    .local v7, "bounds":Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 2016
    .local v8, "configChanges":Landroid/content/res/Configuration;
    const/4 v10, 0x0

    .line 2018
    .local v10, "isBoundsLargerThanMinSize":Z
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_3

    .line 2019
    if-eqz v8, :cond_3

    .line 2020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isValidTaskId(I)Z

    move-result v1

    .line 2018
    if-eqz v1, :cond_3

    .line 2021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v15, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2022
    .local v15, "taskStack":I
    const/4 v1, 0x2

    if-ne v15, v1, :cond_8

    const/4 v11, 0x1

    .line 2024
    .local v11, "isTaskInFreeformStack":Z
    :goto_3
    const/4 v1, 0x3

    if-eq v15, v1, :cond_1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 2025
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isExpandedDockedStack()Z

    move-result v12

    .line 2026
    :goto_4
    if-nez v11, :cond_2

    if-eqz v12, :cond_3

    .line 2027
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->resizeTask(ILandroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    .line 2031
    .end local v11    # "isTaskInFreeformStack":Z
    .end local v15    # "taskStack":I
    :cond_3
    if-eqz v7, :cond_4

    .line 2034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2035
    .local v14, "screenOrientation":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_a

    .line 2036
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_a

    .line 2035
    const/4 v10, 0x1

    .line 2039
    .local v10, "isBoundsLargerThanMinSize":Z
    :goto_5
    if-eqz v10, :cond_4

    .line 2040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2049
    .end local v10    # "isBoundsLargerThanMinSize":Z
    .end local v14    # "screenOrientation":I
    :cond_4
    return-object v7

    .line 2005
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "configChanges":Landroid/content/res/Configuration;
    .restart local v13    # "recentBounds":Landroid/graphics/Rect;
    .restart local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2004
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2011
    .end local v13    # "recentBounds":Landroid/graphics/Rect;
    .end local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    goto/16 :goto_2

    .line 2022
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "configChanges":Landroid/content/res/Configuration;
    .local v10, "isBoundsLargerThanMinSize":Z
    .restart local v15    # "taskStack":I
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "isTaskInFreeformStack":Z
    goto :goto_3

    .line 2024
    :cond_9
    const/4 v12, 0x0

    .local v12, "isTaskInResizedStack":Z
    goto :goto_4

    .line 2036
    .end local v11    # "isTaskInFreeformStack":Z
    .end local v12    # "isTaskInResizedStack":Z
    .end local v15    # "taskStack":I
    .restart local v14    # "screenOrientation":I
    :cond_a
    const/4 v1, 0x2

    if-ne v14, v1, :cond_c

    .line 2037
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v1, v2, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 2036
    :cond_c
    const/4 v10, 0x0

    goto :goto_5
.end method

.method updateTaskDescription()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1272
    .local v7, "numActivities":I
    if-nez v7, :cond_5

    const/4 v9, 0x0

    .line 1274
    .local v9, "relinquish":Z
    :goto_0
    const/4 v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "activityNdx":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1277
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_7

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_7

    .line 1280
    add-int/lit8 v6, v6, 0x1

    .line 1288
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lez v6, :cond_a

    .line 1293
    const/4 v1, 0x0

    .line 1294
    .local v1, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1295
    .local v3, "iconFilename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1296
    .local v4, "colorPrimary":I
    const/4 v5, 0x0

    .line 1297
    .local v5, "colorBackground":I
    add-int/lit8 v6, v6, -0x1

    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "iconFilename":Ljava/lang/String;
    :goto_2
    if-ltz v6, :cond_9

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1299
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_4

    .line 1300
    if-nez v1, :cond_1

    .line 1301
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 1303
    :cond_1
    if-nez v3, :cond_2

    .line 1304
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    .line 1306
    :cond_2
    if-nez v4, :cond_3

    .line 1307
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    .line 1309
    :cond_3
    if-nez v5, :cond_4

    .line 1310
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v5

    .line 1297
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1273
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    .end local v6    # "activityNdx":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "relinquish":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    const/4 v9, 0x1

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .end local v9    # "relinquish":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .line 1283
    .restart local v6    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 1284
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v10, 0x80000

    and-int/2addr v0, v10

    if-nez v0, :cond_0

    .line 1275
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1314
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "colorPrimary":I
    .restart local v5    # "colorBackground":I
    :cond_9
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1317
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v0, v2, :cond_a

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1267
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    :cond_a
    return-void
.end method
