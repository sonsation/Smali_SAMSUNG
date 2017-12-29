.class public Lcom/android/server/DssControllerImpl;
.super Ljava/lang/Object;
.source "DssControllerImpl.java"

# interfaces
.implements Lcom/android/server/DssController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DssControllerImpl$DssAppDate;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DssController"


# instance fields
.field private final DEFAULT_CPU_LEVEL:I

.field private final DEFAULT_GAME_SIOP_LEVEL:I

.field private final DEFAULT_GPU_LEVEL:I

.field private final DEFAULT_SCALE:F

.field private final FLOAT_EPSILON:F

.field private final mRunningMultiPidPackages:Ljava/util/HashMap;
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

.field private final mRunningPackageNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DssControllerImpl$DssAppDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/server/DssControllerImpl;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 40
    iput v0, p0, Lcom/android/server/DssControllerImpl;->DEFAULT_CPU_LEVEL:I

    .line 41
    iput v0, p0, Lcom/android/server/DssControllerImpl;->DEFAULT_GPU_LEVEL:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DssControllerImpl;->DEFAULT_SCALE:F

    .line 43
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/android/server/DssControllerImpl;->FLOAT_EPSILON:F

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private static isScaleAllowed()Z
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopMode()Z

    move-result v0

    .line 327
    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v0, Lcom/android/server/DssControllerImpl$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssControllerImpl$DssAppDate;-><init>(Lcom/android/server/DssControllerImpl;)V

    .line 122
    .local v0, "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    invoke-virtual {v0, p2}, Lcom/android/server/DssControllerImpl$DssAppDate;->addPackage(F)V

    .line 123
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-void

    .end local v0    # "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevel"    # I

    .prologue
    monitor-enter p0

    .line 128
    :try_start_0
    new-instance v0, Lcom/android/server/DssControllerImpl$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssControllerImpl$DssAppDate;-><init>(Lcom/android/server/DssControllerImpl;)V

    .line 129
    .local v0, "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssControllerImpl$DssAppDate;->addPackage(FI)V

    .line 130
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 127
    return-void

    .end local v0    # "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevels"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 135
    :try_start_0
    new-instance v0, Lcom/android/server/DssControllerImpl$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssControllerImpl$DssAppDate;-><init>(Lcom/android/server/DssControllerImpl;)V

    .line 136
    .local v0, "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssControllerImpl$DssAppDate;->addPackage(FLjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 134
    return-void

    .end local v0    # "dssAppData":Lcom/android/server/DssControllerImpl$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0, p2}, Lcom/android/server/DssControllerImpl;->isScaledApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0, p2}, Lcom/android/server/DssControllerImpl;->getScalingFactor(Ljava/lang/String;)F

    move-result v1

    .line 312
    .local v1, "dssScale":F
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 313
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0, v1}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    move-object p1, v0

    .line 315
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "dssScale":F
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    return-object p1
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssControllerImpl$DssAppDate;

    .line 105
    .local v0, "result":Lcom/android/server/DssControllerImpl$DssAppDate;
    iget v1, v0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 107
    .end local v0    # "result":Lcom/android/server/DssControllerImpl$DssAppDate;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssControllerImpl$DssAppDate;

    .line 114
    .local v0, "result":Lcom/android/server/DssControllerImpl$DssAppDate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 116
    .end local v0    # "result":Lcom/android/server/DssControllerImpl$DssAppDate;
    :cond_0
    :try_start_1
    const-string v1, "0,0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactor(I)F
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-enter p0

    .line 220
    :try_start_0
    invoke-static {}, Lcom/android/server/DssControllerImpl;->isScaleAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 221
    return v1

    .line 223
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 224
    .local v0, "dssScale":Ljava/lang/Float;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    return v1

    .end local v0    # "dssScale":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-static {}, Lcom/android/server/DssControllerImpl;->isScaleAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 230
    return v1

    .line 232
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 233
    .local v0, "dssScale":Ljava/lang/Float;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    return v1

    .end local v0    # "dssScale":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWhiteList()Ljava/lang/StringBuilder;
    .locals 10

    .prologue
    const v9, 0x3a83126f    # 0.001f

    monitor-enter p0

    .line 158
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "elem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v7, v7, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    .end local v3    # "elem$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 166
    .restart local v0    # "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    .restart local v3    # "elem$iterator":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v7, v7, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    const/high16 v8, 0x3f400000    # 0.75f

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_0

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    :cond_2
    const-string v7, "DSS 0.5 Group\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v7, "=============\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v7, "DSS 0.75 Group\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v7, "=============\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 182
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 185
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 187
    return-object v6
