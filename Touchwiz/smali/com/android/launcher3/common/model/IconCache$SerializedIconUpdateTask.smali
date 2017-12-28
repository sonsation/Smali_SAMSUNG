.class Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerializedIconUpdateTask"
.end annotation


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsToUpdate:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/common/model/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/IconCache;
    .param p2, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p4, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p5, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .local p6, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 942
    iput-wide p2, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 943
    iput-object p4, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 944
    iput-object p5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 945
    iput-object p6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 946
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 950
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 951
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 952
    .local v0, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "cn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6, v0, v13}, Lcom/android/launcher3/common/model/IconCache;->access$100(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v5

    .line 954
    .local v5, "values":Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 955
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 956
    const-string v6, "lastUpdated"

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 957
    const-string v6, "version"

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v6, "system_state"

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v7}, Lcom/android/launcher3/common/model/IconCache;->access$200(Lcom/android/launcher3/common/model/IconCache;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6}, Lcom/android/launcher3/common/model/IconCache;->access$300(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/model/IconCache$IconDB;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "icons"

    const-string v8, "componentName = ? AND profileId = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v12

    iget-wide v10, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 962
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    .line 960
    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 963
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 967
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    .line 968
    invoke-static {v8}, Lcom/android/launcher3/common/model/IconCache;->access$400(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 967
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 969
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6, v12}, Lcom/android/launcher3/common/model/IconCache;->access$502(Lcom/android/launcher3/common/model/IconCache;Z)Z

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 1007
    .end local v0    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v2    # "cn":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 974
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 975
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 976
    .restart local v0    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 977
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_5

    .line 978
    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    monitor-enter v7

    .line 979
    :try_start_0
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-direct {v1, v6, v8}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 980
    .local v1, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6, v1}, Lcom/android/launcher3/common/model/IconCache;->access$600(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/util/ComponentKey;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    .line 983
    :try_start_1
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6}, Lcom/android/launcher3/common/model/IconCache;->access$700(Lcom/android/launcher3/common/model/IconCache;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    :try_start_2
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    iget-wide v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-static {v6, v0, v4, v8, v9}, Lcom/android/launcher3/common/model/IconCache;->access$800(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V

    .line 992
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 997
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    .line 998
    invoke-static {v8}, Lcom/android/launcher3/common/model/IconCache;->access$400(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 997
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 999
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v6, v12}, Lcom/android/launcher3/common/model/IconCache;->access$502(Lcom/android/launcher3/common/model/IconCache;Z)Z

    .line 1003
    .end local v1    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    goto/16 :goto_0

    .line 985
    .restart local v1    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    :catch_0
    move-exception v3

    .line 986
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v6, "Launcher.IconCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NameNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 988
    monitor-exit v7

    goto/16 :goto_0

    .line 994
    .end local v1    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$1000(Lcom/android/launcher3/common/model/IconCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/model/IconCache;->access$900()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1011
    return-void
.end method
