.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private mCanLaunchAsNewInstance:Z

.field private mDoResume:Z

.field private mExceedsMaxMultiInstanceCnt:Z

.field private mForceCreateNewInstance:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchFlags:I

.field private mLaunchSingleInstance:Z

.field private mLaunchSingleTask:Z

.field private mLaunchSingleTop:Z

.field private mLaunchTaskBehind:Z

.field private mMovedOtherTask:Z

.field private mMovedToFront:Z

.field private mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private mReusedActivity:Lcom/android/server/am/ActivityRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 199
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 198
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 252
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mForceCreateNewInstance:Z

    .line 254
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mExceedsMaxMultiInstanceCnt:Z

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 300
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 301
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 302
    new-instance v0, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 299
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .prologue
    const/high16 v1, 0x80000

    .line 2336
    and-int v0, p4, v1

    if-eqz v0, :cond_1

    .line 2337
    if-nez p2, :cond_0

    .line 2336
    if-eqz p3, :cond_1

    .line 2339
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    const v0, -0x8080001

    .line 2341
    and-int/2addr p4, v0

    .line 2358
    :goto_0
    :pswitch_0
    return p4

    .line 2344
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2348
    :pswitch_1
    or-int/2addr p4, v1

    .line 2349
    goto :goto_0

    .line 2351
    :pswitch_2
    or-int/2addr p4, v1

    .line 2352
    goto :goto_0

    .line 2354
    :pswitch_3
    const v0, -0x8000001

    and-int/2addr p4, v0

    .line 2355
    goto :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 29
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .prologue
    .line 2657
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v22

    .line 2658
    .local v22, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2661
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2663
    .local v8, "userId":I
    :goto_0
    if-eqz p5, :cond_14

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2664
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 2665
    .local v14, "cmpPackageName":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2667
    :try_start_0
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v26

    .line 2668
    .local v26, "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v26, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    .line 2729
    .end local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_0
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2731
    :try_start_1
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v25

    .line 2732
    .local v25, "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v27

    .line 2733
    .local v27, "secPolicy":Lcom/samsung/android/knox/ISecurityPolicy;
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/ActivityStarter;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2734
    :cond_1
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Lcom/samsung/android/knox/ISecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v2

    .line 2733
    if-eqz v2, :cond_3

    .line 2735
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v21

    .line 2736
    .local v21, "list":Ljava/util/List;
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-eqz v2, :cond_10

    .line 2764
    .end local v21    # "list":Ljava/util/List;
    .end local v25    # "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .end local v27    # "secPolicy":Lcom/samsung/android/knox/ISecurityPolicy;
    :cond_3
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    .line 2765
    const/4 v3, 0x1

    .line 2764
    invoke-virtual {v2, v14, v3, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v18

    .line 2767
    .local v18, "isAllowed":Z
    if-nez v18, :cond_14

    .line 2768
    const-string/jumbo v2, "ActivityStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 2770
    const/4 v2, 0x0

    return v2

    .line 2661
    .end local v8    # "userId":I
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v18    # "isAllowed":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "userId":I
    goto/16 :goto_0

    .line 2669
    .restart local v14    # "cmpPackageName":Ljava/lang/String;
    .restart local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_5
    const/16 v17, 0x0

    .line 2670
    .local v17, "isActivityAllowed":Z
    :try_start_3
    const-string/jumbo v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2671
    .local v9, "activity":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 2672
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2674
    :cond_6
    sget-object v3, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_7

    aget-object v16, v3, v2

    .line 2675
    .local v16, "exception":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2676
    const/16 v17, 0x1

    .line 2680
    .end local v16    # "exception":Ljava/lang/String;
    :cond_7
    if-eqz v17, :cond_9

    .line 2681
    const/high16 v2, 0x800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2682
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2683
    const-string/jumbo v3, " succeeded"

    .line 2682
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2693
    .end local v9    # "activity":Ljava/lang/String;
    .end local v17    # "isActivityAllowed":Z
    .end local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :catch_0
    move-exception v15

    .line 2694
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2674
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v16    # "exception":Ljava/lang/String;
    .restart local v17    # "isActivityAllowed":Z
    .restart local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2685
    .end local v16    # "exception":Ljava/lang/String;
    :cond_9
    :try_start_4
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings restriction policy blocks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from starting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 2687
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2688
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2689
    const-string/jumbo v3, " failed. Blocked due to settings changes not allowed."

    .line 2688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2690
    const/4 v2, 0x0

    return v2

    .line 2696
    .end local v9    # "activity":Ljava/lang/String;
    .end local v17    # "isActivityAllowed":Z
    .end local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_a
    sget-object v2, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2697
    sget-object v2, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2696
    if-eqz v2, :cond_c

    .line 2700
    :cond_b
    :try_start_5
    const-string/jumbo v2, "kioskmode"

    .line 2699
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v20

    .line 2701
    .local v20, "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    if-eqz v20, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2702
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2703
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2704
    const-string/jumbo v3, " failed. Task manager is not allowed."

    .line 2703
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2705
    const/4 v2, 0x0

    return v2

    .line 2707
    .end local v20    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    :catch_1
    move-exception v15

    .line 2708
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ActivityManager"

    const-string/jumbo v3, "Is edm running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2710
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_c
    const-string/jumbo v2, "com.vlingo.midas"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "com.samsung.voiceserviceplatform"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2712
    :cond_d
    :try_start_6
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v26

    .line 2713
    .restart local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v26, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2714
    :cond_e
    const-string/jumbo v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2715
    .restart local v9    # "activity":Ljava/lang/String;
    if-nez v9, :cond_f

    .line 2716
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2718
    :cond_f
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2719
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 2720
    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2721
    const-string/jumbo v3, " failed. Blocked due to S Voice not allowed."

    .line 2720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2719
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2722
    const/4 v2, 0x0

    return v2

    .line 2724
    .end local v9    # "activity":Ljava/lang/String;
    .end local v26    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :catch_2
    move-exception v15

    .line 2725
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2737
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v21    # "list":Ljava/util/List;
    .restart local v25    # "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .restart local v27    # "secPolicy":Lcom/samsung/android/knox/ISecurityPolicy;
    :cond_10
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    .line 2738
    .local v28, "topActivity":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2739
    .restart local v17    # "isActivityAllowed":Z
    const/16 v19, 0x0

    .line 2740
    .local v19, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2741
    .restart local v9    # "activity":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_12

    aget-object v16, v3, v2

    .line 2742
    .restart local v16    # "exception":Ljava/lang/String;
    if-eqz v28, :cond_11

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2743
    const/16 v19, 0x1

    .line 2745
    :cond_11
    if-eqz v9, :cond_13

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2746
    const/16 v17, 0x1

    .line 2750
    .end local v16    # "exception":Ljava/lang/String;
    :cond_12
    if-eqz v19, :cond_3

    if-nez v17, :cond_3

    .line 2751
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2752
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2753
    const-string/jumbo v3, " failed. Blocked due to password change enforcement."

    .line 2752
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2754
    const/4 v2, 0x0

    return v2

    .line 2741
    .restart local v16    # "exception":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2758
    .end local v9    # "activity":Ljava/lang/String;
    .end local v16    # "exception":Ljava/lang/String;
    .end local v17    # "isActivityAllowed":Z
    .end local v19    # "isTopActivityException":Z
    .end local v21    # "list":Ljava/util/List;
    .end local v25    # "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .end local v27    # "secPolicy":Lcom/samsung/android/knox/ISecurityPolicy;
    .end local v28    # "topActivity":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 2759
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2772
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v15

    .line 2773
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2780
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_14
    const/4 v12, 0x0

    .line 2781
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_15

    .line 2782
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 2784
    .end local v12    # "bundle":Landroid/os/Bundle;
    :cond_15
    if-eqz v12, :cond_17

    .line 2785
    const-string/jumbo v2, "edm:nonSystemUid"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2784
    if-nez v2, :cond_17

    .line 2786
    const-string/jumbo v2, "edm:startedByAdmin"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2829
    const/16 p4, 0x0

    .line 2832
    .end local p4    # "options":Landroid/app/ActivityOptions;
    :cond_16
    :goto_5
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2834
    const/4 v2, -0x1

    return v2

    .line 2787
    .restart local p4    # "options":Landroid/app/ActivityOptions;
    :cond_17
    if-eqz p2, :cond_16

    .line 2789
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 2790
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v23

    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 2794
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_16

    .line 2801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 2802
    .local v24, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v13

    .line 2804
    .local v13, "callingPkgName":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2807
    :try_start_8
    const-string/jumbo v2, "application_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2806
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v10

    .line 2809
    .local v10, "appPolicy":Lcom/samsung/android/knox/application/IApplicationPolicy;
    if-eqz v10, :cond_18

    move-object/from16 v0, v23

    invoke-interface {v10, v0, v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2810
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2811
    const-string/jumbo v4, " which is at prevent start black list"

    .line 2810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2813
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 2814
    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2813
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2815
    const/4 v2, 0x0

    return v2

    .line 2818
    :cond_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_5

    .line 2820
    .end local v10    # "appPolicy":Lcom/samsung/android/knox/application/IApplicationPolicy;
    :catch_5
    move-exception v15

    .line 2821
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private computeLaunchingTaskFlags()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v4, 0x0

    .line 1762
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_8

    .line 1763
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1764
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1765
    .local v2, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1766
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1767
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Launching into task without base intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1768
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1773
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_3

    .line 1774
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1775
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1776
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to launch singleInstance/Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1777
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1777
    const-string/jumbo v5, " into different task "

    .line 1776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1777
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1779
    :cond_2
    if-eqz v2, :cond_3

    .line 1780
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1781
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caller with mInTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1782
    const-string/jumbo v5, " has root "

    .line 1781
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1782
    const-string/jumbo v5, " but target is singleInstance/Task"

    .line 1781
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1788
    :cond_3
    if-nez v2, :cond_6

    .line 1789
    const v1, 0x18082000

    .line 1791
    .local v1, "flagsOfInterest":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, -0x18082001

    and-int/2addr v3, v4

    .line 1792
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, 0x18082000

    and-int/2addr v4, v5

    .line 1791
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1793
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1794
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1795
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1807
    .end local v1    # "flagsOfInterest":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1821
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1822
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_a

    .line 1825
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1826
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1827
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1826
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1759
    :cond_5
    :goto_2
    return-void

    .line 1800
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    .line 1801
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1804
    :cond_7
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1809
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1815
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 1816
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    .line 1815
    if-eqz v3, :cond_4

    .line 1817
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1830
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 1834
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 1835
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_5

    .line 1838
    :cond_c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2
.end method

.method private computeSourceStack()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 1850
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    .line 1851
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1852
    return-void

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1856
    return-void

    .line 1863
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    .line 1864
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from finishing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1865
    const-string/jumbo v2, "; forcing "

    .line 1864
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1865
    const-string/jumbo v2, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    .line 1864
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1865
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1864
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1867
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1868
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1870
    :cond_2
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1871
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1849
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "launchFlags"    # I
    .param p5, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 2380
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2381
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v10

    :goto_0
    if-nez v10, :cond_2

    .line 2382
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 2381
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 2385
    :cond_2
    move/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, p1, v0, v9, v1}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2386
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_3

    .line 2387
    return-object v6

    .line 2390
    :cond_3
    if-eqz v9, :cond_5

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_5

    .line 2393
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 2395
    iget-object v6, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2396
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2397
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v10, v6, :cond_4

    .line 2407
    :cond_4
    return-object v6

    .line 2410
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2411
    .local v3, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v3, :cond_6

    .line 2413
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2414
    iget-object v10, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 2421
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v4, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2422
    .local v4, "focusedStackId":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_9

    .line 2423
    const/4 v10, 0x3

    if-ne v4, v10, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    move-result v10

    .line 2422
    if-nez v10, :cond_9

    .line 2424
    :cond_7
    const/4 v10, 0x2

    if-ne v4, v10, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    move-result v2

    .line 2425
    .local v2, "canUseFocusedStack":Z
    :goto_1
    if-eqz v2, :cond_b

    if-eqz p2, :cond_8

    .line 2426
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v10

    .line 2425
    if-eqz v10, :cond_b

    .line 2429
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 2433
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 2422
    .end local v2    # "canUseFocusedStack":Z
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 2424
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 2437
    .restart local v2    # "canUseFocusedStack":Z
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v10, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 2438
    .local v5, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "stackNdx":I
    :goto_2
    if-ltz v8, :cond_e

    .line 2439
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 2442
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v10

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v11

    if-ne v10, v11, :cond_c

    .line 2443
    iget v10, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2438
    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2446
    :cond_d
    return-object v6

    .line 2461
    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v7

    .line 2475
    .local v7, "stackId":I
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v10

    invoke-static {v7, v10}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getStackIdAdjustedToDisplayId(II)I

    move-result v7

    .line 2476
    sget-object v10, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "computeStackFocus: stackId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v10, v7, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2481
    sget-object v10, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "computeStackFocus: New stack r="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " stackId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return-object v6

    .line 2463
    .end local v7    # "stackId":I
    :cond_f
    if-eqz p3, :cond_10

    const/4 v7, 0x2

    .restart local v7    # "stackId":I
    goto :goto_3

    .line 2464
    .end local v7    # "stackId":I
    :cond_10
    const/4 v7, 0x1

    .restart local v7    # "stackId":I
    goto :goto_3
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2497
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    .line 2498
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2504
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v1

    .line 2511
    .local v1, "launchStackId":I
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2512
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2504
    .end local v1    # "launchStackId":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "launchStackId":I
    goto :goto_0

    .line 2513
    :cond_2
    if-ne v1, v7, :cond_3

    .line 2516
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2520
    :cond_3
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_8

    .line 2521
    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 2522
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v3

    .line 2521
    if-eqz v3, :cond_8

    .line 2522
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v3

    .line 2521
    if-eqz v3, :cond_8

    .line 2522
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_8

    .line 2523
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_9

    .line 2525
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v6, :cond_5

    .line 2526
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v6, :cond_5

    .line 2527
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2530
    :cond_5
    if-eqz p3, :cond_7

    iget v3, p3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v3, v6, :cond_7

    .line 2534
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2531
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2532
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_8

    .line 2533
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v3, v6, :cond_6

    .line 2544
    :cond_8
    and-int/lit16 v3, p2, 0x1000

    if-nez v3, :cond_a

    .line 2545
    return-object v4

    .line 2536
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_8

    .line 2537
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v6, :cond_8

    .line 2538
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2551
    :cond_a
    if-eqz p3, :cond_b

    iget-object v2, p3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2555
    .local v2, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v3, :cond_d

    .line 2557
    return-object v2

    .line 2552
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_b
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    .line 2553
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_c
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    .line 2559
    :cond_d
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne p3, v3, :cond_e

    .line 2562
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2565
    :cond_e
    if-eqz v2, :cond_f

    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v7, :cond_f

    .line 2568
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2574
    :cond_f
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2575
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_10

    .line 2576
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-nez v3, :cond_10

    .line 2578
    return-object v4

    .line 2580
    :cond_10
    return-object v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1886
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v3, :cond_0

    .line 1887
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    if-eqz v3, :cond_0

    .line 1888
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-interface {v3, v6}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    .line 1889
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v6}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getMaxMultiInstanceCnt()I

    move-result v6

    .line 1888
    if-lt v3, v6, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mExceedsMaxMultiInstanceCnt:Z

    .line 1893
    :cond_0
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_4

    .line 1894
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x8000000

    and-int/2addr v3, v6

    if-nez v3, :cond_4

    .line 1893
    :cond_1
    const/4 v1, 0x1

    .line 1902
    .local v1, "putIntoExistingTask":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_9

    move v3, v4

    :goto_2
    and-int/2addr v1, v3

    .line 1903
    .local v1, "putIntoExistingTask":Z
    const/4 v0, 0x0

    .line 1904
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_b

    .line 1905
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1906
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1942
    .end local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    :goto_3
    return-object v0

    .end local v1    # "putIntoExistingTask":Z
    :cond_3
    move v3, v5

    .line 1888
    goto :goto_0

    .line 1896
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    if-eqz v3, :cond_1

    .line 1897
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mExceedsMaxMultiInstanceCnt:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mForceCreateNewInstance:Z

    if-eqz v3, :cond_8

    :cond_7
    const/4 v1, 0x0

    .local v1, "putIntoExistingTask":Z
    goto :goto_1

    .end local v1    # "putIntoExistingTask":Z
    :cond_8
    const/4 v1, 0x1

    .restart local v1    # "putIntoExistingTask":Z
    goto :goto_1

    :cond_9
    move v3, v5

    .line 1902
    goto :goto_2

    .line 1906
    .restart local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .local v1, "putIntoExistingTask":Z
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 1907
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    if-eqz v1, :cond_2

    .line 1908
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-eqz v3, :cond_c

    .line 1911
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .line 1912
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_e

    .line 1915
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1916
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v8, :cond_d

    .line 1915
    :goto_4
    invoke-virtual {v3, v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_d
    move v5, v4

    .line 1916
    goto :goto_4

    .line 1921
    :cond_e
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1924
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 1925
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    if-eqz v3, :cond_2

    .line 1926
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v3, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    .line 1924
    if-eqz v3, :cond_2

    .line 1927
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2

    .line 1928
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->canMatchRootAffinity()Z

    move-result v3

    .line 1924
    if-eqz v3, :cond_2

    .line 1929
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->canMatchRootAffinity()Z

    move-result v3

    .line 1924
    if-eqz v3, :cond_2

    .line 1930
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1924
    if-eqz v3, :cond_2

    .line 1931
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v3, v4, :cond_2

    .line 1932
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-nez v3, :cond_2

    .line 1933
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_3
.end method

.method private isPersona(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2838
    const/4 v1, 0x0

    .line 2839
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 2841
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2842
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2843
    const/4 v1, 0x1

    .line 2847
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    return v1
.end method

.method private isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2594
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 2596
    :cond_0
    return v2

    .line 2595
    :cond_1
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2599
    if-eq p1, v3, :cond_2

    .line 2600
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2604
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2605
    return v3

    .line 2601
    :cond_3
    return v2

    .line 2608
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_7

    .line 2612
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_9

    .line 2613
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    .line 2614
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_a

    .line 2617
    :cond_6
    return v3

    .line 2609
    :cond_7
    return v2

    .line 2613
    :cond_8
    const/4 v0, 0x1

    .local v0, "supportsPip":Z
    goto :goto_0

    .line 2612
    .end local v0    # "supportsPip":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "supportsPip":Z
    goto :goto_0

    .line 2615
    .end local v0    # "supportsPip":Z
    :cond_a
    return v2
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 262
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 263
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 265
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 267
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 271
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 273
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 275
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 276
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 277
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 278
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 280
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 281
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 282
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 284
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 285
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 286
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 288
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 289
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 295
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 296
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 261
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2148
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_3

    .line 2151
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2158
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_2

    .line 2161
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 2166
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2147
    return-void

    .line 2164
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1746
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    .line 1752
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1754
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1753
    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1745
    :cond_0
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 1570
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->reset()V

    .line 1572
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1573
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v11, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1585
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1586
    iget v11, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v11, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1587
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1588
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1589
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1591
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/ActivityStarter;->getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1593
    iget v11, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1594
    iget v11, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1595
    iget v11, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1597
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iget-boolean v12, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iget-object v13, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    .line 1596
    invoke-direct {p0, p1, v11, v12, v13}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1598
    iget-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v11, :cond_0

    .line 1599
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v11, :cond_12

    .line 1598
    :cond_0
    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1602
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1604
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_1

    .line 1605
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x10000000

    or-int/2addr v11, v12

    iput v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1609
    :cond_1
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v11, :cond_7

    .line 1625
    const/4 v3, 0x0

    .line 1626
    .local v3, "hasSameAffinityRunning":Z
    const/4 v4, 0x0

    .line 1628
    .local v4, "isInstanceInSourceStack":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v8

    .line 1629
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "hasSameAffinityRunning":Z
    .local v7, "stack$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 1630
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1632
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1633
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1637
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 1638
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 1639
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_14

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 1640
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1641
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    iget-boolean v5, v11, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1642
    :goto_5
    if-eqz v2, :cond_18

    .line 1643
    if-nez v5, :cond_16

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v11, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    .line 1645
    :goto_6
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_4

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v11, :cond_4

    .line 1646
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 1647
    const/4 v4, 0x1

    .line 1650
    :cond_4
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    .line 1655
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    if-eqz v11, :cond_1a

    .line 1656
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    iget-object v12, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v11, v12}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    .line 1655
    if-eqz v11, :cond_1a

    if-eqz v3, :cond_1a

    .line 1657
    if-eqz v4, :cond_19

    const/4 v11, 0x0

    .line 1655
    :goto_7
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    .line 1661
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    if-eqz v11, :cond_6

    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v11

    if-eqz v11, :cond_1b

    :cond_6
    const/4 v11, 0x0

    :goto_8
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mForceCreateNewInstance:Z

    .line 1668
    .end local v4    # "isInstanceInSourceStack":Z
    .end local v7    # "stack$iterator":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x10000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_9

    .line 1669
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v11, :cond_8

    .line 1670
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1d

    .line 1674
    :cond_8
    :goto_9
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x8000000

    or-int/2addr v11, v12

    iput v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1680
    :cond_9
    iget-object v12, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v13, 0x40000

    and-int/2addr v11, v13

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    :goto_a
    iput-boolean v11, v12, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1687
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1688
    if-eqz p4, :cond_1f

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, p1}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1693
    :goto_b
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1694
    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1695
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 1696
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1697
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    :goto_c
    if-eqz v10, :cond_a

    iget-boolean v11, v10, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_21

    .line 1708
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_d
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v12}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1709
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1714
    :cond_b
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_22

    move-object v11, p1

    :goto_e
    iput-object v11, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1716
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1721
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v11, :cond_23

    .line 1726
    :cond_c
    :goto_f
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1730
    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_e

    .line 1731
    move-object/from16 v1, p6

    .line 1732
    .local v1, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez p6, :cond_d

    .line 1733
    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1734
    iget-object v12, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1733
    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1736
    :cond_d
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v12, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1738
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v11, v11, -0x2

    iput v11, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1742
    .end local v1    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_e
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    if-eqz v11, :cond_24

    const/4 v11, 0x1

    :goto_10
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1569
    return-void

    .line 1593
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1594
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1595
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1599
    :cond_12
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v11, :cond_0

    .line 1600
    iget v11, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_13

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1637
    .restart local v4    # "isInstanceInSourceStack":Z
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "stack$iterator":Ljava/util/Iterator;
    .restart local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_14
    const/4 v2, 0x0

    .local v2, "hasSameAffinity":Z
    goto/16 :goto_4

    .line 1641
    .end local v2    # "hasSameAffinity":Z
    :cond_15
    const/4 v5, 0x0

    .local v5, "isInstanceVisible":Z
    goto/16 :goto_5

    .line 1643
    .end local v5    # "isInstanceVisible":Z
    :cond_16
    const/4 v3, 0x1

    .restart local v3    # "hasSameAffinityRunning":Z
    goto/16 :goto_6

    .end local v3    # "hasSameAffinityRunning":Z
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "hasSameAffinityRunning":Z
    goto/16 :goto_6

    .line 1642
    .end local v3    # "hasSameAffinityRunning":Z
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "hasSameAffinityRunning":Z
    goto/16 :goto_6

    .line 1657
    .end local v3    # "hasSameAffinityRunning":Z
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_19
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 1655
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1662
    :cond_1b
    move-object/from16 v0, p6

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_1c

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_1c
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 1672
    .end local v4    # "isInstanceInSourceStack":Z
    .end local v7    # "stack$iterator":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1d
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mCanLaunchAsNewInstance:Z

    .line 1669
    if-eqz v11, :cond_9

    goto/16 :goto_9

    .line 1680
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 1689
    :cond_1f
    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1690
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    goto/16 :goto_b

    .line 1696
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 1701
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_21
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1702
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    goto/16 :goto_d

    .line 1714
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_22
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 1722
    :cond_23
    sget-object v11, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Starting activity in task not in recents: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_f

    .line 1742
    :cond_24
    const/4 v11, 0x0

    goto :goto_10
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1946
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1947
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1952
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 1953
    .local v9, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v9, :cond_5

    .line 1954
    const/4 v7, 0x0

    .line 1957
    :goto_0
    const/4 v12, 0x0

    .line 1958
    .local v12, "moveTaskToFullscreen":Z
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v11

    .line 1961
    .local v11, "launchStackId":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v8, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1962
    .local v8, "currentStackId":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 1963
    const/4 v0, 0x2

    if-eq v8, v0, :cond_0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_8

    :cond_0
    const/4 v0, 0x1

    if-ne v11, v0, :cond_8

    const/4 v12, 0x1

    .line 1967
    .end local v8    # "currentStackId":I
    .end local v11    # "launchStackId":I
    :cond_1
    :goto_2
    if-eqz v7, :cond_3

    .line 1968
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v1, :cond_2

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 1970
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v0, :cond_a

    .line 2038
    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_4

    .line 2041
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "intentActivityFound"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2044
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2045
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2044
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 2048
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 2049
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1954
    .end local v12    # "moveTaskToFullscreen":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .local v7, "curTop":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .line 1960
    .end local v7    # "curTop":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "moveTaskToFullscreen":Z
    :cond_6
    const/4 v11, -0x1

    .restart local v11    # "launchStackId":I
    goto :goto_1

    .line 1962
    .restart local v8    # "currentStackId":I
    :cond_7
    const/4 v12, 0x1

    goto :goto_2

    .line 1963
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1967
    .end local v8    # "currentStackId":I
    .end local v11    # "launchStackId":I
    :cond_9
    if-eqz v12, :cond_3

    goto :goto_3

    .line 1971
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1972
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1973
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v1, :cond_3

    .line 1975
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_c

    .line 1976
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1978
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 1987
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    .line 1988
    const v1, 0x10008000

    .line 1987
    if-ne v0, v1, :cond_f

    const/4 v13, 0x1

    .line 1989
    .local v13, "willClearTask":Z
    :goto_5
    if-nez v13, :cond_3

    .line 1991
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1990
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 1992
    .local v10, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v10, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v10, v0, :cond_10

    .line 1996
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1997
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1998
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "bringingFoundTaskToFront"

    .line 1996
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2027
    :cond_e
    :goto_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2031
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-direct {p0, v0, v1, v9}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    goto/16 :goto_4

    .line 1987
    .end local v10    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "willClearTask":Z
    :cond_f
    const/4 v13, 0x0

    goto :goto_5

    .line 2000
    .restart local v10    # "launchStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "willClearTask":Z
    :cond_10
    iget v0, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 2001
    iget v0, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2002
    :cond_11
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_12

    .line 2005
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2006
    iget v2, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v5, "launchToSide"

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 2007
    const/4 v6, 0x1

    .line 2005
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    .line 2025
    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2010
    :cond_12
    if-eqz v12, :cond_13

    .line 2011
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2013
    const-string/jumbo v5, "hiddenFreeformMoveToFull"

    .line 2012
    const/4 v2, 0x1

    .line 2013
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    .line 2012
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    goto :goto_7

    .line 2020
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 2021
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2022
    const-string/jumbo v5, "bringToFrontInsteadOfAdjacentLaunch"

    .line 2020
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_7

    .line 2051
    .end local v10    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "willClearTask":Z
    :cond_14
    return-object p1