.end method

.method public declared-synchronized isScaledApp(I)Z
    .locals 6
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/android/server/DssControllerImpl;->isScaleAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit p0

    .line 193
    return v3

    .line 195
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 196
    .local v2, "scale":F
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 197
    .local v1, "pidexist":Z
    if-eqz v1, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 199
    .local v0, "dssScale":Ljava/lang/Float;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 201
    .end local v0    # "dssScale":Ljava/lang/Float;
    :cond_1
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_3

    :goto_1
    monitor-exit p0

    return v3

    .line 199
    .restart local v0    # "dssScale":Ljava/lang/Float;
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 201
    .end local v0    # "dssScale":Ljava/lang/Float;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "pidexist":Z
    .end local v2    # "scale":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isScaledApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-static {}, Lcom/android/server/DssControllerImpl;->isScaleAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit p0

    .line 207
    return v3

    .line 209
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 210
    .local v2, "scale":F
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .local v1, "pkgexist":Z
    if-eqz v1, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 213
    .local v0, "dssScale":Ljava/lang/Float;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 215
    .end local v0    # "dssScale":Ljava/lang/Float;
    :cond_1
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_3

    :goto_1
    monitor-exit p0

    return v3

    .line 213
    .restart local v0    # "dssScale":Ljava/lang/Float;
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 215
    .end local v0    # "dssScale":Ljava/lang/Float;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "pkgexist":Z
    .end local v2    # "scale":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;I)F
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    monitor-enter p0

    .line 238
    const/high16 v1, 0x3f800000    # 1.0f

    .line 240
    .local v1, "dssScale":F
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 241
    .local v0, "currentdss":Ljava/lang/Float;
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v1, v3, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    .line 248
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 254
    .local v2, "numPids":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 256
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v2    # "numPids":Ljava/lang/Integer;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/DssControllerImpl;->isScaleAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_6

    .line 281
    const/high16 v3, 0x3f800000    # 1.0f

    monitor-exit p0

    return v3

    .line 259
    .restart local v2    # "numPids":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "currentdss":Ljava/lang/Float;
    .end local v2    # "numPids":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 263
    .restart local v0    # "currentdss":Ljava/lang/Float;
    :cond_3
    if-eqz v0, :cond_5

    .line 264
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 265
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 268
    .restart local v2    # "numPids":Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v2    # "numPids":Ljava/lang/Integer;
    :cond_5
    iget-object v3, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    monitor-exit p0

    .line 283
    return v1
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 293
    .local v0, "numPids":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 287
    return-void

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "numPids":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 302
    .restart local v0    # "numPids":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/DssControllerImpl;->mRunningMultiPidPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 141
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p0, p2}, Lcom/android/server/DssControllerImpl;->isScaledApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0, p2}, Lcom/android/server/DssControllerImpl;->getScalingFactor(Ljava/lang/String;)F

    move-result v0

    .line 322
    .local v0, "dssScale":F
    invoke-static {p1, v0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 319
    .end local v0    # "dssScale":F
    :cond_0
    return-void
.end method

.method public declared-synchronized setDssForPackage(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p2, v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/DssControllerImpl;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 93
    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DssControllerImpl;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllDSSInfo()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DssControllerImpl;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    const-string v3, "DssController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSS PackageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  Scale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v2, v2, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    const-string v4, ", GameSiopLevel :"

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v2, v2, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    const-string v4, ", CpuLevel :"

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v2, v2, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    const-string v4, ", GpuLevel :"

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DssControllerImpl$DssAppDate;

    iget v2, v2, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssControllerImpl$DssAppDate;>;"
    .end local v1    # "elem$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "elem$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 148
    return-void
.end method
