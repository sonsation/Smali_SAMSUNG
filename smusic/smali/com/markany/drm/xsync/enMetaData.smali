.class public final enum Lcom/markany/drm/xsync/enMetaData;
.super Ljava/lang/Enum;
.source "enMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markany/drm/xsync/enMetaData$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/markany/drm/xsync/enMetaData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/markany/drm/xsync/enMetaData;

.field public static final enum E_DRM_META_CID:Lcom/markany/drm/xsync/enMetaData;

.field public static final enum E_DRM_META_CREATION_TIME:Lcom/markany/drm/xsync/enMetaData;

.field public static final enum E_DRM_META_DOMAIN:Lcom/markany/drm/xsync/enMetaData;

.field public static final enum E_DRM_META_LAURL:Lcom/markany/drm/xsync/enMetaData;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/markany/drm/xsync/enMetaData;

    const-string v1, "E_DRM_META_DOMAIN"

    invoke-direct {v0, v1, v2}, Lcom/markany/drm/xsync/enMetaData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_DOMAIN:Lcom/markany/drm/xsync/enMetaData;

    .line 13
    new-instance v0, Lcom/markany/drm/xsync/enMetaData;

    const-string v1, "E_DRM_META_CID"

    invoke-direct {v0, v1, v3}, Lcom/markany/drm/xsync/enMetaData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_CID:Lcom/markany/drm/xsync/enMetaData;

    .line 14
    new-instance v0, Lcom/markany/drm/xsync/enMetaData;

    const-string v1, "E_DRM_META_LAURL"

    invoke-direct {v0, v1, v4}, Lcom/markany/drm/xsync/enMetaData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_LAURL:Lcom/markany/drm/xsync/enMetaData;

    .line 15
    new-instance v0, Lcom/markany/drm/xsync/enMetaData;

    const-string v1, "E_DRM_META_CREATION_TIME"

    invoke-direct {v0, v1, v5}, Lcom/markany/drm/xsync/enMetaData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_CREATION_TIME:Lcom/markany/drm/xsync/enMetaData;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/markany/drm/xsync/enMetaData;

    sget-object v1, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_DOMAIN:Lcom/markany/drm/xsync/enMetaData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_CID:Lcom/markany/drm/xsync/enMetaData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_LAURL:Lcom/markany/drm/xsync/enMetaData;

    aput-object v1, v0, v4

    sget-object v1, Lcom/markany/drm/xsync/enMetaData;->E_DRM_META_CREATION_TIME:Lcom/markany/drm/xsync/enMetaData;

    aput-object v1, v0, v5

    sput-object v0, Lcom/markany/drm/xsync/enMetaData;->$VALUES:[Lcom/markany/drm/xsync/enMetaData;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {}, Lcom/markany/drm/xsync/enMetaData$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    .line 34
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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    .line 39
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/markany/drm/xsync/enMetaData$SwigNext;->access$002(I)I

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/markany/drm/xsync/enMetaData;)V
    .locals 1
    .param p3, "swigEnum"    # Lcom/markany/drm/xsync/enMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/markany/drm/xsync/enMetaData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iget v0, p3, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    iput v0, p0, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    .line 45
    iget v0, p0, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/markany/drm/xsync/enMetaData$SwigNext;->access$002(I)I

    .line 46
    return-void
.end method

.method public static swigToEnum(I)Lcom/markany/drm/xsync/enMetaData;
    .locals 8
    .param p0, "swigValue"    # I

    .prologue
    .line 22
    const-class v5, Lcom/markany/drm/xsync/enMetaData;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/markany/drm/xsync/enMetaData;

    .line 23
    .local v4, "swigValues":[Lcom/markany/drm/xsync/enMetaData;
    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    if-ne v5, p0, :cond_1

    .line 24
    aget-object v3, v4, p0

    .line 27
    :cond_0
    return-object v3

    .line 25
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Lcom/markany/drm/xsync/enMetaData;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 26
    .local v3, "swigEnum":Lcom/markany/drm/xsync/enMetaData;
    iget v5, v3, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    if-eq v5, p0, :cond_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v3    # "swigEnum":Lcom/markany/drm/xsync/enMetaData;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/markany/drm/xsync/enMetaData;

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

.method public static valueOf(Ljava/lang/String;)Lcom/markany/drm/xsync/enMetaData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/markany/drm/xsync/enMetaData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/markany/drm/xsync/enMetaData;

    return-object v0
.end method

.method public static values()[Lcom/markany/drm/xsync/enMetaData;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/markany/drm/xsync/enMetaData;->$VALUES:[Lcom/markany/drm/xsync/enMetaData;

    invoke-virtual {v0}, [Lcom/markany/drm/xsync/enMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/enMetaData;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/markany/drm/xsync/enMetaData;->swigValue:I

    return v0
.end method