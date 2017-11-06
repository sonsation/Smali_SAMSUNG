.class Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "SeslViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslPools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method static drainCache()V
    .locals 1

    .prologue
    .line 327
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    return-void
.end method

.method static obtain()Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    .locals 2

    .prologue
    .line 314
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 315
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .end local v0    # "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;-><init>()V

    :cond_0
    return-object v0
.end method

.method static recycle(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;)V
    .locals 2
    .param p0, "record"    # Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .prologue
    const/4 v1, 0x0

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 320
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 321
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 322
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->sPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;->release(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
