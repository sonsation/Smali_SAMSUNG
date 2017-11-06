.class final Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1

    :cond_2
    move v0, v2

    .line 98
    goto :goto_2

    :cond_3
    move v1, v2

    .line 100
    goto :goto_3
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 1
    .param p1, "frag"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    .line 79
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    .line 80
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    .line 81
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    .line 82
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    .line 83
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    .line 84
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    .line 85
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    .line 86
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    .line 87
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    .line 88
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 4
    .param p1, "host"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "childNonConfig"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v1, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    .line 120
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    .line 121
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    iput v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    .line 122
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    iput v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 123
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    .line 125
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    .line 126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    .line 127
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 129
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiated fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object p3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 154
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v0, v2

    .line 149
    goto :goto_1

    :cond_2
    move v0, v2

    .line 150
    goto :goto_2

    :cond_3
    move v1, v2

    .line 152
    goto :goto_3
.end method
