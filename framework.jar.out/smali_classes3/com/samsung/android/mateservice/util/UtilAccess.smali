.class public Lcom/samsung/android/mateservice/util/UtilAccess;
.super Ljava/lang/Object;
.source "UtilAccess.java"


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final PRIVILEGED_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Access"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.mateagent"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/mateservice/util/UtilAccess;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccessible(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    const/4 v7, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 138
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 140
    .local v0, "pid":I
    invoke-static {p1}, Lcom/samsung/android/mateservice/util/UtilAccess;->isValidSysSvcActionFormat(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/mateservice/util/UtilAccess;->isValidAgentSvcActionFormat(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    const/high16 v3, 0x10000

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    .line 143
    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->getProcessSystemUid()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 144
    :goto_0
    const-string/jumbo v3, "Access"

    const-string/jumbo v4, "system uid"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .end local v1    # "ret":Z
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 164
    const-string/jumbo v3, "Access"

    const-string/jumbo v4, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    :cond_2
    return v1

    .line 143
    .restart local v1    # "ret":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :cond_4
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 149
    invoke-static {p0, v2}, Lcom/samsung/android/mateservice/util/UtilAccess;->isPrivilegedPkg(Landroid/content/Context;I)Z

    move-result v1

    .line 150
    .local v1, "ret":Z
    const-string/jumbo v3, "Access"

    const-string/jumbo v4, "privileged pkg"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 154
    .local v1, "ret":Z
    :cond_5
    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 155
    invoke-static {p0, v2}, Lcom/samsung/android/mateservice/util/UtilAccess;->isSignedWithPlatformKey(Landroid/content/Context;I)Z

    move-result v1

    .line 156
    .local v1, "ret":Z
    const-string/jumbo v3, "Access"

    const-string/jumbo v4, "platform key signed pkg"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1
.end method

.method private static isPrivilegedPkg(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 100
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 103
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    .line 104
    .local v0, "curPkg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 103
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 108
    :cond_1
    sget-object v8, Lcom/samsung/android/mateservice/util/UtilAccess;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v3, v8, v4

    .line 109
    .local v3, "privilegedPkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    const-string/jumbo v10, "android"

    invoke-virtual {v2, v10, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 111
    return v11

    .line 108
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "curPkg":Ljava/lang/String;
    .end local v3    # "privilegedPkg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "Access"

    const-string/jumbo v6, "isPrivilegedPkg uid[%d] is invalid"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    return v5
.end method

.method private static isSignedWithPlatformKey(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 123
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 126
    const-string/jumbo v2, "android"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    return v4

    .line 131
    :cond_0
    const-string/jumbo v2, "Access"

    const-string/jumbo v3, "isSignedWithPlatformKey uid[%d] is invalid"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    return v6
.end method

.method private static isValidAgentSvcActionFormat(I)Z
    .locals 6
    .param p0, "action"    # I

    .prologue
    const/4 v5, 0x0

    .line 28
    const/4 v0, 0x0

    .line 37
    .local v0, "ret":Z
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    .line 58
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 59
    const-string/jumbo v1, "Access"

    const-string/jumbo v2, "invalid action [0x%x]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    :cond_1
    return v0

    .line 29
    :cond_2
    const/high16 v1, 0xf0000

    .line 42
    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 49
    and-int/lit16 v1, p0, 0xfff

    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isValidSysSvcActionFormat(I)Z
    .locals 11
    .param p0, "action"    # I

    .prologue
    const/4 v5, 0x0

    .line 66
    const/high16 v6, -0x1000000

    const/high16 v7, -0x10000000

    const/high16 v8, 0xf0000

    .line 67
    const v9, 0xf000

    const/16 v10, 0xfff

    .line 66
    filled-new-array {v6, v7, v8, v9, v10}, [I

    move-result-object v2

    .line 68
    .local v2, "mask":[I
    const/high16 v6, 0x100000

    .line 69
    const/high16 v7, 0x70000

    .line 68
    filled-new-array {v5, v6, v7, v5, v5}, [I

    move-result-object v4

    .line 72
    .local v4, "value":[I
    const/4 v1, 0x0

    .line 73
    .local v1, "index":I
    const/4 v3, 0x0

    .line 74
    .local v3, "valid":I
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v2, v6

    .line 75
    .local v0, "cur":I
    packed-switch v1, :pswitch_data_0

    .line 88
    :pswitch_0
    aget v8, v4, v1

    and-int v9, p0, v0

    if-ne v8, v9, :cond_0

    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    :pswitch_1
    aget v8, v4, v1

    and-int v9, p0, v0

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    :pswitch_2
    and-int v8, p0, v0

    aget v9, v4, v1

    if-le v8, v9, :cond_0

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "cur":I
    :cond_1
    add-int/lit8 v6, v3, 0x1

    array-length v7, v2

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .locals 10
    .param p0, "reason"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 19
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 21
    .local v0, "pid":I
    const-string/jumbo v3, "Access"

    const-string/jumbo v4, "illegal access: uid[%d] / pid[%d] / %d / %s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "%s: reason(%d)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method
