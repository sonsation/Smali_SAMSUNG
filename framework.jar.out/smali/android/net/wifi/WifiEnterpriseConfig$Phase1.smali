.class public final Landroid/net/wifi/WifiEnterpriseConfig$Phase1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase1"
.end annotation


# static fields
.field public static final ALLOW_AUTHENTICATED:I = 0x2

.field public static final ALLOW_BOTH:I = 0x3

.field public static final ALLOW_UNAUTHENTICATED:I = 0x1

.field public static final DISABLE:I = 0x0

.field public static final NONE:I = -0x1

.field private static final PREFIX:Ljava/lang/String; = "fast_provisioning="

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    .line 415
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
