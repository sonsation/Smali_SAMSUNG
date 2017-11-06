.class public final enum Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;
.super Ljava/lang/Enum;
.source "ContactUsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactUsUriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

.field public static final enum CONTACT_US:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

.field public static final enum DIRECT_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

.field public static final enum SEND_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    const-string v1, "CONTACT_US"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    new-instance v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    const-string v1, "SEND_FEEDBACK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->SEND_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    new-instance v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    const-string v1, "DIRECT_FEEDBACK"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->DIRECT_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->SEND_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->DIRECT_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->$VALUES:[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->$VALUES:[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    return-object v0
.end method
