.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"


# instance fields
.field private deleted:Z

.field private localId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->localId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->syncKey:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "deleted"    # Z
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->localId:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->syncKey:Ljava/lang/String;

    .line 99
    iput-wide p3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->timestamp:J

    .line 101
    iput-boolean p5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->deleted:Z

    .line 103
    iput-object p6, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->tag:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->timestamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->deleted:Z

    return v0
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->localId:Ljava/lang/String;

    .line 113
    return-void
.end method
