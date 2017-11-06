.class public Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2192
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2164
    return-void

    .line 2163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .prologue
    .line 2166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2167
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2168
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2169
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2170
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2182
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .prologue
    .line 2173
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invalidateAnchor()V
    .locals 1

    .prologue
    .line 2177
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2178
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2187
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2189
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    return-void

    .line 2189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
