.class public final enum Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;
.super Ljava/lang/Enum;
.source "MuseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/help/MuseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MuseUriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

.field public static final enum CONTACT_US:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

.field public static final enum FAQ:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

.field public static final enum MY_QUESTION:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    const-string v1, "MY_QUESTION"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->MY_QUESTION:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    new-instance v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    const-string v1, "FAQ"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->FAQ:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    new-instance v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    const-string v1, "CONTACT_US"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    sget-object v1, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->MY_QUESTION:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->FAQ:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->$VALUES:[Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->$VALUES:[Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    return-object v0
.end method
