.class public Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SeslStaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorPosition:I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field mLastLayoutRTL:Z

.field mReverseLayout:Z

.field mSpanLookup:[I

.field mSpanLookupSize:I

.field mSpanOffsets:[I

.field mSpanOffsetsSize:I

.field mVisibleAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3078
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3003
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3009
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_0

    .line 3010
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3011
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3014
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3015
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_1

    .line 3016
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3017
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3019
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3020
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3023
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3024
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3023
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3025
    return-void

    :cond_2
    move v0, v2

    .line 3019
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3020
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3021
    goto :goto_2
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    .prologue
    .line 3027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3028
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3029
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3030
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3031
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3032
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3033
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3034
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3035
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3036
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3037
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3038
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3057
    const/4 v0, 0x0

    return v0
.end method

.method invalidateAnchorPositionInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3050
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3051
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3052
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3053
    return-void
.end method

.method invalidateSpanInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3041
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3042
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3043
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3044
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3045
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3046
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3062
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3063
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3068
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_1

    .line 3070
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3072
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3075
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3076
    return-void

    :cond_2
    move v0, v2

    .line 3072
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3073
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3074
    goto :goto_2
.end method
