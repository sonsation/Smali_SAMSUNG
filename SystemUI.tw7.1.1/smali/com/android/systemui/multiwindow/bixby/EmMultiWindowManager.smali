.class public Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;
.super Ljava/lang/Object;
.source "EmMultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContext:Landroid/content/Context;

.field private mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

.field mIam:Landroid/app/IActivityManager;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mScreenState:Ljava/lang/String;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mScreenState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mScreenState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->closeAppByAppName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->closeAppByDirection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->getCHObjectString(Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->getCurrentStateType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;-><init>(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iput-object p1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SystemUI"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_0
.end method

.method private closeAppByAppName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeAppByAppName() packageFullName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getInstance()Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->closeAppFromExternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v6

    :cond_1
    if-nez p4, :cond_2

    return v5

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->getPackageInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v5

    :cond_3
    aget-object v1, v0, v6

    iget-object v2, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "EmMultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v6

    :cond_5
    return v5
.end method

.method private closeAppByDirection(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "closeAppByDirection() appDirection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "EmMultiWindowManager"

    const-string/jumbo v8, "closeAppByDirection() closeAppByDirection is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v11

    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const-string/jumbo v7, "up"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_4

    iget-object v7, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_4
    const/4 v4, 0x1

    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fullScreenStackInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Docked topPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_a

    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeStackByDivider(Z)V

    :cond_6
    :goto_1
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "left"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "down"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v4, 0x1

    if-eqz v2, :cond_c

    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeStackByDivider(Z)V

    goto :goto_1

    :cond_9
    const-string/jumbo v7, "right"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeTask : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    :cond_c
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v0, :cond_e

    iget-object v7, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v7, :cond_e

    const/4 v3, 0x0

    :goto_2
    iget-object v7, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v7, v7

    if-ge v3, v7, :cond_6

    :try_start_1
    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTask To FullScreenStack, taskid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    iget-object v8, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v8, v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to maximizeStackByDivider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    iget-object v7, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_f

    iget-object v7, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_f
    iget-object v7, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-boolean v7, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "EmMultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeTask : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private getCHObjectString(Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method private getCurrentStateType()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Split"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "OtherApp"

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez p1, :cond_1

    sget-boolean v8, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "EmMultiWindowManager"

    const-string/jumbo v9, "getPackageInfo() packageFullName is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v11

    :cond_1
    const-string/jumbo v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v8, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "EmMultiWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPackageInfo() Incorrect package info in LaunchAppDirect. packageInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v11

    :cond_3
    array-length v8, v4

    if-eq v8, v12, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-array v3, v12, [Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v8, v3, v10

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v3, v9

    return-object v3

    :cond_5
    sget-boolean v8, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "EmMultiWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPackageInfo() the packageInfo isn\'t found from packageManager. packageInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v11

    :cond_7
    return-object v4
.end method

.method private sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EmMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[InterimStateListener] sendNlgRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ResponseResults="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-eqz p5, :cond_1

    invoke-virtual {v0, p2, p5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    if-eqz p6, :cond_2

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmMultiWindowManager"

    const-string/jumbo v1, "clearInterimStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

    iget-object v0, v0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v0}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    return-void
.end method

.method public createInterimStateListener()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmMultiWindowManager"

    const-string/jumbo v1, "createInterimStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MultiWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method public preProcessSingleState(Ljava/lang/Object;)V
    .locals 15

    move-object/from16 v13, p1

    check-cast v13, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v12

    const/4 v11, -0x1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mScreenState:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preProcessSingleState() ruleId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", stateID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "MultiWindow_1"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startFreeform()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->clearInterimStateListener()V

    sget-boolean v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "EmMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[preProcessSingleState] ruleId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "MultiWindow_2"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTopTask()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v2, "PopupView"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "MultiWindow_3"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeTopTask()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v2, "PopupView"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "MultiWindow_6"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "closeAppName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v9, :cond_b

    const-string/jumbo v0, "packageName"

    invoke-direct {p0, v9, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->getCHObjectString(Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v14}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->getPackageInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "closeAppName"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "MultiWindow_7"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeform(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v3, "MinimizedIcon"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Opened"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "MultiWindow_8"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFreeformTasks(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v3, "OtherApp"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Opened"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v1, "Root"

    const-string/jumbo v2, "FocusedApp"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v1, "OtherApp"

    const-string/jumbo v2, "App"

    const-string/jumbo v3, "Resizable"

    const-string/jumbo v4, "no"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v1, "OtherApp"

    const-string/jumbo v2, "App"

    const-string/jumbo v3, "InPopupView"

    const-string/jumbo v4, "yes"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v1, "Freeform"

    const-string/jumbo v2, "App"

    const-string/jumbo v3, "InPopupView"

    const-string/jumbo v4, "no"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "Freeform"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "Freeform"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "Freeform"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeSearchedTask(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Opened"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "MatchedAppName"

    const-string/jumbo v5, "InPopup"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v3, "MinimizedIcon"

    const-string/jumbo v4, "freeformAppName"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "closeAppName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Opened"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "Root"

    const-string/jumbo v4, "PopupView"

    const-string/jumbo v5, "Opened"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->sendNlgRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "OtherApp"

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScreenState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mScreenState:Ljava/lang/String;

    return-void
.end method
