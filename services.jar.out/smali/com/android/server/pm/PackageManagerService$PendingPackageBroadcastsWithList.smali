.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcastsWithList"
.end annotation


# instance fields
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final mUidMapOfNewPkgState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    .line 1308
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    .line 1306
    return-void
.end method

.method private getOrAllocate(I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1379
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 1380
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1381
    .restart local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1383
    :cond_0
    return-object v0
.end method

.method private getOrAllocateNewState(I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1388
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1390
    .restart local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1392
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1372
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1313
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getNewState(ILjava/lang/String;)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1322
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1323
    .local v0, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public packagesForUserId(I)Ljava/util/LinkedHashMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1317
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1318
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    return-void
.end method

.method public putNewState(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1328
    .local v0, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1344
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1342
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1332
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1333
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1337
    .local v1, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 1338
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_1
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1365
    const/4 v1, 0x0

    .line 1366
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1369
    :cond_0
    return v1
.end method

.method public userIdAt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public userIdCount()I
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
