.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

.field mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11260
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 11286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11154
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11155
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 11157
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    .line 11158
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11161
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 11163
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 11262
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11263
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11265
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11269
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .line 11271
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11275
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11278
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11287
    if-nez p1, :cond_0

    .line 11288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11290
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11291
    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 11152
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->onEnteredHiddenState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 11152
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->onLeftHiddenState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11152
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 11152
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11152
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 11152
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11152
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    return v0
.end method

.method static synthetic access$5802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 11152
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    return p1
.end method

.method static synthetic access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11152
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11152
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .prologue
    .line 11505
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11507
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11509
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .prologue
    .line 11643
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 11551
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11552
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11553
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Z

    .line 11555
    return-void
.end method

.method private onLeftHiddenState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 11561
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Z

    .line 11563
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11564
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .prologue
    .line 11635
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/Object;

    .prologue
    .line 11496
    if-nez p1, :cond_1

    .line 11497
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 11502
    :cond_0
    :goto_0
    return-void

    .line 11498
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 11499
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11500
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 11492
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11493
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11316
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11317
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11318
    return-void
.end method

.method clearPayload()V
    .locals 1

    .prologue
    .line 11512
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11513
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11515
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11516
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 11443
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11444
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 11447
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11448
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 11294
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 11295
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11296
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11297
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 11392
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 11393
    const/4 v0, -0x1

    .line 11395
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapterPositionFor(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 11420
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 11427
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 11366
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 11410
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11340
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11519
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11520
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 11522
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 11528
    :goto_0
    return-object v0

    .line 11525
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0

    .line 11528
    :cond_2
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 11476
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .prologue
    .line 11484
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 11468
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    .prologue
    .line 11460
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    .prologue
    .line 11626
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11627
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11626
    :goto_0
    return v0

    .line 11627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 11472
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 11431
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    .prologue
    .line 11480
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 11647
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 11464
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .prologue
    const/4 v1, -0x1

    .line 11300
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    if-ne v0, v1, :cond_0

    .line 11301
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11303
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11304
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11306
    :cond_1
    if-eqz p2, :cond_2

    .line 11307
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11309
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11311
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11313
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 11533
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11534
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11535
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11536
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 11537
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11538
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11539
    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 11540
    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 11541
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearPayload()V

    .line 11542
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11543
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11544
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 11321
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11322
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11324
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 11488
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11489
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .prologue
    .line 11601
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11602
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    .line 11603
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11608
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11618
    :cond_0
    :goto_1
    return-void

    .line 11601
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11610
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 11611
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 11612
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    .line 11613
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .prologue
    .line 11455
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .line 11456
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11457
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 11327
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 1

    .prologue
    .line 11451
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11452
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11568
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11569
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11571
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11572
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_a

    const-string v1, "[changeScrap]"

    .line 11573
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11575
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11576
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11577
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11578
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11579
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11580
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11581
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11582
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11584
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11585
    :cond_9
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 11572
    :cond_a
    const-string v1, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 11435
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 11436
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .prologue
    .line 11439
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
