.class Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;
.super Landroid/os/Binder;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ILjava/lang/Class;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    .prologue
    .line 205
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$N:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;"
    const/4 v2, 0x1

    .line 209
    if-eq p1, v2, :cond_1

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$N:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2

    .line 217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 220
    .local v1, "parcelable":Landroid/os/Parcelable;, "TT;"
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->access$100(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$callFlags:I

    invoke-interface {v1, p3, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 227
    goto :goto_1

    .line 228
    .end local v1    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;->val$N:I

    if-ge v0, v3, :cond_0

    .line 232
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
