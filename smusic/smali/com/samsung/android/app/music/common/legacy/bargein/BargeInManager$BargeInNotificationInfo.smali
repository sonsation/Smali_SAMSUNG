.class Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
.super Ljava/lang/Object;
.source "BargeInManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BargeInNotificationInfo"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private iconId:I

.field private notificationString:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->notificationString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->notificationString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    .prologue
    .line 198
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->iconId:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->iconId:I

    return p1
.end method
