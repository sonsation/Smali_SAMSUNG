.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;
.super Ljava/lang/Object;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestIdGenerator"
.end annotation


# instance fields
.field fraction:I

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    .line 1117
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    .line 1115
    return-void
.end method


# virtual methods
.method public getNextContainerRequestId()I
    .locals 3

    .prologue
    .line 1121
    iget v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1122
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    .line 1124
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    const/16 v1, 0x2710

    const v2, 0x186a0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->randInt(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public randInt(II)I
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v0, v1, p1

    .line 1131
    .local v0, "randomNum":I
    return v0
.end method
