.class public Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
.super Ljava/lang/Object;
.source "SemApexStoreData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field id:J

.field private path:Ljava/lang/String;

.field private timestamp:J

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->unflatten(Ljava/lang/String;)V

    return-void
.end method

.method public static createFrom(Landroid/os/Bundle;)Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .locals 10

    const-string v0, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "token"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v1, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;J)V

    return-object v1
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>()V

    const-string v1, "id"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "token"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->flatten()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-wide v0
.end method

.method public getToken()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    return v0
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-void
.end method

.method public setToken(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "token"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "id=%d, token=%d, timestamp=%d, path=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-void
.end method
