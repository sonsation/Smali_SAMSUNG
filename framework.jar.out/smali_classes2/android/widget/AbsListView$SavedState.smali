.class Landroid/widget/AbsListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/AbsListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field filter:Ljava/lang/String;

.field firstId:J

.field height:I

.field inActionMode:Z

.field position:I

.field selectedId:J

.field viewTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2608
    new-instance v0, Landroid/widget/AbsListView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/AbsListView$SavedState$1;-><init>()V

    .line 2607
    sput-object v0, Landroid/widget/AbsListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2530
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 2553
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2554
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2555
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2559
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2560
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2562
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2564
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 2565
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2567
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2568
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2569
    .local v4, "value":I
    iget-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2552
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/AbsListView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2546
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2545
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AbsListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2597
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2598
    const-string/jumbo v1, " selectedId="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2598
    iget-wide v2, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2596
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2599
    const-string/jumbo v1, " firstId="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2599
    iget-wide v2, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2596
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2600
    const-string/jumbo v1, " viewTop="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2600
    iget v1, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2601
    const-string/jumbo v1, " position="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2601
    iget v1, p0, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2602
    const-string/jumbo v1, " height="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2602
    iget v1, p0, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2603
    const-string/jumbo v1, " filter="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2603
    iget-object v1, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2604
    const-string/jumbo v1, " checkState="

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2604
    iget-object v1, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2604
    const-string/jumbo v1, "}"

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 2576
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2577
    iget-wide v4, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2578
    iget-wide v4, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2579
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2581
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->height:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2582
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2583
    iget-boolean v2, p0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2584
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 2586
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2587
    .local v0, "N":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 2589
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2590
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 2583
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2586
    goto :goto_1

    .line 2575
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
