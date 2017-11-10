.class Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$SingletonHolder;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static sInstance:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;-><init>(Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$1;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$SingletonHolder;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
