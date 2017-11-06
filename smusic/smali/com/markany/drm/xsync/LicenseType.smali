.class public final enum Lcom/markany/drm/xsync/LicenseType;
.super Ljava/lang/Enum;
.source "LicenseType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markany/drm/xsync/LicenseType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/markany/drm/xsync/LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_ACQ_METHOD_NOT_CALLED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_ACQ_METHOD_NOT_CALLED_get()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

    .line 13
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_NO"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_NO_get()I

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    .line 14
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_EXPIRED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_EXPIRED_get()I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

    .line 15
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_UNLIMITED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_UNLIMITED_get()I

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;

    .line 16
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_TERM"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_TERM_get()I

    move-result v2

    invoke-direct {v0, v1, v8, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

    .line 17
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_VERSION"

    const/4 v2, 0x5

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_VERSION_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

    .line 18
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_DOMAIN"

    const/4 v2, 0x6

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_DOMAIN_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

    .line 19
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_UID"

    const/4 v2, 0x7

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_UID_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

    .line 20
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_DEVICE_KEY"

    const/16 v2, 0x8

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_DEVICE_KEY_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

    .line 21
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_TERM"

    const/16 v2, 0x9

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_TERM_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

    .line 22
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_ROLLBACK"

    const/16 v2, 0xa

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_ROLLBACK_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

    .line 23
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_IS_NOT_DRM_FILE"

    const/16 v2, 0xb

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_IS_NOT_DRM_FILE_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

    .line 24
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID"

    const/16 v2, 0xc

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

    .line 25
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_TERM_NOT_YET_STARTED"

    const/16 v2, 0xd

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_TERM_NOT_YET_STARTED_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

    .line 11
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/markany/drm/xsync/LicenseType;

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->$VALUES:[Lcom/markany/drm/xsync/LicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    invoke-static {}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    .line 49
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$002(I)I

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/markany/drm/xsync/LicenseType;)V
    .locals 1
    .param p3, "swigEnum"    # Lcom/markany/drm/xsync/LicenseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/markany/drm/xsync/LicenseType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iget v0, p3, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    iput v0, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    .line 55
    iget v0, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$002(I)I

    .line 56
    return-void
.end method

.method public static swigToEnum(I)Lcom/markany/drm/xsync/LicenseType;
    .locals 8
    .param p0, "swigValue"    # I

    .prologue
    .line 32
    const-class v5, Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/markany/drm/xsync/LicenseType;

    .line 33
    .local v4, "swigValues":[Lcom/markany/drm/xsync/LicenseType;
    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    if-ne v5, p0, :cond_1

    .line 34
    aget-object v3, v4, p0

    .line 37
    :cond_0
    return-object v3

    .line 35
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Lcom/markany/drm/xsync/LicenseType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 36
    .local v3, "swigEnum":Lcom/markany/drm/xsync/LicenseType;
    iget v5, v3, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    if-eq v5, p0, :cond_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "swigEnum":Lcom/markany/drm/xsync/LicenseType;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/markany/drm/xsync/LicenseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/markany/drm/xsync/LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/markany/drm/xsync/LicenseType;

    return-object v0
.end method

.method public static values()[Lcom/markany/drm/xsync/LicenseType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/markany/drm/xsync/LicenseType;->$VALUES:[Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v0}, [Lcom/markany/drm/xsync/LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/LicenseType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    return v0
.end method
