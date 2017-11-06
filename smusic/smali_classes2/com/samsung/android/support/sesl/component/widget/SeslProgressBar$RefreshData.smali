.class Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1343
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZZ)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1352
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;

    .line 1353
    .local v0, "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 1354
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;

    .end local v0    # "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;-><init>()V

    .line 1356
    .restart local v0    # "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->id:I

    .line 1357
    iput p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->progress:I

    .line 1358
    iput-boolean p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->fromUser:Z

    .line 1359
    iput-boolean p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->animate:Z

    .line 1360
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 1364
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1365
    return-void
.end method
