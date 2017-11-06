.class public final enum Lcom/kakao/util/helper/log/Tag;
.super Ljava/lang/Enum;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/util/helper/log/Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/util/helper/log/Tag;

.field public static final enum DEFAULT:Lcom/kakao/util/helper/log/Tag;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/kakao/util/helper/log/Tag;

    const-string v1, "DEFAULT"

    const-string v2, "kakao.sdk"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/util/helper/log/Tag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/util/helper/log/Tag;->DEFAULT:Lcom/kakao/util/helper/log/Tag;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kakao/util/helper/log/Tag;

    sget-object v1, Lcom/kakao/util/helper/log/Tag;->DEFAULT:Lcom/kakao/util/helper/log/Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kakao/util/helper/log/Tag;->$VALUES:[Lcom/kakao/util/helper/log/Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/kakao/util/helper/log/Tag;->tag:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/util/helper/log/Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/kakao/util/helper/log/Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/util/helper/log/Tag;

    return-object v0
.end method

.method public static values()[Lcom/kakao/util/helper/log/Tag;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kakao/util/helper/log/Tag;->$VALUES:[Lcom/kakao/util/helper/log/Tag;

    invoke-virtual {v0}, [Lcom/kakao/util/helper/log/Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/util/helper/log/Tag;

    return-object v0
.end method


# virtual methods
.method public tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kakao/util/helper/log/Tag;->tag:Ljava/lang/String;

    return-object v0
.end method
