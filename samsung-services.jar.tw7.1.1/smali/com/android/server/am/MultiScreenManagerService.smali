.class public Lcom/android/server/am/MultiScreenManagerService;
.super Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;
.source "MultiScreenManagerService.java"

# interfaces
.implements Lcom/android/server/am/IMultiScreenManagerServiceBridge;
.implements Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiScreenManagerService$H;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final DEBUG_POSITION:Z = false

.field private static final PAUSE_TIMEOUT:I = 0x3e8

.field public static final PERMISSION_MANAGE_VIRTUAL_SCREEN:Ljava/lang/String; = "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

.field private static final TAG:Ljava/lang/String;

.field public static final USE_INTERNAL_APIS:Ljava/lang/String; = "com.samsung.android.multiscreen.permission.USE_INTERNAL_APIS"

.field private static final VIRTUALSCREEN_LAYER_MULTIPLIER:I = 0x3e8

.field private static final VIRTUALSCREEN_LAYER_OFFSET:I = 0x1


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mBindingDisplayIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mExternalScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

.field private mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

.field private mOffsetMoveBackTime:J

.field private mOffsetStartTime:J

.field private mReadyToUpdateOffset:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mStartUpdateOffset:Z

.field private mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

.field private mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

.field private mVirtualScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenByPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MultiScreenManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MultiScreenManagerService;I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiScreenManagerService;->handlePauseVirtualScreen(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->-assertionsDisabled:Z

    .line 111
    const-class v0, Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    .line 112
    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    .line 109
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;-><init>()V

    .line 124
    new-instance v0, Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiScreenManagerService$H;-><init>(Lcom/android/server/am/MultiScreenManagerService;Lcom/android/server/am/MultiScreenManagerService$H;)V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    .line 131
    iput-wide v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    .line 132
    iput-wide v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    .line 146
    iput-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    .line 152
    return-void
.end method

.method private addBindingDisplayId(II)V
    .locals 2
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1440
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1441
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    :goto_0
    return-void

    .line 1443
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private dumpContextRelations(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;

    .prologue
    .line 2014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2015
    .local v7, "innerPrefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2016
    const-string v3, "MULTISCREEN MANAGER CONTEXTS RELATION (dumpsys multiscreen context)"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2021
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 2022
    .local v9, "NP":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .local v16, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    monitor-exit v4

    .line 2025
    const/4 v15, 0x0

    .local v15, "ip":I
    :goto_0
    if-ge v15, v9, :cond_5

    .line 2026
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/SparseArray;

    .line 2027
    .local v17, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 2028
    .local v8, "NA":I
    const/4 v14, 0x0

    .local v14, "ia":I
    :goto_1
    if-ge v14, v8, :cond_4

    .line 2029
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2030
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_2

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    .line 2031
    if-eqz p5, :cond_0

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2034
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    const-string v3, "PID "

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2037
    const-string v3, " ProcessRecord{"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2039
    const-string v3, " PSS:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    iget-wide v4, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2041
    const-string v3, " }"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->flush()V

    .line 2047
    :try_start_1
    new-instance v18, Lcom/android/internal/os/TransferPipe;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2049
    .local v18, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 2050
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpContextRelations() : app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_1
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v3, v4, :cond_3

    .line 2076
    new-instance v2, Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;-><init>(Lcom/android/server/am/MultiScreenManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    .local v2, "t":Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;
    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2081
    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2089
    .end local v2    # "t":Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;
    :goto_2
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2091
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2028
    .end local v18    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2020
    .end local v8    # "NA":I
    .end local v9    # "NP":I
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "ia":I
    .end local v15    # "ip":I
    .end local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .end local v17    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2082
    .restart local v2    # "t":Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;
    .restart local v8    # "NA":I
    .restart local v9    # "NP":I
    .restart local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "ia":I
    .restart local v15    # "ip":I
    .restart local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .restart local v17    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 2085
    .end local v2    # "t":Lcom/android/server/am/MultiScreenManagerService$1TransferPipeThread;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_6
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v3, v4, v7, v0}, Landroid/app/IApplicationThread;->dumpContextRelationInfo(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 2090
    :catchall_1
    move-exception v3

    .line 2091
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2090
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2093
    .end local v18    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_1
    move-exception v12

    .line 2094
    .local v12, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2095
    const-string v4, "Failure while dumping the context relation of the activity: "

    .line 2094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2097
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 2098
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2099
    const-string v4, "Got a RemoteException while dumping the context relation of the activity"

    .line 2098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2025
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2013
    .end local v8    # "NA":I
    .end local v14    # "ia":I
    .end local v17    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    return-void
.end method

.method private dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    const-string v1, "MULTISCREEN MANAGER (dumpsys multiscreen)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1996
    return-void
.end method

.method private dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2007
    const-string v1, "MULTISCREEN MANAGER settings (dumpsys multiscreen settings)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    invoke-static {v0, p2}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2009
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2004
    return-void
.end method

.method private dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "List of VirtualScreens :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2139
    const-string v3, "    No VirtualScreen"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    :cond_0
    const/4 v1, 0x0

    .local v1, "ndx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2142
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 2143
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2147
    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "List of ExternalScreens :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2149
    const-string v3, "    No ExternalScreen"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2152
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 2153
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2136
    .end local v0    # "externalScreen":Lcom/android/server/am/VirtualScreen;
    :cond_3
    return-void
.end method

.method private dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 2108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "List of Packages :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2110
    .local v2, "keys":Ljava/util/Iterator;
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2111
    const-string v5, "    No Packages"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2116
    .local v4, "pid":I
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2117
    .local v1, "displayId":I
    const-string v5, "    ProcessId ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "] displayId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2118
    if-eqz p3, :cond_0

    .line 2119
    const-string v5, "      virtualscreen="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 2123
    .end local v1    # "displayId":I
    .end local v4    # "pid":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "List of Binding VirtualScreen Ids :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 2125
    const-string v5, "    No Binding VirtualScreen"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    :cond_2
    const/4 v0, 0x0

    .line 2128
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, "ndx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2129
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2130
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Bind DisplayId ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    const-string v5, " Main DisplayId "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2107
    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    return-void
.end method

.method public static getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "medataDataKey"    # Ljava/lang/String;

    .prologue
    .line 2203
    if-eqz p0, :cond_1

    .line 2204
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2208
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2209
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2212
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getTopRunningTaskId(I)I
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1868
    const/4 v0, -0x1

    return v0
.end method

.method private handlePauseVirtualScreen(I)V
    .locals 8
    .param p1, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1462
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1463
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 1464
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    .line 1461
    return-void

    .line 1465
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1466
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v5, :cond_3

    .line 1467
    :cond_2
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v5, "handlePauseVirtualScreen() stack is empty"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 1468
    return-void

    .line 1470
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1471
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 1472
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1473
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1462
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static makeTaskInfo(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/multiscreen/TaskInfo;
    .locals 2
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 2287
    if-nez p0, :cond_0

    .line 2288
    return-object v1

    .line 2290
    :cond_0
    new-instance v0, Lcom/samsung/android/multiscreen/TaskInfo;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v0, v1}, Lcom/samsung/android/multiscreen/TaskInfo;-><init>(I)V

    .line 2292
    .local v0, "ti":Lcom/samsung/android/multiscreen/TaskInfo;
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiscreen/TaskInfo;->setTaskType(I)V

    .line 2294
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    .line 2295
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V

    .line 2301
    :goto_0
    return-object v0

    .line 2297
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V

    goto :goto_0
.end method

.method private removeBindingDisplayId(II)V
    .locals 2
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1452
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1453
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1455
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1449
    :cond_0
    return-void
.end method

.method private startVSManager()V
    .locals 2

    .prologue
    .line 1611
    new-instance v0, Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

    .line 1608
    return-void
.end method

.method private unBindVirtualScreenLocked(I)Z
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 895
    const/4 v0, -0x1

    .line 896
    .local v0, "bindDisplayId":I
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 898
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_1

    .line 899
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 900
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    .line 901
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 903
    if-eqz v0, :cond_0

    .line 904
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 905
    .local v1, "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 906
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    .line 907
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 910
    .end local v1    # "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 912
    :cond_1
    return v4
.end method


# virtual methods
.method public allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 1408
    if-eqz p1, :cond_2

    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const/4 v0, -0x1

    .line 1412
    .local v0, "displayId":I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v0

    .line 1413
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1414
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 1415
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    .line 1418
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v0

    .line 1419
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1420
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1421
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    .line 1424
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1425
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1426
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1427
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1428
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    .line 1433
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public applyMultiScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/MultiScreenAttrs;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "launchedFromPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2161
    new-instance v0, Lcom/android/server/am/MultiScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/MultiScreenAttrs;-><init>()V

    .line 2162
    .local v0, "attrs":Lcom/android/server/am/MultiScreenAttrs;
    sget-boolean v6, Lcom/android/server/am/MultiScreenManagerService;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2163
    :cond_1
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMultiScreenAttrs intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    .line 2165
    .local v2, "launchParams":Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;
    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getDisplayId()I

    move-result v3

    .line 2166
    .local v3, "targetDisplayId":I
    const/4 v1, 0x0

    .line 2168
    .local v1, "callerRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_3

    .line 2169
    move-object v1, p2

    .line 2172
    .end local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 2176
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2177
    invoke-virtual {p0, v3}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2178
    invoke-virtual {v0, v3}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    .line 2183
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    if-eqz v4, :cond_5

    .line 2184
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    .line 2183
    if-eqz v4, :cond_5

    .line 2185
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 2188
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 2189
    invoke-virtual {v0, v5}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    .line 2192
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_7

    .line 2193
    invoke-virtual {v0, v5}, Lcom/android/server/am/MultiScreenAttrs;->setBaseForceUpdate(Z)V

    .line 2198
    :cond_7
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMultiScreenAttrs attrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_8
    return-object v0

    .line 2179
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getBaseDisplayId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2180
    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getBaseDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    goto :goto_0
.end method

.method public assignLayer(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "curLayer"    # I

    .prologue
    const/4 v4, 0x0

    .line 1306
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1308
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0, p2}, Lcom/android/server/am/VirtualScreen;->setLayer(I)V

    .line 1305
    .end local v0    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_0
    return-void
.end method

.method public bindVirtualScreen(I)Z
    .locals 8
    .param p1, "bindDisplayId"    # I

    .prologue
    const/4 v7, 0x0

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 842
    .local v1, "pid":I
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v4, "bindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return v7

    .line 847
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 848
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 850
    .local v0, "mainDisplayId":I
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 852
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_1

    .line 853
    invoke-virtual {v2, p1}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 854
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 855
    return v7

    .line 859
    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindVirtualScreen() pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->addBindingDisplayId(II)V

    .line 862
    if-eqz p1, :cond_5

    .line 863
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 864
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_3

    .line 865
    invoke-virtual {v2, v0}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 866
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 867
    return v7

    .line 871
    :cond_3
    :try_start_2
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindVirtualScreen() pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->addBindingDisplayId(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    :cond_5
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 847
    .end local v0    # "mainDisplayId":I
    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public canLaunchHome(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1400
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1401
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1402
    const/4 v1, 0x0

    return v1

    .line 1404
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasZeroPagePolicy()Z

    move-result v1

    return v1
.end method

.method public cleanupVirtualScreen(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 623
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 624
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1

    .line 625
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupVirtualScreen() for display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 627
    .local v0, "bindDisplayId":I
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 629
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    .line 631
    if-eqz v0, :cond_1

    .line 632
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    .line 622
    .end local v0    # "bindDisplayId":I
    :cond_1
    return-void
.end method

.method public clearTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 694
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_0

    .line 695
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 698
    iput-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 693
    return-void
.end method

.method public clearVirtualScreenPosition()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    .line 1154
    return-void
.end method

.method public createStack(IIZ)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "createOnTop"    # Z

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 293
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStack: stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    const-string v3, " displayId="

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    const-string v3, " createOnTop="

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStack: stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v0
.end method

.method public createStack(IZ)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "createOnTop"    # Z

    .prologue
    .line 278
    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStack: stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const-string v3, " createOnTop="

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const-string v3, " caller="

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {p1}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getDisplayIdFromStackId(I)I

    move-result v0

    .line 285
    .local v0, "displayId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method public createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    const/4 v11, -0x1

    .line 403
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 404
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v8, "createVirtualScreen: Can\'t create virtualscreen in the emergency mode."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return v11

    .line 409
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v7, :cond_1

    .line 410
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v8, "createVirtualScreen: Can\'t create virtualscreen in the safe mode."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v11

    .line 414
    :cond_1
    if-nez p2, :cond_2

    .line 415
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v8, "createVirtualScreen() Invalid bound"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v11

    .line 418
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: createVirtualScreen() from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 420
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 422
    const-string v8, ", uid="

    .line 420
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 420
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 423
    const-string v8, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    .line 420
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "msg":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 428
    .end local v1    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 429
    const/4 v0, -0x1

    .line 430
    .local v0, "displayId":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 431
    .local v5, "pid":I
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 433
    sget-boolean v7, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v9, "createVirtualScreen: don\'t exist displayContent. create new one!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_4
    if-eqz p2, :cond_8

    .line 436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 437
    .local v2, "ident":J
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->createVirtualScreen(II)I

    move-result v0

    .line 438
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    if-gez v0, :cond_5

    .line 440
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v9, "createVirtualScreen() Invalid displayId"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 441
    return v11

    .line 443
    :cond_5
    :try_start_1
    sget-boolean v7, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createVirtualScreen displayId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v9, p0, v0, p2, p3}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/graphics/Rect;I)V

    invoke-virtual {v7, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    .line 447
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_7

    .line 448
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/VirtualScreen;

    .line 449
    .local v6, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v6, :cond_7

    .line 450
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/VirtualScreen;->setAllowAppTransition(Z)V

    .line 453
    .end local v6    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "ident":J
    :cond_8
    :goto_0
    monitor-exit v8

    .line 466
    return v0

    .line 458
    :cond_9
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_8

    .line 460
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MultiScreenManagerService;->recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 461
    .local v4, "newDisplayId":I
    if-lez v4, :cond_8

    .line 462
    move v0, v4

    goto :goto_0

    .line 428
    .end local v4    # "newDisplayId":I
    .end local v5    # "pid":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "enter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/VirtualScreen;->createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 690
    :cond_0
    return-object v1
.end method

.method public detachActivityDisplay(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2322
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 2323
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 2324
    return-void

    .line 2326
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/MultiScreenManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2327
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiScreenManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2321
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1911
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 1912
    const-string v1, "android.permission.DUMP"

    .line 1911
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MultiScreenManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1915
    const-string v1, ", uid="

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1916
    const-string v1, " without permission "

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1917
    const-string v1, "android.permission.DUMP"

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    return-void

    .line 1921
    :cond_0
    const/4 v7, 0x0

    .line 1922
    .local v7, "dumpAll":Z
    const/4 v9, 0x0

    .line 1923
    .local v9, "opti":I
    :goto_0
    array-length v0, p3

    if-ge v9, v0, :cond_1

    .line 1924
    aget-object v8, p3, v9

    .line 1925
    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1946
    .end local v8    # "opt":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1949
    .local v10, "origId":J
    if-eqz v7, :cond_5

    .line 1950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1951
    :try_start_1
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1952
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1953
    const-string v0, "  "

    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1954
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1992
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1956
    return-void

    .line 1925
    .end local v10    # "origId":J
    .restart local v8    # "opt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 1928
    add-int/lit8 v9, v9, 0x1

    .line 1929
    const-string v0, "-h"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1930
    const-string v0, "MultiScreen manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    const-string v0, "  [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    const-string v0, "    c[ontext]: context relation informations"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    const-string v0, "    cc: context relation informations with call stack information"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    const-string v0, "    cs: simple context relation informations"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    const-string v0, "    s[ettings]: multi screen settings"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    const-string v0, "  -a: include all available server state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    return-void

    .line 1939
    :cond_3
    const-string v0, "-a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1940
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1942
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1950
    .end local v8    # "opt":Ljava/lang/String;
    .restart local v10    # "origId":J
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1991
    :catchall_1
    move-exception v0

    .line 1992
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    throw v0

    .line 1959
    :cond_5
    :try_start_4
    array-length v0, p3

    if-ge v9, v0, :cond_d

    .line 1960
    aget-object v6, p3, v9

    .line 1961
    .local v6, "cmd":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 1962
    const-string v0, "context"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "c"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1963
    const-string v0, "cs"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1962
    if-eqz v0, :cond_9

    .line 1964
    :cond_6
    const/4 v5, 0x0

    .line 1965
    .local v5, "processName":Ljava/lang/String;
    array-length v0, p3

    if-ge v9, v0, :cond_7

    .line 1966
    aget-object v5, p3, v9

    .line 1968
    .end local v5    # "processName":Ljava/lang/String;
    :cond_7
    const-string v1, "  "

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MultiScreenManagerService;->dumpContextRelations(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1992
    .end local v6    # "cmd":Ljava/lang/String;
    :cond_8
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1910
    return-void

    .line 1969
    .restart local v6    # "cmd":Ljava/lang/String;
    :cond_9
    :try_start_5
    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "s"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1970
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1971
    :try_start_6
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1

    goto :goto_1

    .line 1970
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1974
    :cond_b
    const-string v0, "virtual"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "v"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1975
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1976
    :try_start_8
    const-string v0, "  "

    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1977
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v1

    goto :goto_1

    .line 1975
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1982
    .end local v6    # "cmd":Ljava/lang/String;
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1983
    :try_start_a
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1984
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1986
    const-string v0, "  "

    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1987
    const-string v0, "  "

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    monitor-exit v1

    goto :goto_1

    .line 1982
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public getBaseDisplayId(Lcom/android/server/am/TaskRecord;)I
    .locals 3
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2310
    if-eqz p1, :cond_1

    .line 2311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2312
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2313
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v2

    return v2

    .line 2311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2318
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getDisplayId(I)I
    .locals 7
    .param p1, "taskId"    # I

    .prologue
    .line 184
    const/4 v0, -0x1

    .line 185
    .local v0, "displayId":I
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 188
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_2

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid task id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    const-string v6, " : getScreen() from pid="

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string v6, ", uid="

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v5

    .line 203
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 204
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreen(taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    return v0

    .line 196
    .restart local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    :try_start_2
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplayId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 185
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getDisplayIdByPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayIdByPackage() There isn\'t Virtual Screen. package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 971
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayIdByPackage() package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDisplayRect(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 1278
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1279
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getDefaultDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1280
    .local v1, "info":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1281
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1282
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1284
    :cond_0
    return-object v0
.end method

.method public getLayer(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "curLayer"    # I

    .prologue
    const/4 v2, 0x0

    .line 1315
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1316
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1317
    return p2

    .line 1319
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getLayer()I

    move-result v1

    if-lez v1, :cond_1

    .line 1320
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getLayer()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1322
    :cond_1
    add-int/lit16 v1, p2, 0x3e8

    return v1
.end method

.method public getOffset(I)Landroid/graphics/Point;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 828
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 829
    .local v0, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_0

    .line 830
    return-object v0

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 833
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1

    .line 834
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 836
    :cond_1
    return-object v0
.end method

.method public getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "createStackIfNeeded"    # Z
    .param p4, "createOnTop"    # Z

    .prologue
    .line 306
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrCreateStack: stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string v4, " createStackIfNeeded="

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string v4, " createOnTop="

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const-string v4, " caller="

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {p1, p2}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getStackIdAdjustedToDisplayId(II)I

    move-result v0

    .line 313
    .local v0, "adjustedStackId":I
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 314
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    return-object v1
.end method

.method public getPosition(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1299
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1300
    const/4 v1, 0x0

    return v1

    .line 1302
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getPosition()I

    move-result v1

    return v1
.end method

.method public getTaskInfo(I)Lcom/samsung/android/multiscreen/TaskInfo;
    .locals 6
    .param p1, "taskId"    # I

    .prologue
    .line 213
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 214
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskInfo() : taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 218
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_1

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid task id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : getTaskInfo() from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    const-string v5, ", uid="

    .line 219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 226
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/samsung/android/multiscreen/TaskInfo;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;-><init>(I)V

    .line 227
    .local v2, "ti":Lcom/samsung/android/multiscreen/TaskInfo;
    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setTaskType(I)V

    .line 229
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_2

    .line 230
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 235
    return-object v2

    .line 232
    :cond_2
    const/4 v3, -0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getTopRunningTaskInfo(I)Lcom/samsung/android/multiscreen/TaskInfo;
    .locals 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v6, 0x0

    .line 245
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopRunningTaskInfo() : displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 250
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiScreenManagerService;->getTopRunningTaskId(I)I

    move-result v1

    .line 251
    .local v1, "taskId":I
    if-gez v1, :cond_2

    .line 252
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 253
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v5, "getTopRunningTaskInfo() : there is no task"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 255
    return-object v6

    .line 257
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 258
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    new-instance v2, Lcom/samsung/android/multiscreen/TaskInfo;

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;-><init>(I)V

    .line 259
    .local v2, "ti":Lcom/samsung/android/multiscreen/TaskInfo;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setTaskType(I)V

    .line 261
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_4

    .line 262
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V

    .line 266
    :goto_0
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 267
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopRunningTaskInfo() : rti="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v4

    .line 269
    return-object v2

    .line 264
    :cond_4
    const/4 v3, -0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/samsung/android/multiscreen/TaskInfo;->setDisplayId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskId":I
    .end local v2    # "ti":Lcom/samsung/android/multiscreen/TaskInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getVirtualScreenDisplayId(Landroid/os/IBinder;)I
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, -0x1

    .line 935
    if-eqz p1, :cond_3

    .line 936
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 937
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 939
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1

    .line 940
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 941
    const-string v5, " : getDisplayId() from pid="

    .line 940
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 940
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    const-string v5, ", uid="

    .line 940
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 940
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 946
    return v6

    .line 939
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 950
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 952
    :cond_2
    :try_start_2
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 936
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 956
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 957
    .local v1, "pid":I
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 958
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 960
    :cond_4
    return v6
.end method

.method public getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z
    .locals 12
    .param p1, "displayId"    # I
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "position"    # Landroid/graphics/PointF;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1211
    iget-boolean v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    if-eqz v6, :cond_0

    .line 1212
    return v9

    .line 1215
    :cond_0
    if-eqz p2, :cond_2

    .line 1216
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v6

    const/16 v7, 0x7d0

    if-lt v6, v7, :cond_1

    .line 1217
    return v9

    .line 1219
    :cond_1
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->inFreeformWorkspace()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1220
    return v9

    .line 1224
    :cond_2
    if-nez p3, :cond_3

    .line 1225
    sget-object v6, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v7, "getVirtualScreenPosition() position is null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return v9

    .line 1229
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 1230
    .local v5, "virtualScreenPosition":Landroid/graphics/PointF;
    if-eqz v5, :cond_5

    .line 1231
    iget-boolean v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    if-nez v6, :cond_4

    .line 1232
    return v9

    .line 1234
    :cond_4
    invoke-virtual {p3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1235
    return v11

    .line 1239
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1241
    .local v2, "scale":F
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v3

    .line 1242
    .local v3, "spec":Landroid/view/MagnificationSpec;
    if-eqz v3, :cond_6

    .line 1243
    iget v2, v3, Landroid/view/MagnificationSpec;->scale:F

    .line 1248
    :cond_6
    const/4 v4, 0x0

    .line 1249
    .local v4, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1250
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_9

    .line 1251
    const/4 v1, 0x0

    .end local v4    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 1252
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/VirtualScreen;

    .line 1253
    .local v4, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1254
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v4, v6}, Lcom/android/server/am/VirtualScreen;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1251
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iput v6, p3, Landroid/graphics/PointF;->x:F

    .line 1256
    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iput v6, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 1261
    .end local v1    # "i":I
    .end local v4    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_9
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/VirtualScreen;

    .line 1262
    .restart local v4    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v4, :cond_a

    .line 1263
    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v4, v2}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    iput v6, p3, Landroid/graphics/PointF;->x:F

    .line 1264
    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v4, v2}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iput v6, p3, Landroid/graphics/PointF;->y:F

    .line 1271
    :cond_a
    iget v6, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_b

    iget v6, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_b

    .line 1272
    return v9

    .line 1274
    :cond_b
    return v11
.end method

.method handleMoveTaskToScreen(IILandroid/os/Bundle;)V
    .locals 16
    .param p1, "taskId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1626
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1627
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMoveTaskToScreen(taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_0
    if-gtz p1, :cond_1

    .line 1630
    return-void

    .line 1633
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 1634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 1635
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v13, :cond_5

    .line 1636
    const/4 v14, 0x0

    .line 1637
    .local v14, "topActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 1638
    .local v14, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_2

    .line 1639
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v3, "top task is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v15

    .line 1640
    return-void

    .line 1643
    :cond_2
    const/4 v8, 0x1

    .line 1644
    .local v8, "animate":Z
    const/4 v5, 0x1

    .line 1645
    .local v5, "toTop":Z
    const/4 v6, 0x1

    .line 1646
    .local v6, "forceFocus":Z
    if-eqz p3, :cond_3

    .line 1647
    :try_start_1
    const-string v2, "MultiScreen:animate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1648
    .local v8, "animate":Z
    const-string v2, "MultiScreen:totop"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1649
    .local v5, "toTop":Z
    const-string v2, "MultiScreen:forcefocus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1652
    .end local v5    # "toTop":Z
    .end local v6    # "forceFocus":Z
    .end local v8    # "animate":Z
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1653
    const/4 v9, 0x0

    .line 1654
    .local v9, "hadDifferentDisplayZone":Z
    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_5

    .line 1655
    const/4 v2, 0x1

    .line 1656
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1655
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/am/MultiScreenManagerService;->getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1657
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v12, :cond_4

    .line 1658
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v3, "handleMoveTaskToScreen() Couldn\'t find stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v15

    .line 1659
    return-void

    .line 1661
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v10

    .line 1663
    .local v10, "origId":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1664
    const-string v7, "change-display"

    move/from16 v3, p1

    .line 1663
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1666
    :try_start_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v9    # "hadDifferentDisplayZone":Z
    .end local v10    # "origId":J
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    monitor-exit v15

    .line 1625
    return-void

    .line 1665
    .restart local v9    # "hadDifferentDisplayZone":Z
    .restart local v10    # "origId":J
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    .line 1666
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1665
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1633
    .end local v9    # "hadDifferentDisplayZone":Z
    .end local v10    # "origId":J
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v2

    monitor-exit v15

    throw v2
.end method

.method public hasFocusPolicy(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1381
    if-nez p1, :cond_0

    .line 1382
    const/4 v1, 0x1

    return v1

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1385
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_1

    .line 1386
    return v2

    .line 1388
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasFocusPolicy()Z

    move-result v1

    return v1
.end method

.method public hasLayoutPolicy(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1373
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1374
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1375
    const/4 v1, 0x0

    return v1

    .line 1377
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasLayoutPolicy()Z

    move-result v1

    return v1
.end method

.method public hasReuseTaskPolicy(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1392
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1393
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1394
    const/4 v1, 0x0

    return v1

    .line 1396
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasReuseTaskPolicy()Z

    move-result v1

    return v1
.end method

.method public isExternalScreen(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1335
    .local v0, "externalScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1336
    const/4 v1, 0x0

    return v1

    .line 1338
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 320
    if-nez p1, :cond_0

    .line 321
    return v4

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    .line 327
    .local v1, "displayId":I
    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiScreenManagerService;->isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    return v3

    .line 331
    :cond_1
    return v4

    .line 336
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiScreenManagerService;->isExternalScreen(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_6

    :goto_0
    return v3

    .line 338
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 339
    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    .line 340
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 342
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 343
    .local v0, "defaultDisplayStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_5

    :goto_1
    return v3

    :cond_5
    move v3, v4

    goto :goto_1

    .end local v0    # "defaultDisplayStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_6
    move v3, v4

    .line 345
    goto :goto_0
.end method

.method public isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 1288
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1289
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1290
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1294
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1291
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_0

    .line 1292
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isMoving(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1583
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1584
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_1

    .line 1585
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    :cond_0
    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoving() called from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1587
    const-string v3, " offsetX : "

    .line 1586
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1587
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    .line 1586
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1588
    const-string v3, " offsetY : "

    .line 1586
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1588
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    .line 1586
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/4 v1, 0x1

    return v1

    .line 1591
    :cond_1
    return v2
.end method

.method public isTransiting(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 705
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 708
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualScreen(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1326
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1327
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 1328
    const/4 v1, 0x0

    return v1

    .line 1330
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isWaitingForVirtualScreen(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1342
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 1343
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v2, :cond_3

    .line 1344
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1345
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1347
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 1348
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_1

    .line 1349
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1350
    :cond_0
    return v4

    .line 1346
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1355
    .end local v1    # "i":I
    :cond_2
    return v5

    .line 1357
    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v3, v4

    :goto_1
    return v3

    :cond_5
    move v3, v5

    goto :goto_1
.end method

.method public main(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 162
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    .line 164
    const v1, 0x10c0003

    .line 163
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    return-void
.end method

.method public moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    .locals 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "updateVisibility"    # Z
    .param p3, "onlyAllowTheLast"    # Z

    .prologue
    .line 1052
    if-eqz p1, :cond_11

    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_11

    .line 1053
    if-eqz p3, :cond_2

    .line 1054
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1055
    .local v7, "numOfActivities":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 1056
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1057
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 1055
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1059
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v11, 0x1

    if-le v7, v11, :cond_2

    .line 1060
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v12, "moveTaskBackToDisplayIfNeeded(): The task has more than one activity"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v11, 0x0

    return v11

    .line 1065
    .end local v6    # "i":I
    .end local v7    # "numOfActivities":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1066
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_3

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v11, :cond_4

    .line 1067
    :cond_3
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v12, "moveTaskBackToDisplayIfNeeded(): root activity or app is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v11, 0x0

    return v11

    .line 1071
    :cond_4
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v11}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1072
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v12, "moveTaskBackToDisplayIfNeeded(): root is not base activity"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v11, 0x0

    return v11

    .line 1076
    :cond_5
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v11, :cond_6

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v11, :cond_6

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v11, :cond_a

    .line 1077
    :cond_6
    const/4 v3, -0x1

    .line 1078
    .local v3, "displayId":I
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1079
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1083
    :cond_7
    :goto_1
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/VirtualScreen;

    .line 1084
    .local v10, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v10, :cond_8

    .line 1085
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v12, "moveTaskBackToDisplayIfNeeded(): app which created virtualscreen is crashing or not responding, reset offset!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 1088
    :cond_8
    const/4 v11, 0x0

    return v11

    .line 1080
    .end local v10    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1081
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    goto :goto_1

    .line 1091
    .end local v3    # "displayId":I
    :cond_a
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v11}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v11

    if-eqz v11, :cond_11

    .line 1092
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v12}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v12

    if-eq v11, v12, :cond_11

    .line 1094
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v11}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v1

    .line 1096
    .local v1, "baseDisplayId":I
    const/4 v2, 0x1

    .line 1097
    .local v2, "canMoveToDisplay":Z
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v11, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1098
    .local v4, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_b

    .line 1099
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 1100
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1101
    .local v5, "homeStackTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_b

    .line 1102
    iget-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1107
    .end local v2    # "canMoveToDisplay":Z
    .end local v5    # "homeStackTop":Lcom/android/server/am/ActivityRecord;
    :cond_b
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v11, :cond_e

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v11, :cond_e

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v11, :cond_e

    if-eqz v2, :cond_e

    .line 1116
    if-eqz p2, :cond_c

    .line 1118
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/VirtualScreen;

    iput-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 1119
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v11, :cond_c

    .line 1120
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v11}, Lcom/android/server/am/VirtualScreen;->prepareTransition()V

    .line 1122
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1124
    if-eqz v8, :cond_c

    .line 1125
    const/4 v9, 0x0

    .line 1126
    .local v9, "transit":I
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v11}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10

    .line 1127
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v11}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v11

    if-eqz v11, :cond_10

    .line 1128
    const/16 v9, 0x12d

    .line 1132
    :goto_2
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1133
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1138
    .end local v9    # "transit":I
    :cond_c
    sget-boolean v11, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v11, :cond_d

    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "moveTaskBackToDisplayIfNeeded() need to change display="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_d
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v11

    return v11

    .line 1108
    :cond_e
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "moveTaskBackToDisplayIfNeeded(): app on virtualscreen is crashing or not responding, reset offset! canMoveToDisplay="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/VirtualScreen;

    .line 1110
    .restart local v10    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v10, :cond_f

    .line 1111
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 1113
    :cond_f
    const/4 v11, 0x0

    return v11

    .line 1130
    .end local v10    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .restart local v9    # "transit":I
    :cond_10
    const/16 v9, 0x9

    goto :goto_2

    .line 1143
    .end local v1    # "baseDisplayId":I
    .end local v4    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "transit":I
    :cond_11
    sget-object v11, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to move task "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v11, 0x0

    return v11
.end method

.method moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    .line 1480
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZZZ)Z

    move-result v0

    return v0
.end method

.method public moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZZZ)Z
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "updateBase"    # Z
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z

    .prologue
    .line 1484
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1486
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToDisplay() to display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    if-nez v11, :cond_1

    .line 1488
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v1, "moveTaskToDisplay() No activity to move"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v0, 0x0

    return v0

    .line 1492
    :cond_1
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1493
    .local v9, "fromStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x1

    .line 1494
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1493
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/android/server/am/MultiScreenManagerService;->getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1495
    .local v12, "toStack":Lcom/android/server/am/ActivityStack;
    if-nez v12, :cond_2

    .line 1496
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v1, "moveTaskToDisplay() Couldn\'t create stack"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v0, 0x0

    return v0

    .line 1500
    :cond_2
    if-nez p5, :cond_4

    .line 1501
    if-eqz v11, :cond_4

    if-nez p2, :cond_4

    .line 1502
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1503
    .local v8, "displayIds":[I
    const/4 v0, 0x0

    aput p2, v8, v0

    .line 1504
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 1505
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/server/wm/IWindowManagerServiceBridge;->prepareSurfaceBeforeFreezing([I)V

    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1507
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1509
    const/high16 v1, 0x100000

    .line 1508
    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1511
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1512
    .local v10, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4

    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1514
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1515
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1516
    const/high16 v1, 0x100000

    .line 1515
    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1522
    .end local v8    # "displayIds":[I
    .end local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/MultiScreenManagerService;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1523
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v1, "moveTaskToDisplay() Couldn\'t update display"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v0, 0x0

    return v0

    .line 1527
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1528
    iget-object v1, v11, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1527
    const v1, 0x1339e1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1530
    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->checkBelowTasksToGoHomeStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1531
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v11, :cond_7

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, v9, :cond_7

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    const-string v2, "moveTaskToDisplay"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 1536
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    const-string v5, "change-display"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z

    .line 1537
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "change-display"

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 1540
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v1, "change-display"

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityStackToFront(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 1541
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    .line 1542
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1543
    const/4 v0, 0x1

    return v0
.end method

.method public moveTaskToScreen(IIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1876
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1877
    return-void

    .line 1879
    :cond_0
    if-gez p1, :cond_1

    .line 1880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1881
    const-string v5, " : moveTaskToScreen() from pid="

    .line 1880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1883
    const-string v5, ", uid="

    .line 1880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1884
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1887
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1888
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1889
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    :cond_2
    monitor-exit v5

    .line 1893
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1894
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToScreen(taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", toDisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_3
    const/4 v0, 0x0

    .line 1898
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_4

    .line 1899
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1900
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "MultiScreen:activityoption"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1902
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1, p2, v0}, Lcom/android/server/am/MultiScreenManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1903
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MultiScreenManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1871
    return-void

    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    monitor-exit v5

    .line 1890
    return-void

    .line 1887
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public moveTaskToScreen(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toDisplayId"    # I

    .prologue
    .line 354
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 357
    .local v0, "caller":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 358
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToScreen() toDisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    if-nez v0, :cond_1

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " toDisplayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    const-string v5, " : moveTaskToScreen() from pid="

    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    const-string v5, ", uid="

    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v0    # "caller":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 370
    .restart local v0    # "caller":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 372
    .local v1, "callerTaskId":I
    if-gez v1, :cond_2

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. callerTaskId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " toDisplayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    const-string v5, " : moveTaskToScreen() from pid="

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    const-string v5, ", uid="

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, p2, v3, v5}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToScreen(IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 349
    return-void
.end method

.method public moveTaskToScreenWithPermission(IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "com.samsung.android.multiscreen.permission.USE_INTERNAL_APIS"

    .line 390
    const-string v2, "moveTaskToScreenWithPermission()"

    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToScreenWithPermission(taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToScreen(IIILandroid/os/Bundle;)V

    .line 385
    return-void
.end method

.method public moveVirtualScreenToDisplay(I)Z
    .locals 8
    .param p1, "displayId"    # I

    .prologue
    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 918
    .local v1, "pid":I
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 919
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v6, "moveVirtualScreenToDisplay() package doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v5, 0x0

    return v5

    .line 923
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 925
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 926
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    .local v0, "curDisplayId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    move-result v4

    .line 928
    .local v4, "res":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 929
    return v4

    .line 923
    .end local v0    # "curDisplayId":I
    .end local v2    # "ident":J
    .end local v4    # "res":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method moveVirtualScreenToDisplayLocked(II)Z
    .locals 11
    .param p1, "virtualScreenDisplayId"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1547
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1548
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveVirtualScreenToDisplay - virtualScreenDisplayId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") doesn\'t exist!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return v8

    .line 1552
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1553
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1554
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v10, :cond_2

    .line 1555
    :cond_1
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v7, "moveVirtualScreenToDisplayLocked(): stack is empty"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1556
    return v8

    .line 1559
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v5

    const/16 v7, 0x12d

    if-ne v5, v7, :cond_3

    .line 1560
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v7, "moveVirtualScreenToDisplayLocked(): moving to virtual display, transit=TRANSIT_VIRTUAL_SCREEN_TASK"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 1561
    return v8

    .line 1564
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1565
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1567
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v10, :cond_5

    .line 1568
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1569
    .local v4, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1570
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1571
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1572
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 1573
    return v10

    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    monitor-exit v6

    .line 1575
    return v8

    .end local v4    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    monitor-exit v6

    .line 1578
    return v10

    .line 1552
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 1676
    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1677
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_0
    return-void
.end method

.method public performClearTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1361
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual {v2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1362
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "task$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1364
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v0, :cond_0

    .line 1365
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    goto :goto_0

    .line 1360
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    const/4 v11, -0x1

    .line 471
    if-nez p2, :cond_0

    .line 472
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v8, "recreateVirtualScreen() Invalid bound"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v11

    .line 475
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: recreateVirtualScreen() from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 479
    const-string v8, ", uid="

    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 480
    const-string v8, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "msg":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 484
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 485
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 486
    .local v4, "pid":I
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 487
    .local v1, "displayId":I
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/VirtualScreen;

    .line 488
    .local v6, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v6, :cond_4

    .line 489
    invoke-virtual {v6}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 490
    .local v0, "curBounds":Landroid/graphics/Rect;
    move-object v5, p2

    .line 491
    .local v5, "toBounds":Landroid/graphics/Rect;
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recreateVirtualScreen() displayId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v7, v9, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v7, v9, :cond_3

    .line 494
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v4, v7}, Lcom/android/server/am/MultiScreenManagerService;->removeVirtualScreen(Ljava/lang/String;IZ)V

    .line 495
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MultiScreenManagerService;->createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I

    move-result v1

    .line 496
    if-lez v1, :cond_4

    .line 497
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 500
    .local v3, "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v6}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiScreenManagerService;->bindVirtualScreen(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 501
    return v1

    .line 505
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/graphics/Rect;I)V

    .line 506
    .restart local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v6}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    .line 507
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 508
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 509
    return v1

    .end local v0    # "curBounds":Landroid/graphics/Rect;
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v5    # "toBounds":Landroid/graphics/Rect;
    :cond_4
    monitor-exit v8

    .line 514
    sget-object v7, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v8, "recreateVirtualScreen() failed to recreate virtual screen."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v11

    .line 484
    .end local v1    # "displayId":I
    .end local v4    # "pid":I
    .end local v6    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1769
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1770
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/MultiScreenManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiScreenManagerService$1;-><init>(Lcom/android/server/am/MultiScreenManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1768
    return-void
.end method

.method public relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1012
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1013
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v2

    .line 1014
    .local v2, "baseDisplayId":I
    const/4 v3, 0x0

    .line 1015
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-lez v2, :cond_2

    .line 1016
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1017
    .local v1, "activityNdx":I
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1018
    .local v0, "N":I
    :goto_0
    add-int/lit8 v9, v0, -0x1

    if-ge v1, v9, :cond_0

    .line 1019
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1020
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_3

    .line 1026
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-nez v3, :cond_1

    .line 1027
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 1028
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1029
    .local v7, "taskNdx":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_1

    .line 1030
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1031
    .local v5, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1032
    .local v4, "nextCandidate":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    .line 1033
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1034
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1032
    if-eqz v9, :cond_1

    .line 1035
    move-object v3, v4

    .line 1040
    .end local v4    # "nextCandidate":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "nextTask":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_1
    if-eqz v3, :cond_2

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v3, v9, :cond_2

    .line 1041
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9, v2}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    .line 1042
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1043
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    .line 1011
    .end local v0    # "N":I
    .end local v1    # "activityNdx":I
    :cond_2
    return-void

    .line 1023
    .restart local v0    # "N":I
    .restart local v1    # "activityNdx":I
    .restart local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v3, 0x0

    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method public removeVirtualScreen()V
    .locals 12

    .prologue
    .line 520
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 523
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 522
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 524
    const-string v10, ", uid="

    .line 522
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 522
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 525
    const-string v10, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    .line 522
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "msg":Ljava/lang/String;
    sget-object v9, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 529
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 530
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 531
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 533
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    .line 534
    .local v8, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v8, :cond_3

    .line 535
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 536
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 537
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-nez v4, :cond_1

    monitor-exit v10

    .line 538
    return-void

    .line 540
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 541
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 542
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 543
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "taskNdx":I
    :goto_2
    if-ltz v6, :cond_2

    .line 544
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 545
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v5, v9, v11}, Lcom/android/server/am/MultiScreenManagerService;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)Z

    .line 546
    iget-object v9, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 540
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 532
    .end local v1    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v8    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_4
    monitor-exit v10

    .line 519
    return-void

    .line 529
    .end local v0    # "displayNdx":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public removeVirtualScreen(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiScreenManagerService;->removeVirtualScreen(Ljava/lang/String;IZ)V

    .line 554
    return-void
.end method

.method public removeVirtualScreen(Ljava/lang/String;IZ)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "killProcess"    # Z

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_0

    .line 561
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 561
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 563
    const-string v19, ", uid="

    .line 561
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 561
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 564
    const-string v19, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    .line 561
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 565
    .local v10, "msg":Ljava/lang/String;
    sget-object v18, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v18, Ljava/lang/SecurityException;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 568
    .end local v10    # "msg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 573
    .local v8, "ident":J
    :try_start_1
    sget-boolean v18, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v18, :cond_1

    sget-object v18, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v20, "removeVirtualScreen(): it is the one that created virtual screen"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 575
    .local v6, "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiScreenManagerService$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiScreenManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 578
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 582
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v13, :cond_4

    .line 583
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 584
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 585
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 586
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    .local v15, "taskNdx":I
    :goto_1
    if-ltz v15, :cond_3

    .line 587
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 588
    .local v14, "task":Lcom/android/server/am/TaskRecord;
    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/MultiScreenManagerService;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)Z

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    .line 586
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 591
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 583
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 594
    .end local v7    # "i":I
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "taskNdx":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/VirtualScreen;

    .line 595
    .local v17, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v17, :cond_7

    .line 596
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v5

    .line 597
    .local v5, "bindDisplayId":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v5, v0, :cond_7

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 599
    .local v4, "bStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v4, :cond_7

    .line 600
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .restart local v7    # "i":I
    :goto_2
    if-ltz v7, :cond_7

    .line 601
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 602
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 603
    .restart local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    .restart local v15    # "taskNdx":I
    :goto_3
    if-ltz v15, :cond_6

    .line 604
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 605
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 606
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_5

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v6, :cond_5

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_5
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 600
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 615
    .end local v4    # "bStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "bindDisplayId":I
    .end local v7    # "i":I
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "taskNdx":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v19

    .line 617
    return-void

    .line 614
    .end local v6    # "displayId":I
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v17    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v18

    .line 615
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 568
    .end local v8    # "ident":J
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_8
    monitor-exit v19

    .line 558
    return-void
.end method

.method public resolveDisplayChooser(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2245
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-nez v5, :cond_0

    .line 2246
    return-object p3

    .line 2248
    :cond_0
    const/4 v2, 0x0

    .line 2249
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    .line 2250
    .local v1, "callerActivityRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 2251
    .local v0, "callerActivitiesSize":I
    if-eqz p1, :cond_1

    .line 2252
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 2253
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    .line 2254
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2255
    if-lez v0, :cond_1

    .line 2256
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callerActivityRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2260
    .end local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    sget-boolean v5, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 2261
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveDisplayChooser() : intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveDisplayChooser() : callerActivityRecord="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveDisplayChooser() : rInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveDisplayChooser() : MultiScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2265
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    .line 2264
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveDisplayChooser() : FocusedStack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2267
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 2266
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    if-ne v5, v6, :cond_3

    .line 2270
    if-eqz v1, :cond_3

    .line 2271
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 2272
    if-eqz v1, :cond_3

    .line 2273
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    .line 2270
    if-eqz v5, :cond_3

    .line 2275
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getDisplayChooserResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p3

    .line 2276
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 2277
    .local v4, "origin":Landroid/content/ComponentName;
    const-string v5, "com.samsung.android.intent.extra.INTENT_EXTRA_MULTI_SCREEN_ORIGINAL_TARGET_ACTIVITY"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2278
    const-string v5, "com.samsung.android.intent.extra.EXTRA_DUAL_SCREEN_CALLER_ACTIVITY_DISPLAY_ID"

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    .end local v4    # "origin":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    return-object p3

    .line 2279
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 0
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .prologue
    .line 2304
    return-void
.end method

.method public setOffset(Landroid/os/IBinder;IIIZ)Z
    .locals 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "force"    # Z

    .prologue
    .line 713
    const/4 v11, 0x1

    .line 714
    .local v11, "res":Z
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 718
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 721
    :cond_0
    sget-boolean v16, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v16, :cond_1

    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v17, "3. Performance Test SetOffset Start"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 723
    :try_start_0
    sget-boolean v16, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v16, :cond_2

    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v18, "3. Performance Test SetOffset In"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_2
    move/from16 v6, p2

    .line 725
    .local v6, "currentDisplayId":I
    const/4 v10, 0x0

    .line 726
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_5

    .line 727
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 729
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_3

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 730
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid arguments. token="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 731
    const-string v18, " : setOffset() from pid="

    .line 730
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 730
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 733
    const-string v18, ", uid="

    .line 730
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 730
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "msg":Ljava/lang/String;
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    const/16 v16, 0x0

    monitor-exit v17

    return v16

    .line 729
    .end local v7    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v16

    if-nez v16, :cond_7

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 746
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 747
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 748
    :cond_6
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setOffset(): stack d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is empty"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 749
    const/16 v16, 0x0

    monitor-exit v17

    return v16

    .line 741
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :try_start_2
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v6

    .line 742
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result p2

    goto :goto_0

    .line 752
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 753
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 756
    .local v8, "ident":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/VirtualScreen;

    .line 757
    .local v14, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v14, :cond_9

    .line 758
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 759
    .local v15, "visible":Z
    move/from16 v0, p5

    invoke-virtual {v14, v5, v0}, Lcom/android/server/am/VirtualScreen;->isValid(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    if-nez v16, :cond_b

    .line 760
    const/4 v11, 0x0

    .line 819
    .end local v15    # "visible":Z
    :cond_9
    :goto_1
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v17

    .line 822
    sget-boolean v16, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v16, :cond_a

    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v17, "3. Performance Test SetOffset End"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_a
    return v11

    .line 762
    .restart local v15    # "visible":Z
    :cond_b
    :try_start_5
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->isDefaultDisplay(II)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 763
    if-eqz v6, :cond_c

    .line 764
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/MultiScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    .line 766
    :cond_c
    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 781
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 783
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 785
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    move-object/from16 v16, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiScreenManagerService$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    move-object/from16 v16, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiScreenManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 789
    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 790
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_13

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    .line 793
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v18, "1. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 803
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_e
    :goto_3
    if-eqz v15, :cond_9

    .line 804
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v4

    .line 805
    .local v4, "bindDisplayId":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-gt v4, v0, :cond_f

    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->intersectsDefaultDisplay()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 806
    const/4 v4, 0x0

    .line 808
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isDrawnAppWindow(I)Z

    move-result v16

    if-nez v16, :cond_14

    .line 809
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Did not drawn appwindow in display:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 768
    .end local v4    # "bindDisplayId":I
    :cond_10
    if-nez p3, :cond_11

    if-eqz p4, :cond_12

    :cond_11
    move/from16 v0, p2

    if-eq v0, v6, :cond_12

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    .line 771
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v18, "2. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    .line 774
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    .line 775
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    .line 776
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 818
    .end local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v15    # "visible":Z
    :catchall_0
    move-exception v16

    .line 819
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 818
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 722
    .end local v5    # "callingUid":I
    .end local v6    # "currentDisplayId":I
    .end local v8    # "ident":J
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_1
    move-exception v16

    monitor-exit v17

    throw v16

    .line 778
    .restart local v5    # "callingUid":I
    .restart local v6    # "currentDisplayId":I
    .restart local v8    # "ident":J
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .restart local v15    # "visible":Z
    :cond_12
    :try_start_7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    goto/16 :goto_2

    .line 797
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_13
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 799
    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_3

    .line 811
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "bindDisplayId":I
    :cond_14
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isDrawnAppWindow(I)Z

    move-result v16

    if-nez v16, :cond_9

    .line 812
    sget-object v16, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Did not drawn appwindow in display:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 813
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public setVirtualScreenBound(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1597
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {v0, p2}, Lcom/android/server/am/VirtualScreen;->setScreenSize(Landroid/graphics/Rect;)V

    .line 1599
    const/4 v1, 0x1

    return v1

    .line 1601
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 170
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/am/MultiScreenManagerService;->startVSManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 29
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 639
    if-nez p2, :cond_0

    .line 640
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v4, "startActivity: Invalid intent"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v2, -0x1

    return v2

    .line 644
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 645
    .local v3, "pid":I
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity: intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 647
    const/16 v24, -0x1

    .line 648
    .local v24, "displayId":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    .line 649
    .local v26, "params":Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getDisplayId()I

    move-result v24

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 653
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v4, "display doesn\'t exist!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    const/4 v2, -0x1

    monitor-exit v28

    return v2

    .line 656
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/am/VirtualScreen;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v4, v0, v1, v6, v5}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/graphics/Rect;I)V

    move/from16 v0, v24

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 665
    const-string v8, "VirtualScreenManager"

    .line 664
    const/4 v6, 0x0

    .line 665
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 663
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 667
    .local v21, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, "mimeType":Ljava/lang/String;
    if-nez v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 669
    const-string v2, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 668
    if-eqz v2, :cond_4

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 672
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 673
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v8, p2

    move-object/from16 v19, p3

    .line 672
    invoke-virtual/range {v4 .. v23}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 674
    .local v27, "res":I
    if-ltz v27, :cond_6

    .line 675
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v25

    .line 676
    .local v25, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    .line 677
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/am/MultiScreenManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v25    # "msg":Landroid/os/Message;
    :cond_5
    :goto_0
    monitor-exit v28

    .line 682
    return v24

    .line 679
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/MultiScreenManagerService;->removeVirtualScreen(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 646
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v21    # "userId":I
    .end local v26    # "params":Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;
    .end local v27    # "res":I
    :catchall_0
    move-exception v2

    monitor-exit v28

    throw v2
.end method

.method public startVirtualSpace(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

    if-nez v0, :cond_0

    .line 1618
    return-object v1

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSManager;->connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;

    move-result-object v0

    return-object v0
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1781
    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenSettings;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    .line 1782
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->setOnSettingChangedListener(Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;)V

    .line 1783
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->init()V

    .line 1786
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->isMultiScreenDisplayChooserEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    .line 1788
    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemReady() : MultiScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1789
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    .line 1788
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-void
.end method

.method public unBindVirtualScreen()Z
    .locals 5

    .prologue
    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 881
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string v3, "unBindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v2, 0x0

    return v2

    .line 886
    :cond_0
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unBindVirtualScreen() pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 889
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 890
    .local v0, "mainDisplayId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiScreenManagerService;->unBindVirtualScreenLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 888
    .end local v0    # "mainDisplayId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateConfigurationLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1149
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreen;->computeScreenConfiguration(I)V

    .line 1147
    :cond_0
    return-void
.end method

.method public updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)Z
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "displayId"    # I
    .param p3, "updateBase"    # Z

    .prologue
    const/4 v7, 0x0

    .line 977
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayForAllActivitiesInTask() : displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    if-nez p1, :cond_1

    .line 979
    return v7

    .line 982
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 983
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 984
    return v7

    .line 987
    :cond_2
    const/4 v3, 0x0

    .line 988
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_8

    .line 989
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 990
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_6

    .line 991
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v4

    if-eq v4, p2, :cond_5

    .line 992
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayForAllActivitiesInTask() : update r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updateBase="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_3
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 994
    if-eqz p3, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 997
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplayId(Landroid/view/IApplicationToken;I)V

    .line 999
    :cond_5
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_6

    .line 1001
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleActivityDisplayIdChanged(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 995
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v2

    .line 1003
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1008
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v4, 0x1

    return v4
.end method

.method public updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;I)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "displayId"    # I

    .prologue
    .line 2216
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenForAllActivitiesInTask() : displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_0
    if-nez p1, :cond_1

    .line 2221
    return-void

    .line 2224
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2225
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2226
    return-void

    .line 2229
    :cond_2
    const/4 v2, 0x0

    .line 2230
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2232
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v3

    if-eq v3, p2, :cond_4

    .line 2233
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2234
    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenForAllActivitiesInTask() : update r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v3, p2}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 2237
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2238
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/MultiScreenManagerService;->setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2230
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2237
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 2215
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    return-void
.end method

.method public updateVirtualScreenPosition()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenManagerService;->clearVirtualScreenPosition()V

    .line 1161
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_8

    .line 1162
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 1163
    .local v3, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v3, :cond_2

    .line 1164
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1165
    .local v2, "position":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    .line 1166
    .local v0, "displayId":I
    invoke-virtual {p0, v0, v13, v2}, Lcom/android/server/am/MultiScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1167
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1170
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1171
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1172
    iput-boolean v12, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    .line 1181
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v3, v4}, Lcom/android/server/am/VirtualScreen;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1161
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1174
    .restart local v0    # "displayId":I
    .restart local v2    # "position":Landroid/graphics/PointF;
    :cond_3
    iget-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 1175
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iput-wide v10, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    goto :goto_1

    .line 1185
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 1186
    if-gt v0, v14, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->intersectsDefaultDisplay()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1187
    const/4 v0, 0x0

    .line 1189
    :cond_5
    if-le v0, v14, :cond_2

    .line 1190
    new-instance v2, Landroid/graphics/PointF;

    .end local v2    # "position":Landroid/graphics/PointF;
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1191
    .restart local v2    # "position":Landroid/graphics/PointF;
    invoke-virtual {p0, v0, v13, v2}, Lcom/android/server/am/MultiScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1192
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1195
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1196
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1197
    iput-boolean v12, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    goto :goto_2

    .line 1199
    :cond_7
    iget-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    .line 1200
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iput-wide v10, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    goto/16 :goto_2

    .line 1159
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    .end local v3    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_8
    return-void
.end method
