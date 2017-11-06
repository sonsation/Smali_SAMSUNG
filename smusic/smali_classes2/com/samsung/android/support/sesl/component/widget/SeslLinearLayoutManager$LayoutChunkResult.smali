.class public Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2318
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2319
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2320
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2321
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 2322
    return-void
.end method