.end method

.method private setTaskFromInTask()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2271
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 2272
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 2273
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v2

    .line 2274
    .local v2, "stackId":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v2, v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2276
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v5, "inTaskToFront"

    .line 2275
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2277
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    iget v2, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2279
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2280
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v11, -0x1

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2283
    .end local v2    # "stackId":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2284
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2285
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "inTaskToFront"

    .line 2284
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 2290
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_4

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v1, :cond_4

    .line 2291
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 2292
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 2291
    if-nez v0, :cond_2

    .line 2292
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 2291
    if-eqz v0, :cond_4

    .line 2293
    :cond_2
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v1, 0x7533

    invoke-static {v1, v13, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2294
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2297
    return v3

    .line 2299
    :cond_3
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v13, v0, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2300
    const/4 v0, 0x3

    return v0

    .line 2304
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_5

    .line 2307
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2308
    const/4 v0, 0x2

    return v0

    .line 2311
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2315
    return v4
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const v1, 0x10008000

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2072
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2076
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2077
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2078
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2082
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2083
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 2084
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 2083
    if-nez v0, :cond_2

    .line 2084
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 2083
    if-eqz v0, :cond_4

    .line 2085
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2086
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2085
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 2087
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 2091
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2094
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2095
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2096
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 2099
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2100
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    .line 2099
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2101
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2102
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_3

    :goto_1
    const-string/jumbo v1, "startActivityUnchecked"

    .line 2101
    invoke-virtual {v0, v6, v2, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v8

    .line 2102
    goto :goto_1

    .line 2105
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2110
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-eqz v0, :cond_7

    .line 2111
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2110
    if-eqz v0, :cond_7

    .line 2112
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2113
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2112
    const/16 v2, 0x7533

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2114
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_6

    .line 2115
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2119
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiScreenAttrs;->setTo(Lcom/android/server/am/MultiScreenAttrs;)V

    .line 2122
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2123
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2122
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2124
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2127
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2128
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 2130
    :cond_8
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 2135
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2136
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 2137
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_0

    .line 2143
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 2170
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2171
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    .line 2170
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_6

    .line 2174
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2175
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v4

    .line 2176
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2177
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2178
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    move v9, v11

    .line 2174
    :goto_2
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 2179
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v10, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2180
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 2181
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2182
    .local v4, "stackId":I
    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2183
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2184
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v9, -0x1

    move v6, v2

    move v7, v11

    move v8, v2

    .line 2183
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2169
    .end local v4    # "stackId":I
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_3
    return-void

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 2177
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v9, v2

    .line 2178
    goto :goto_2

    .line 2186
    .restart local v4    # "stackId":I
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_3

    .line 2190
    .end local v4    # "stackId":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v12}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_3

    .line 2198
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto :goto_3
.end method

.method private setTaskFromSourceRecord()I
    .locals 12

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2207
    .local v8, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v0, v8, :cond_5

    const/4 v7, 0x1

    .line 2208
    .local v7, "moveStackAllowed":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2210
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2209
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_6

    .line 2214
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2219
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "sourceStackToFront"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 2223
    .local v11, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v11, v8, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v0, :cond_7

    .line 2227
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 2230
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 2231
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2232
    if-eqz v10, :cond_a

    .line 2233
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v2, 0x7533

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2234
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2237
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_4

    .line 2238
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2240
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2241
    const/4 v0, 0x3

    return v0

    .line 2207
    .end local v7    # "moveStackAllowed":Z
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 2215
    .restart local v7    # "moveStackAllowed":Z
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_1

    .line 2216
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2217
    const-string/jumbo v5, "launchToSide"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2216
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    goto :goto_1

    .line 2224
    .restart local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2225
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "sourceTaskToFront"

    move-object v1, v8

    .line 2224
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_2

    .line 2243
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 2247
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 2248
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_a

    .line 2249
    iget-object v9, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2250
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9, v10}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2251
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/16 v1, 0x7533

    invoke-static {v1, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2253
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2255
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_9

    .line 2256
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2258
    :cond_9
    const/4 v0, 0x3

    return v0

    .line 2264
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2267
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 2319
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2320
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2319
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2321
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 2325
    .local v11, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_1

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2328
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v12, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2329
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2318
    return-void

    .line 2325
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2326
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    .line 2327
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v10, 0x1

    move-object v8, v3

    move-object v9, v3

    .line 2325
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_0
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p6

    move/from16 v7, p5

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1238
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1247
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v16

    .line 1262
    .local v16, "preferredLaunchStackId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_11

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int/2addr v2, v5

    .line 1268
    const v5, 0x10008000

    .line 1267
    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    .line 1266
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1270
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v2, 0x5

    return v2

    .line 1260
    .end local v16    # "preferredLaunchStackId":I
    :cond_0
    const/16 v16, -0x1

    .restart local v16    # "preferredLaunchStackId":I
    goto :goto_0

    .line 1267
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1274
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_3

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1278
    :cond_3
    const/16 v22, 0x0

    .line 1280
    .local v22, "willResueTask":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z

    .line 1283
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->hasReuseTaskPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1284
    const/16 v22, 0x1

    .line 1289
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_5

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1298
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1298
    if-nez v2, :cond_6

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1298
    if-eqz v2, :cond_7

    .line 1300
    :cond_6
    if-eqz v22, :cond_8

    .line 1331
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 1332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 1339
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    .line 1343
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1344
    const/4 v2, 0x1

    return v2

    .line 1304
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1304
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 1306
    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v19, :cond_7

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 1310
    .local v13, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v13, :cond_c

    .line 1311
    const/4 v11, 0x0

    .line 1312
    .local v11, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v11, :cond_a

    .line 1313
    iget-object v2, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_9

    iget-object v2, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v2, v3, :cond_a

    .line 1314
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v2, :cond_d

    .line 1319
    :cond_a
    :goto_5
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_b

    .line 1322
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1324
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v4, 0x7533

    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1325
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1311
    .end local v11    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    goto :goto_4

    .line 1315
    .restart local v11    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_5

    .line 1335
    .end local v11    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "focusStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_3

    .line 1346
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1348
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_11

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v2, :cond_10

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 1360
    const-string/jumbo v3, "Home"

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1359
    invoke-interface {v2, v3, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->blinkMultiWindowDividerButton()V

    .line 1368
    :cond_10
    const/4 v2, 0x2

    return v2

    .line 1372
    .end local v22    # "willResueTask":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_12

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1375
    const/4 v3, -0x1

    .line 1376
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1374
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1378
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1379
    const/4 v2, -0x2

    return v2

    .line 1383
    :cond_13
    const/4 v14, 0x0

    .line 1384
    .local v14, "isMultiInstance":Z
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v2, :cond_14

    .line 1392
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v20, v0

    .line 1393
    .local v20, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 1394
    .restart local v19    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_19

    .line 1395
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1394
    if-eqz v2, :cond_19

    .line 1396
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, v3, :cond_19

    .line 1397
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_19

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_19

    .line 1398
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_15

    .line 1399
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1398
    if-nez v2, :cond_15

    .line 1399
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1398
    if-eqz v2, :cond_18

    .line 1400
    :cond_15
    if-eqz v14, :cond_17

    const/4 v2, 0x0

    :goto_6
    move v12, v2

    .line 1401
    .local v12, "dontStart":Z
    :goto_7
    if-eqz v12, :cond_1b

    .line 1402
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v3, 0x7533

    move-object/from16 v0, v19

    invoke-static {v3, v0, v2}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1404
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1405
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_16

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1408
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1a

    .line 1412
    const/4 v2, 0x1

    return v2

    .line 1400
    .end local v12    # "dontStart":Z
    :cond_17
    const/4 v2, 0x1

    goto :goto_6

    .line 1398
    :cond_18
    const/4 v2, 0x0

    goto :goto_6

    .line 1394
    :cond_19
    const/4 v12, 0x0

    goto :goto_7

    .line 1415
    .restart local v12    # "dontStart":Z
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1414
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1420
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1419
    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 1422
    const/4 v2, 0x3

    return v2

    .line 1425
    :cond_1b
    const/4 v15, 0x0

    .line 1426
    .local v15, "newTask":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1d

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    .line 1430
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-eqz v2, :cond_1e

    .line 1458
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2a

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1461
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v2, 0x5

    return v2

    .line 1427
    :cond_1d
    const/16 v18, 0x0

    .local v18, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    goto :goto_8

    .line 1431
    .end local v18    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 1432
    const/4 v15, 0x1

    .line 1433
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1f

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v4, "Lock-Task-Mode Violation"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 1442
    :cond_1f
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v2, 0x5

    return v2

    .line 1445
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    if-nez v2, :cond_21

    .line 1447
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_28

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isVisibleStackBehindFreeformLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    .line 1447
    if-eqz v2, :cond_28

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1488
    :cond_21
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1488
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1500
    :cond_22
    if-eqz v15, :cond_23

    .line 1501
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x7534

    .line 1501
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1505
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v4, 0x7535

    .line 1504
    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v15, v4, v5}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1508
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_2e

    .line 1509
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v2, :cond_24

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v4, "startedActivity"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 1515
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 1516
    .local v21, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1517
    if-eqz v21, :cond_2d

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_2d

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    if-eq v2, v0, :cond_2d

    .line 1525
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1536
    .end local v21    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1538
    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v2, :cond_26

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 1548
    const-string/jumbo v3, "Home"

    .line 1549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1547
    invoke-interface {v2, v3, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->blinkMultiWindowDividerButton()V

    .line 1555
    :cond_26
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_27

    .line 1556
    if-eqz v15, :cond_27

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-interface {v2, v3}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->checkRunningFreeformWithLogging(Lcom/android/server/am/ActivityRecord;)V

    .line 1564
    :cond_27
    const/4 v2, 0x0

    return v2

    .line 1455
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    goto/16 :goto_9

    .line 1465
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v17

    .line 1466
    .local v17, "result":I
    if-eqz v17, :cond_21

    .line 1467
    return v17

    .line 1469
    .end local v17    # "result":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2c

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1474
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v2, 0x5

    return v2

    .line 1478
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v17

    .line 1479
    .restart local v17    # "result":I
    if-eqz v17, :cond_21

    .line 1480
    return v17

    .line 1485
    .end local v17    # "result":I
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto/16 :goto_9

    .line 1530
    .restart local v21    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1531
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1530
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_a

    .line 1534
    .end local v21    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_a
.end method

.method private updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "launchFlags"    # I
    .param p3, "focusedStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const v3, 0x10004000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2056
    and-int v0, p2, v3

    if-ne v0, v3, :cond_0

    .line 2059
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2060
    return-void

    .line 2061
    :cond_0
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_2

    .line 2063
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2064
    return-void

    .line 2068
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2055
    return-void
.end method


# virtual methods
.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    .prologue
    .line 2362
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2364
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 2367
    :goto_1
    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 2366
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 2369
    .local v2, "result":I
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2370
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v0, p0

    .line 2368
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2371
    .end local v2    # "result":I
    :catch_0
    move-exception v9

    .line 2372
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception during pending activity launch pal="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2373
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    goto :goto_0

    .line 2364
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    .local v6, "resume":Z
    goto :goto_1

    .line 2361
    .end local v6    # "resume":Z
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2621
    const/4 v0, 0x0

    .line 2622
    .local v0, "newBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2623
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2624
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v2

    .line 2623
    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2625
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2628
    .end local v0    # "newBounds":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method

.method postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "prevFocusedStackId"    # I
    .param p4, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 804
    if-gez p2, :cond_0

    .line 808
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 809
    return-void

    .line 815
    :cond_0
    if-ne p2, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 819
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 820
    .local v2, "startedActivityStackId":I
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_7

    .line 821
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 831
    :cond_2
    :goto_1
    if-eqz p4, :cond_9

    .line 832
    iget-boolean v4, p4, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 831
    if-eqz v4, :cond_9

    .line 833
    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-ne v4, v8, :cond_8

    const/4 v1, 0x1

    .line 834
    .local v1, "noDisplayActivityOverHome":Z
    :goto_2
    if-ne v2, v9, :cond_a

    .line 835
    if-eqz p3, :cond_3

    .line 834
    if-eqz v1, :cond_a

    .line 836
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 837
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    .line 838
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 839
    .local v3, "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v3, :cond_5

    .line 840
    iget v4, v3, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-eq v4, v7, :cond_a

    .line 845
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    .line 846
    return-void

    .line 816
    .end local v0    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "noDisplayActivityOverHome":Z
    .end local v2    # "startedActivityStackId":I
    .end local v3    # "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 822
    .restart local v2    # "startedActivityStackId":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_2

    .line 823
    iget v2, p5, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1

    .line 833
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    .line 831
    .end local v1    # "noDisplayActivityOverHome":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    .line 850
    :cond_a
    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    .line 851
    if-eq p2, v7, :cond_b

    if-ne p2, v9, :cond_c

    .line 855
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyPinnedActivityRestartAttemptLocked()V

    .line 856
    return-void

    .line 802
    :cond_c
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2636
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2637
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2638
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 2639
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2636
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2635
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method setMultiScreenManager(Lcom/android/server/am/IMultiScreenManagerServiceBridge;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .prologue
    .line 2647
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 2645
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 2632
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2631
    return-void
.end method

.method showConfirmDeviceCredential(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 883
    .local v17, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    .line 884
    .local v16, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_0

    .line 885
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    move-object/from16 v20, v17

    .line 895
    .local v20, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-nez v20, :cond_2

    .line 896
    return-void

    .line 888
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    if-eqz v16, :cond_1

    .line 889
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    move-object/from16 v20, v16

    .line 889
    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 893
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 898
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 899
    const-string/jumbo v3, "keyguard"

    .line 898
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    .line 901
    .local v18, "km":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v15

    .line 903
    .local v15, "credential":Landroid/content/Intent;
    if-nez v15, :cond_3

    .line 904
    return-void

    .line 906
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 907
    .local v14, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_4

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 910
    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 911
    iget v5, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 912
    iget v6, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 914
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/content/Intent;

    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v3, v10, v7

    .line 915
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v11, v7

    .line 909
    const/4 v3, 0x2

    .line 913
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 916
    const/high16 v12, 0x54000000

    .line 919
    const/4 v13, 0x0

    .line 908
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v19

    .line 920
    .local v19, "target":Landroid/content/IIntentSender;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/IntentSender;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStarter;->startConfirmCredentialIntent(Landroid/content/Intent;)V

    .line 877
    .end local v19    # "target":Landroid/content/IIntentSender;
    :cond_4
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1161
    if-nez p4, :cond_0

    .line 1162
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1164
    :cond_0
    if-nez p5, :cond_1

    .line 1165
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1167
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 1168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1173
    :cond_2
    if-ltz p2, :cond_3

    .line 1174
    const/16 v16, -0x1

    .line 1181
    .local v16, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1183
    .local v30, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1184
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v25, v0

    .line 1185
    .local v25, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v28, 0x0

    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v28, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_c

    .line 1186
    aget-object v29, p4, v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    .local v29, "intent":Landroid/content/Intent;
    if-nez v29, :cond_5

    move-object/from16 v3, v29

    .line 1185
    .end local v29    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1175
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "callingPid":I
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v30    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_3
    if-nez p1, :cond_4

    .line 1176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 1177
    .restart local v16    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 1179
    .end local v16    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    const/16 v16, -0x1

    .restart local v16    # "callingPid":I
    goto :goto_0

    .line 1192
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "origId":J
    :cond_5
    if-eqz v29, :cond_6

    :try_start_2
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v29    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1227
    :catchall_1
    move-exception v2

    .line 1228
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1227
    throw v2

    .line 1196
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v24, 0x1

    .line 1199
    .local v24, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1202
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v4, p5, v28

    const/4 v5, 0x0

    .line 1203
    const/4 v6, 0x0

    move/from16 v7, p8

    .line 1202
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1205
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1207
    if-eqz v9, :cond_8

    .line 1208
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 1210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1211
    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    .line 1210
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1196
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "componentSpecified":Z
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "componentSpecified":Z
    goto :goto_3

    .line 1215
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_9

    move-object/from16 v2, p7

    .line 1214
    :goto_4
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v22

    .line 1217
    .local v22, "options":Landroid/app/ActivityOptions;
    aget-object v8, p5, v28

    .line 1216
    const/4 v7, 0x0

    .line 1217
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 1218
    const/16 v21, 0x0

    .line 1219
    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v13, p6

    move/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, v16

    move/from16 v20, p2

    .line 1216
    invoke-virtual/range {v4 .. v27}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v32

    .line 1220
    .local v32, "res":I
    if-gez v32, :cond_a

    :try_start_5
    monitor-exit v33

    .line 1183
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1228
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1221
    return v32

    .line 1215
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v32    # "res":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 1224
    .restart local v22    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_6
    aget-object v2, v25, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v25, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local p6    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_b
    const/16 p6, 0x0

    .local p6, "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v24    # "componentSpecified":Z
    .end local v32    # "res":I
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_c
    :try_start_7
    monitor-exit v33

    .line 1183
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1228
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1231
    const/4 v2, 0x0

    return v2
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 74
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Landroid/app/ActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p23, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 313
    const/16 v23, 0x0

    .line 315
    .local v23, "err":I
    const/16 v37, 0x0

    .line 316
    .local v37, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v37

    .line 318
    .local v37, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v37, :cond_2

    .line 319
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p12, v0

    .line 320
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p13, v0

    .line 329
    .end local v37    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 330
    .local v9, "cmp":Landroid/content/ComponentName;
    const-string/jumbo v10, ""

    .line 334
    .local v10, "className":Ljava/lang/String;
    :try_start_0
    new-instance v68, Landroid/content/Intent;

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 335
    .local v68, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v68 .. v68}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 336
    .local v9, "cmp":Landroid/content/ComponentName;
    const-string/jumbo v4, ":android:show_fragment"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 337
    if-nez v10, :cond_1

    if-eqz v9, :cond_1

    .line 338
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .end local v9    # "cmp":Landroid/content/ComponentName;
    .end local v68    # "mEdmIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p16

    move-object/from16 v8, p18

    .line 344
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 346
    const/4 v4, 0x0

    return v4

    .line 322
    .end local v10    # "className":Ljava/lang/String;
    .restart local v37    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 323
    const-string/jumbo v6, " (pid="

    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 323
    const-string/jumbo v6, ") when starting: "

    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v23, -0x4

    goto :goto_0

    .line 340
    .end local v37    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "className":Ljava/lang/String;
    :catch_0
    move-exception v61

    .line 341
    .local v61, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "unknown"

    goto :goto_1

    .line 350
    .end local v61    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz p5, :cond_7

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    .line 353
    .local v20, "userId":I
    :goto_2
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 354
    invoke-static/range {v11 .. v17}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z

    .line 366
    :cond_4
    if-nez v23, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-eqz v4, :cond_b

    .line 369
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "START u"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " {act="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    const-string/jumbo v6, " typ="

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    const-string/jumbo v6, " flg=0x"

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 372
    const-string/jumbo v6, " cmp="

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    const-string/jumbo v6, "} from uid "

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 374
    const-string/jumbo v6, " on display "

    .line 369
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 374
    if-nez p22, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_8

    .line 375
    const/4 v4, 0x0

    .line 369
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_5
    :goto_4
    const/16 v52, 0x0

    .line 390
    .local v52, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .line 391
    .local v13, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p9, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v52

    .line 395
    .local v52, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v52, :cond_6

    .line 396
    if-ltz p11, :cond_6

    move-object/from16 v0, v52

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_f

    .line 402
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v67

    .line 404
    .local v67, "launchFlags":I
    const/high16 v4, 0x2000000

    and-int v4, v4, v67

    if-eqz v4, :cond_13

    if-eqz v52, :cond_13

    .line 407
    if-ltz p11, :cond_10

    .line 408
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 409
    const/4 v4, -0x3

    return v4

    .line 350
    .end local v20    # "userId":I
    .end local v67    # "launchFlags":I
    :cond_7
    const/16 v20, 0x0

    .restart local v20    # "userId":I
    goto/16 :goto_2

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_3

    .line 376
    :cond_9
    move-object/from16 v0, p22

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v4, :cond_a

    const/4 v4, 0x0

    goto :goto_3

    .line 377
    :cond_a
    move-object/from16 v0, p22

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto :goto_3

    .line 380
    :cond_b
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "START u"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " {"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 381
    const-string/jumbo v6, "} from uid "

    .line 380
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    const-string/jumbo v6, " on display "

    .line 380
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 382
    if-nez p22, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_c

    .line 383
    const/4 v4, 0x0

    .line 380
    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 383
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_6

    .line 384
    :cond_d
    move-object/from16 v0, p22

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_6

    .line 385
    :cond_e
    move-object/from16 v0, p22

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto :goto_6

    .line 397
    .restart local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_f
    move-object/from16 v13, v52

    .local v13, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_5

    .line 411
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v67    # "launchFlags":I
    :cond_10
    move-object/from16 v0, v52

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 412
    .restart local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 415
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_11
    :goto_7
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p10, v0

    .line 416
    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p11, v0

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, v52

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 418
    if-eqz v13, :cond_12

    .line 419
    move-object/from16 v0, v52

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 421
    :cond_12
    move-object/from16 v0, v52

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p13

    if-ne v4, v0, :cond_13

    .line 432
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p14, v0

    .line 436
    :cond_13
    if-nez v23, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_14

    .line 439
    const/16 v23, -0x1

    .line 442
    :cond_14
    if-nez v23, :cond_15

    if-nez p5, :cond_15

    .line 445
    const/16 v23, -0x2

    .line 448
    :cond_15
    if-nez v23, :cond_16

    if-eqz v52, :cond_16

    .line 449
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_16

    .line 454
    const/high16 v4, 0x10000000

    and-int v4, v4, v67

    if-nez v4, :cond_16

    .line 455
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_16

    .line 457
    :try_start_1
    const-string/jumbo v4, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 458
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v4, v5, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 460
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    const/16 v23, -0x7

    .line 472
    :cond_16
    :goto_8
    if-nez v23, :cond_17

    if-eqz p7, :cond_17

    .line 476
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v4, v5, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 478
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity being started in new voice task does not support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 481
    const/16 v23, -0x7

    .line 489
    :cond_17
    :goto_9
    if-nez v13, :cond_1a

    const/4 v11, 0x0

    .line 491
    :goto_a
    if-eqz v23, :cond_1b

    .line 492
    if-eqz v13, :cond_18

    .line 494
    const/4 v12, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p10

    move/from16 v15, p11

    .line 493
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 496
    :cond_18
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 499
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string/jumbo v18, "ActivityStarter"

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 498
    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 502
    return v23

    .line 413
    .restart local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_19
    const/4 v13, 0x0

    .local v13, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_7

    .line 465
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v60

    .line 466
    .local v60, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failure checking voice capabilities"

    move-object/from16 v0, v60

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    const/16 v23, -0x7

    goto/16 :goto_8

    .line 483
    .end local v60    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v60

    .line 484
    .restart local v60    # "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failure checking voice capabilities"

    move-object/from16 v0, v60

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    const/16 v23, -0x7

    goto :goto_9

    .line 489
    .end local v60    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .local v11, "resultStack":Lcom/android/server/am/ActivityStack;
    goto :goto_a

    .line 507
    .end local v11    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_1b
    const/16 v27, 0x0

    .line 508
    .local v27, "allowLaunchIntent":Z
    if-eqz p2, :cond_1e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 509
    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 510
    const-string/jumbo v4, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    .line 509
    :goto_b
    if-eqz v4, :cond_1c

    .line 511
    const/16 v27, 0x1

    .line 513
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    .line 514
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v22, p2

    move/from16 v23, p12

    move/from16 v24, p13

    .line 513
    invoke-virtual/range {v21 .. v27}, Lcom/android/server/am/ActivityManagerService;->checkContainerAppPermission(Landroid/content/Intent;IIILjava/lang/String;Z)I

    .end local v23    # "err":I
    move-result v4

    .line 514
    const/4 v5, -0x1

    .line 513
    if-ne v4, v5, :cond_1e

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkContainerAppPermission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    const-string/jumbo v5, " from "

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    const-string/jumbo v5, " (pid="

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 517
    const-string/jumbo v5, ", uid="

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 517
    const-string/jumbo v5, ")"

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 517
    const-string/jumbo v5, " with revoked permission "

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 518
    .local v69, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v69

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 509
    .end local v69    # "msg":Ljava/lang/String;
    .restart local v23    # "err":I
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 526
    .end local v23    # "err":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v28, v0

    move-object/from16 v29, p2

    move-object/from16 v30, p5

    move-object/from16 v31, p10

    move/from16 v32, p11

    move/from16 v33, p12

    move/from16 v34, p13

    move-object/from16 v35, p14

    move/from16 v36, p19

    move-object/from16 v38, v13

    move-object/from16 v39, v11

    move-object/from16 v40, p18

    invoke-virtual/range {v28 .. v40}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v56, 0x0

    .line 529
    .local v56, "abort":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 530
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v15, p2

    move/from16 v16, p13

    move/from16 v17, p12

    move-object/from16 v18, p4

    .line 529
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    :goto_d
    or-int v56, v56, v4

    .line 532
    .local v56, "abort":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v4, :cond_1f

    .line 536
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v73

    .line 537
    .local v73, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 538
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 537
    move-object/from16 v0, v73

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    :goto_e
    or-int v56, v56, v4

    .line 544
    .end local v73    # "watchIntent":Landroid/content/Intent;
    :cond_1f
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v19, v0

    move/from16 v21, p15

    move/from16 v22, p16

    move/from16 v23, p17

    move-object/from16 v24, p14

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v28, v0

    move-object/from16 v29, p2

    move-object/from16 v30, p6

    move-object/from16 v31, p5

    move-object/from16 v32, p4

    move-object/from16 v33, p23

    move/from16 v34, p12

    move/from16 v35, p13

    move-object/from16 v36, p18

    invoke-virtual/range {v28 .. v36}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p5, v0

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 p4, v0

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 p23, v0

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    move/from16 p12, v0

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    move/from16 p13, v0

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 p18, v0

    .line 555
    if-eqz v56, :cond_24

    .line 556
    if-eqz v13, :cond_20

    .line 557
    const/4 v12, -0x1

    .line 558
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p10

    move/from16 v15, p11

    .line 557
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 562
    :cond_20
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 565
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string/jumbo v18, "ActivityStarter"

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " succeeded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 564
    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x1

    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 568
    const/4 v4, 0x0

    return v4

    .line 526
    .end local v56    # "abort":Z
    :cond_21
    const/16 v56, 0x1

    .local v56, "abort":Z
    goto/16 :goto_c

    .line 529
    :cond_22
    const/4 v4, 0x1

    goto/16 :goto_d

    .line 537
    .local v56, "abort":Z
    .restart local v73    # "watchIntent":Landroid/content/Intent;
    :cond_23
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 539
    .end local v73    # "watchIntent":Landroid/content/Intent;
    :catch_3
    move-exception v60

    .line 540
    .restart local v60    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_f

    .line 574
    .end local v60    # "e":Landroid/os/RemoteException;
    :cond_24
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-eqz v4, :cond_26

    if-eqz p5, :cond_26

    .line 575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    .line 576
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 575
    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    .line 579
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/content/Intent;

    move-object/from16 v46, v0

    const/4 v4, 0x0

    aput-object p2, v46, v4

    .line 580
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    aput-object p4, v47, v4

    .line 578
    const/16 v39, 0x2

    .line 579
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 580
    const/high16 v48, 0x50000000

    .line 581
    const/16 v49, 0x0

    move-object/from16 v40, p14

    move/from16 v41, p13

    move/from16 v42, v20

    .line 577
    invoke-virtual/range {v38 .. v49}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v72

    .line 583
    .local v72, "target":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v64

    .line 584
    .local v64, "flags":I
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.REVIEW_PERMISSIONS"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v16, "newIntent":Landroid/content/Intent;
    const/high16 v4, 0x800000

    .line 585
    or-int v4, v4, v64

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 587
    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v72

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    if-eqz v13, :cond_25

    .line 590
    const-string/jumbo v4, "android.intent.extra.RESULT_NEEDED"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    :cond_25
    move-object/from16 p2, v16

    .line 594
    const/16 p4, 0x0

    .line 595
    .local p4, "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 596
    move/from16 p12, p15

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->resolveDisplayChooser(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 605
    const/16 v19, 0x0

    move-object/from16 v15, p1

    move-object/from16 v17, p6

    move/from16 v18, p17

    .line 604
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 619
    .end local v16    # "newIntent":Landroid/content/Intent;
    .end local v64    # "flags":I
    .end local v72    # "target":Landroid/content/IIntentSender;
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->SUPPORT_APPLOCK:Z

    if-eqz v4, :cond_27

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/16 v65, 0x1

    .line 621
    .local v65, "isLaunchedFromRecents":Z
    :goto_10
    if-eqz p5, :cond_27

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 651
    .end local v65    # "isLaunchedFromRecents":Z
    :cond_27
    :goto_11
    if-eqz p6, :cond_28

    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    if-eqz v4, :cond_28

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    .line 655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v41

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/content/Intent;

    move-object/from16 v46, v0

    const/4 v4, 0x0

    aput-object p2, v46, v4

    .line 656
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    aput-object p4, v47, v4

    .line 654
    const/16 v39, 0x2

    .line 655
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 657
    const/high16 v48, 0x54000000

    .line 658
    const/16 v49, 0x0

    move-object/from16 v40, p14

    move/from16 v42, v20

    .line 653
    invoke-virtual/range {v38 .. v49}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v63

    .line 662
    .local v63, "failureTarget":Landroid/content/IIntentSender;
    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    .line 665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v41

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/content/Intent;

    move-object/from16 v46, v0

    const/4 v4, 0x0

    aput-object p3, v46, v4

    .line 666
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    aput-object p4, v47, v4

    .line 664
    const/16 v39, 0x2

    .line 665
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 667
    const/high16 v48, 0x54000000

    .line 668
    const/16 v49, 0x0

    move-object/from16 v40, p14

    move/from16 v42, v20

    .line 663
    invoke-virtual/range {v38 .. v49}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v62

    .line 670
    .local v62, "ephemeralTarget":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v64

    .line 671
    .restart local v64    # "flags":I
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-direct/range {p2 .. p2}, Landroid/content/Intent;-><init>()V

    .line 673
    .restart local p2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    .line 672
    or-int v4, v4, v64

    .line 674
    const/high16 v5, 0x800000

    .line 672
    or-int/2addr v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    .line 676
    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 675
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string/jumbo v4, "android.intent.extra.EPHEMERAL_FAILURE"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v63

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 678
    const-string/jumbo v4, "android.intent.extra.EPHEMERAL_SUCCESS"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v62

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 680
    const/16 p4, 0x0

    .line 681
    .restart local p4    # "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 682
    move/from16 p12, p15

    .line 684
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->ephemeralInstaller:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 689
    .end local v62    # "ephemeralTarget":Landroid/content/IIntentSender;
    .end local v63    # "failureTarget":Landroid/content/IIntentSender;
    .end local v64    # "flags":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setupKEAOverridePath(Landroid/content/pm/ActivityInfo;)V

    .line 692
    new-instance v35, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v36, v0

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v43, v0

    .line 694
    if-eqz p7, :cond_30

    const/16 v48, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v49, v0

    move/from16 v38, p13

    move-object/from16 v39, p14

    move-object/from16 v40, p2

    move-object/from16 v41, p4

    move-object/from16 v42, p5

    move-object/from16 v44, v13

    move-object/from16 v45, p10

    move/from16 v46, p11

    move/from16 v47, p20

    move-object/from16 v50, p22

    move-object/from16 v51, p18

    .line 692
    invoke-direct/range {v35 .. v52}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 696
    .local v35, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_29

    .line 697
    const/4 v4, 0x0

    aput-object v35, p21, v4

    .line 700
    :cond_29
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v4, :cond_2a

    if-eqz v52, :cond_2a

    .line 703
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 713
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v4, :cond_32

    .line 714
    const/16 v59, 0x0

    .line 715
    .local v59, "canceled":Z
    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->isVrActivity:Z

    if-eqz v4, :cond_31

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/android/server/vr/GearVrManagerInternal;

    .line 717
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v35

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 716
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/vr/GearVrManagerInternal;->readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;I)Z

    move-result v70

    .line 718
    .local v70, "readyForVrMode":Z
    if-nez v70, :cond_2b

    .line 719
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GearVR not ready: not allowed to start VR Activity. activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isVrActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->isVrActivity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/16 v59, 0x1

    .line 729
    .end local v70    # "readyForVrMode":Z
    :cond_2b
    :goto_13
    if-eqz v59, :cond_33

    .line 730
    if-eqz v13, :cond_2c

    .line 731
    const/16 v29, -0x1

    .line 733
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    move-object/from16 v31, p10

    move/from16 v32, p11

    .line 731
    invoke-virtual/range {v28 .. v34}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 735
    :cond_2c
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 736
    const/4 v4, 0x0

    return v4

    .line 620
    .end local v35    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v59    # "canceled":Z
    :cond_2d
    const/16 v65, 0x0

    .restart local v65    # "isLaunchedFromRecents":Z
    goto/16 :goto_10

    .line 622
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 623
    if-nez v65, :cond_27

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_27

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v71

    .line 625
    .local v71, "skipLockWhenStart":Z
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppLocked pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " className:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " skipLockWhenStart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-nez v71, :cond_27

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v57

    .line 628
    .local v57, "action":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v16    # "newIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v17, 0x0

    .line 630
    const/16 v19, 0x0

    move/from16 v18, p17

    .line 629
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v58

    .line 631
    .local v58, "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v58, :cond_2f

    .line 632
    const-string/jumbo v4, "LOCKED_PACKAGE_INTENT"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    const-string/jumbo v4, "LOCKED_PACKAGE_NAME"

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    move-object/from16 p5, v58

    .line 635
    move-object/from16 v0, v58

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v58

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 637
    const/high16 v4, 0x8000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    move-object/from16 p2, v16

    goto/16 :goto_11

    .line 640
    :cond_2f
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppLock can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 694
    .end local v16    # "newIntent":Landroid/content/Intent;
    .end local v57    # "action":Ljava/lang/String;
    .end local v58    # "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v65    # "isLaunchedFromRecents":Z
    .end local v71    # "skipLockWhenStart":Z
    :cond_30
    const/16 v48, 0x0

    goto/16 :goto_12

    .line 723
    .restart local v35    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v59    # "canceled":Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/android/server/vr/GearVrManagerInternal;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/vr/GearVrManagerInternal;->isStartActivityAllowed(Ljava/lang/String;)Z

    move-result v66

    .line 724
    .local v66, "isStartActivityAllowed":Z
    if-nez v66, :cond_2b

    .line 725
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GearVR docked: not allowed to start non-VR Activity. activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isVrActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->isVrActivity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v59, 0x1

    goto/16 :goto_13

    .line 739
    .end local v59    # "canceled":Z
    .end local v66    # "isStartActivityAllowed":Z
    :cond_32
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "GearVrManagerInternal not ready."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_33
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v4, :cond_34

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v28, v0

    new-instance v29, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v33, "activity"

    const/16 v34, 0x0

    move-object/from16 v30, p1

    move/from16 v31, p12

    move/from16 v32, p13

    .line 746
    invoke-virtual/range {v28 .. v34}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 748
    const/4 v4, -0x4

    return v4

    .line 754
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAMBooster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v4, :cond_35

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAMBooster:Lcom/android/server/am/ActivityManagerPerformance;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 758
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v54, v0

    .line 759
    .local v54, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_37

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_36

    .line 760
    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p13

    if-eq v4, v0, :cond_37

    .line 761
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    .line 762
    const-string/jumbo v26, "Activity start"

    move/from16 v22, p12

    move/from16 v23, p13

    move/from16 v24, p15

    move/from16 v25, p16

    .line 761
    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 763
    new-instance v50, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v51, v35

    move/from16 v53, p17

    move-object/from16 v55, v37

    invoke-direct/range {v50 .. v55}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    .line 765
    .local v50, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 769
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    const-string/jumbo v32, "ActivityStarter"

    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 768
    const/16 v28, 0x5

    const/16 v29, 0x5

    const/16 v30, 0x0

    move/from16 v34, v20

    invoke-static/range {v28 .. v34}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 772
    const/4 v4, 0x4

    return v4

    .line 776
    .end local v50    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v4, :cond_38

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 787
    :goto_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V

    .line 790
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 792
    const/16 v44, 0x1

    move-object/from16 v38, p0

    move-object/from16 v39, v35

    move-object/from16 v40, v52

    move-object/from16 v41, p7

    move-object/from16 v42, p8

    move/from16 v43, p17

    move-object/from16 v45, p18

    move-object/from16 v46, p23

    .line 791
    invoke-direct/range {v38 .. v46}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v23

    .line 794
    .restart local v23    # "err":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 796
    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v21, p0

    move-object/from16 v22, v35

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    .line 797
    return v23

    .line 784
    .end local v23    # "err":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_14

    .line 793
    :catchall_0
    move-exception v4

    .line 794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 793
    throw v4
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 54
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "bOptions"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 944
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 948
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v30, 0x1

    .line 951
    .local v30, "componentSpecified":Z
    :goto_0
    new-instance v37, Landroid/content/Intent;

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 953
    .local v37, "ephemeralIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 955
    .end local p4    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p5

    move/from16 v1, p17

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 958
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mMultiScreenManager:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4, v5}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->resolveDisplayChooser(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 961
    if-nez v5, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v52

    .line 963
    .local v52, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v52, :cond_1

    invoke-virtual/range {v52 .. v52}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v53

    .line 968
    .local v53, "userManager":Landroid/os/UserManager;
    const/16 v45, 0x0

    .line 969
    .local v45, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 971
    .local v50, "token":J
    :try_start_0
    move-object/from16 v0, v53

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v44

    .line 972
    .local v44, "parent":Landroid/content/pm/UserInfo;
    if-eqz v44, :cond_4

    .line 973
    move-object/from16 v0, v44

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    .line 972
    if-eqz v2, :cond_4

    .line 974
    move-object/from16 v0, v53

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    const/16 v45, 0x0

    .line 976
    :goto_1
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    if-eqz v45, :cond_1

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 980
    const/high16 v3, 0xc0000

    .line 979
    move-object/from16 v0, p5

    move/from16 v1, p17

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 986
    .end local v44    # "parent":Landroid/content/pm/UserInfo;
    .end local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v3, p1

    move/from16 v6, p11

    move-object/from16 v7, p12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 991
    .local v15, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez p17, :cond_5

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    move-object/from16 v34, v15

    .line 997
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v34, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v28

    .local v28, "options":Landroid/app/ActivityOptions;
    move-object/from16 v32, p18

    .line 999
    check-cast v32, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1000
    .local v32, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1001
    if-eqz v32, :cond_6

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    .line 1002
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v2, v6, :cond_6

    .line 1004
    const/4 v2, -0x6

    monitor-exit v3

    .line 1000
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1004
    return v2

    .line 948
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v28    # "options":Landroid/app/ActivityOptions;
    .end local v30    # "componentSpecified":Z
    .end local v32    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "ephemeralIntent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v30, 0x0

    .restart local v30    # "componentSpecified":Z
    goto/16 :goto_0

    .line 974
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v37    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v44    # "parent":Landroid/content/pm/UserInfo;
    .restart local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v50    # "token":J
    .restart local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v53    # "userManager":Landroid/os/UserManager;
    :cond_3
    const/16 v45, 0x1

    goto :goto_1

    .line 972
    :cond_4
    const/16 v45, 0x0

    goto :goto_1

    .line 975
    .end local v44    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    .line 976
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    throw v2

    .end local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    move-object/from16 v34, v15

    .line 991
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    .line 1006
    .restart local v28    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_6
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 1007
    .local v25, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    .line 1009
    .local v26, "realCallingUid":I
    if-ltz p2, :cond_e

    .line 1010
    const/16 v22, -0x1

    .line 1019
    .local v22, "callingPid":I
    :goto_3
    if-eqz v32, :cond_7

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1020
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v48, v0

    .line 1024
    .local v48, "stack":Lcom/android/server/am/ActivityStack;
    :goto_4
    if-eqz p14, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v48

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    .line 1030
    .local v42, "origId":J
    if-eqz v34, :cond_12

    .line 1031
    move-object/from16 v0, v34

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 1035
    move-object/from16 v0, v34

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v38, v0

    .line 1037
    .local v38, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v38, :cond_8

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v6, :cond_13

    .line 1038
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_13

    :cond_8
    move-object/from16 v15, v34

    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .line 1093
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v38    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_6
    const/4 v2, 0x1

    :try_start_3
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v31, v0

    .local v31, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-object/from16 v13, v37

    move-object/from16 v14, p5

    move-object/from16 v16, v5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v21, p10

    move/from16 v23, p2

    move-object/from16 v24, p3

    move/from16 v27, p11

    move/from16 v29, p16

    move-object/from16 v33, p19

    .line 1094
    invoke-virtual/range {v10 .. v33}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v47

    .line 1101
    .local v47, "res":I
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    move-object/from16 v0, v48

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_a

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "android.permission.CHANGE_CONFIGURATION"

    .line 1109
    const-string/jumbo v7, "updateConfiguration()"

    .line 1108
    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v2, 0x0

    move-object/from16 v0, v48

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1116
    :cond_a
    if-eqz p13, :cond_d

    .line 1117
    move/from16 v0, v47

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 1118
    if-nez v47, :cond_c

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1122
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1125
    :goto_8
    :try_start_5
    move-object/from16 v0, p13

    iget v2, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_b

    .line 1126
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v2, :cond_19

    .line 1127
    :cond_b
    move-object/from16 v0, p13

    iget v2, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_c

    .line 1128
    const/16 v47, 0x2

    .line 1131
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_d

    .line 1132
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v46

    .line 1133
    .local v46, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v46

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v6, :cond_1a

    .line 1134
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1135
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v46

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1136
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1137
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1151
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1b

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v40, v0

    .line 1153
    .local v40, "launchedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    move/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v3

    .line 1000
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1154
    return v47

    .line 1011
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "callingPid":I
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v40    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_e
    if-nez p1, :cond_f

    .line 1012
    move/from16 v22, v25

    .line 1013
    .restart local v22    # "callingPid":I
    move/from16 p2, v26

    goto/16 :goto_3

    .line 1015
    .end local v22    # "callingPid":I
    :cond_f
    const/16 p2, -0x1

    const/16 v22, -0x1

    .restart local v22    # "callingPid":I
    goto/16 :goto_3

    .line 1022
    :cond_10
    :try_start_6
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v48, v0

    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_4

    .line 1024
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    .restart local v42    # "origId":J
    :cond_12
    move-object/from16 v15, v34

    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .line 1032
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 1039
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_13
    move/from16 v9, p2

    .line 1040
    .local v9, "appCallingUid":I
    if-eqz p1, :cond_14

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v35

    .line 1042
    .local v35, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v35, :cond_17

    .line 1043
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1053
    .end local v35    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1054
    const-string/jumbo v8, "android"

    .line 1055
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v4, v14, v2

    .line 1056
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v15, v2

    .line 1054
    const/4 v7, 0x2

    .line 1055
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1056
    const/high16 v16, 0x50000000

    .line 1057
    const/16 v17, 0x0

    move/from16 v10, p17

    .line 1053
    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v49

    .line 1059
    .local v49, "target":Landroid/content/IIntentSender;
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v41, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_15

    .line 1062
    const-string/jumbo v2, "has_result"

    const/4 v6, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1064
    :cond_15
    const-string/jumbo v2, "intent"

    .line 1065
    new-instance v6, Landroid/content/IntentSender;

    move-object/from16 v0, v49

    invoke-direct {v6, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 1064
    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1066
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 1067
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ActivityRecord;

    .line 1068
    .local v39, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "cur_app"

    .line 1069
    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1068
    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string/jumbo v2, "cur_task"

    .line 1071
    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1070
    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    .end local v39    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_16
    const-string/jumbo v2, "new_app"

    .line 1074
    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1073
    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1076
    const-string/jumbo v2, "android"

    .line 1077
    const-class v6, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1076
    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1078
    move-object/from16 p4, v41

    .line 1079
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 1080
    .local p5, "resolvedType":Ljava/lang/String;
    const/16 p1, 0x0

    .line 1081
    .local p1, "caller":Landroid/app/IApplicationThread;
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 1083
    const/16 v30, 0x1

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    move-object/from16 v0, v41

    move/from16 v1, p17

    invoke-virtual {v2, v0, v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1085
    if-eqz v5, :cond_18

    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1086
    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_a
    if-eqz v15, :cond_9

    .line 1087
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v15

    goto/16 :goto_6

    .line 1045
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v35    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_17
    :try_start_9
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1046
    const-string/jumbo v7, " (pid="

    .line 1045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1046
    const-string/jumbo v7, ") when starting: "

    .line 1045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1047
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static/range {v28 .. v28}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1049
    const/4 v2, -0x4

    monitor-exit v3

    .line 1000
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1049
    return v2

    .line 1085
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v35    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "newIntent":Landroid/content/Intent;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .restart local p4    # "intent":Landroid/content/Intent;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_18
    const/4 v15, 0x0

    goto :goto_a

    .line 1126
    .end local v9    # "appCallingUid":I
    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :cond_19
    :try_start_a
    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v2, :cond_b

    goto/16 :goto_7

    .line 1139
    .restart local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1143
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1146
    :goto_c
    :try_start_c
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v2, :cond_d

    goto :goto_b

    .line 1152
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    const/4 v2, 0x0

    aget-object v40, v31, v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .restart local v40    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_9

    .line 1000
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "callingPid":I
    .end local v25    # "realCallingPid":I
    .end local v26    # "realCallingUid":I
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v40    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v15, v34

    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_d
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "appCallingUid":I
    .restart local v22    # "callingPid":I
    .restart local v25    # "realCallingPid":I
    .restart local v26    # "realCallingUid":I
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "newIntent":Landroid/content/Intent;
    .restart local v42    # "origId":J
    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_2
    move-exception v2

    move-object/from16 v15, v34

    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_d

    .end local v9    # "appCallingUid":I
    .end local v38    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    :catchall_3
    move-exception v2

    goto :goto_d

    .line 1144
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :catch_0
    move-exception v36

    .local v36, "e":Ljava/lang/InterruptedException;
    goto :goto_c

    .line 1123
    .end local v36    # "e":Ljava/lang/InterruptedException;
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v36

    .restart local v36    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_8

    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v36    # "e":Ljava/lang/InterruptedException;
    .end local v47    # "res":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_1c
    move-object/from16 v15, v34

    .end local v34    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6
.end method

.method startConfirmCredentialIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 927
    const v1, 0x10804000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 931
    .local v0, "options":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 932
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 933
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 932
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 926
    return-void
.end method

.method startHomeActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 862
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 863
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 864
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 865
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 866
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 867
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 868
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    .line 862
    invoke-virtual/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 860
    :cond_0
    return-void
.end method
