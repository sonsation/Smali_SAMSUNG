.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    .line 104
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    .line 106
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 8
    .param p1, "bse"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "numRemoved":I
    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 55
    .local v3, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_1

    .line 56
    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 57
    :cond_0
    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    goto :goto_0

    .line 59
    :cond_1
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mNumOp:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    .line 61
    iget-boolean v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_2

    .line 62
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_2
    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 66
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 67
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-eqz v3, :cond_6

    .line 68
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    aput v7, v6, v5

    .line 69
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v6, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    :goto_2
    aput v6, v7, v4

    .line 70
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    aput v7, v6, v5

    .line 71
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    aput v7, v6, v4

    .line 72
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    aput v7, v6, v5

    .line 73
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    aput v7, v6, v4

    .line 74
    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 75
    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "N":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 78
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v6, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    aput v6, v7, v5

    .line 77
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_3

    .line 69
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_4
    move v4, v5

    .line 83
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_4
    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 81
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_4

    .line 85
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_6
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    iput v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    .line 86
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    iput v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    .line 87
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    .line 88
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    iput v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    .line 89
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    iput v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    .line 90
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 91
    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    .line 92
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 93
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 94
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .locals 14
    .param p1, "fm"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .prologue
    const/4 v13, 0x1

    .line 112
    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    .line 113
    .local v1, "bse":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    const/4 v7, 0x0

    .line 114
    .local v7, "pos":I
    const/4 v5, 0x0

    .line 115
    .local v5, "num":I
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    array-length v10, v10

    if-ge v7, v10, :cond_4

    .line 116
    new-instance v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 117
    .local v6, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 118
    sget-boolean v10, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "SeslFragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " op #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " base fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v3, v10, v8

    .line 121
    .local v3, "findex":I
    if-ltz v3, :cond_2

    .line 122
    iget-object v10, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 123
    .local v2, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput-object v2, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 127
    .end local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    .line 128
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    .line 129
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    .line 130
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    .line 131
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v0, v10, v7

    .line 132
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 134
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 135
    sget-boolean v10, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "SeslFragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " set remove fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    iget-object v10, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 138
    .local v9, "r":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    .line 125
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v8    # "pos":I
    .end local v9    # "r":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v7    # "pos":I
    :cond_2
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_1

    .end local v7    # "pos":I
    .restart local v0    # "N":I
    .restart local v8    # "pos":I
    :cond_3
    move v7, v8

    .line 141
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    iget v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    .line 142
    iget v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    .line 143
    iget v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    .line 144
    iget v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    .line 145
    invoke-virtual {v1, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    goto/16 :goto_0

    .line 148
    .end local v0    # "N":I
    .end local v3    # "findex":I
    .end local v6    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :cond_4
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    .line 149
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    .line 150
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    .line 151
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    .line 152
    iput-boolean v13, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    .line 153
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    .line 154
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 155
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    iput v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 156
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 157
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 158
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v1, v13}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    .line 160
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 177
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 181
    return-void
.end method
