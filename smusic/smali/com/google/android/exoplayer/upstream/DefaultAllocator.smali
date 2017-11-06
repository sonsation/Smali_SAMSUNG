.class public final Lcom/google/android/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Allocator;


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "individualAllocationSize"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "individualAllocationSize"    # I
    .param p2, "initialAllocationCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-lez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 56
    if-ltz p2, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 57
    iput p1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 59
    add-int/lit8 v2, p2, 0x64

    new-array v2, v2, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 60
    if-lez p2, :cond_2

    .line 61
    mul-int v2, p2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_3

    .line 63
    mul-int v0, v1, p1

    .line 64
    .local v0, "allocationOffset":I
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, v0}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "allocationOffset":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 55
    goto :goto_0

    :cond_1
    move v3, v4

    .line 56
    goto :goto_1

    .line 67
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 69
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer/upstream/Allocation;
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 75
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v2

    .line 77
    .local v0, "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    .line 79
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    goto :goto_0

    .line 73
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized blockWhileTotalBytesAllocatedExceeds(I)V
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer/upstream/Allocation;)V
    .locals 3
    .param p1, "allocation"    # Lcom/google/android/exoplayer/upstream/Allocation;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trim(I)V
    .locals 11
    .param p1, "targetSize"    # I

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {p1, v8}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v6

    .line 101
    .local v6, "targetAllocationCount":I
    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 102
    .local v7, "targetAvailableCount":I
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v8, :cond_5

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "lowIndex":I
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "highIndex":I
    move v2, v1

    .end local v1    # "highIndex":I
    .local v2, "highIndex":I
    move v5, v4

    .line 113
    .end local v4    # "lowIndex":I
    .local v5, "lowIndex":I
    :goto_1
    if-gt v5, v2, :cond_4

    .line 114
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v3, v8, v5

    .line 115
    .local v3, "lowAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v8, v3, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v8, v9, :cond_2

    .line 116
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    move v1, v2

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    :goto_2
    move v2, v1

    .end local v1    # "highIndex":I
    .restart local v2    # "highIndex":I
    move v5, v4

    .line 126
    .end local v4    # "lowIndex":I
    .restart local v5    # "lowIndex":I
    goto :goto_1

    .line 118
    :cond_2
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v0, v8, v5

    .line 119
    .local v0, "highAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v8, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v8, v9, :cond_3

    .line 120
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    move v4, v5

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    goto :goto_2

    .line 122
    .end local v1    # "highIndex":I
    .end local v4    # "lowIndex":I
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    :cond_3
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    aput-object v0, v8, v5

    .line 123
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    aput-object v3, v8, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 100
    .end local v0    # "highAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v1    # "highIndex":I
    .end local v3    # "lowAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v4    # "lowIndex":I
    .end local v6    # "targetAllocationCount":I
    .end local v7    # "targetAvailableCount":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 128
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    .restart local v6    # "targetAllocationCount":I
    .restart local v7    # "targetAvailableCount":I
    :cond_4
    :try_start_2
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 129
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-ge v7, v8, :cond_0

    .line 136
    .end local v2    # "highIndex":I
    .end local v5    # "lowIndex":I
    :cond_5
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v10, 0x0

    invoke-static {v8, v7, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 137
    iput v7, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
