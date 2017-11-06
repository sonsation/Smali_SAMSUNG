.class public final enum Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
.super Ljava/lang/Enum;
.source "ScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER_CROP:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

.field public static final enum FIT_CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

.field public static final enum NONE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 9
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v3}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER_CROP:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 10
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v4}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER_INSIDE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 11
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 12
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->NONE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER_CROP:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->CENTER_INSIDE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->NONE:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {v0}, [Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    return-object v0
.end method
