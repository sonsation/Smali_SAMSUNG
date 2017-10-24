.class public Lcom/samsung/android/contextaware/ContextList;
.super Ljava/lang/Object;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextList$ContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/ContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/ContextList;
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    if-nez v0, :cond_1

    .line 351
    const-class v1, Lcom/samsung/android/contextaware/ContextList;

    monitor-enter v1

    .line 352
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/samsung/android/contextaware/ContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/ContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 357
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6
    .param p1, "serviceOrdinal"    # I

    .prologue
    .line 388
    const-string/jumbo v0, ""

    .line 390
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 391
    .local v1, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 392
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 397
    .end local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    .line 398
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 403
    :cond_1
    return-object v0

    .line 390
    .restart local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "ordinal":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 371
    .local v0, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 377
    .end local v0    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_0
    return v1

    .line 370
    .restart local v0    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
