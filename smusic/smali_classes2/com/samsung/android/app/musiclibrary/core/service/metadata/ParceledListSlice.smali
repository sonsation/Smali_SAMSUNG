.class public Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ParceledListSlice"


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 76
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "N":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    .line 82
    if-gtz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    .line 89
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v5, 0x0

    .line 91
    .local v5, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 92
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_4

    .line 114
    :cond_2
    if-ge v4, v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 118
    .local v8, "retriever":Landroid/os/IBinder;
    :goto_2
    if-ge v4, v0, :cond_0

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 123
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 124
    .local v7, "reply":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v8, v9, v2, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_3
    if-ge v4, v0, :cond_7

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 134
    invoke-static {v7, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readCreator(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 135
    .local v6, "parcelable":Landroid/os/Parcelable;, "TT;"
    if-eqz v6, :cond_3

    .line 136
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 138
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 145
    goto :goto_3

    .line 98
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    .end local v7    # "reply":Landroid/os/Parcel;
    .end local v8    # "retriever":Landroid/os/IBinder;
    :cond_4
    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->readCreator(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 99
    .restart local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    if-eqz v6, :cond_5

    .line 100
    if-nez v5, :cond_6

    .line 101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 106
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_1

    .line 103
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    .line 127
    .end local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    .restart local v2    # "data":Landroid/os/Parcel;
    .restart local v7    # "reply":Landroid/os/Parcel;
    .restart local v8    # "retriever":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "ParceledListSlice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure retrieving array; only received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 146
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;

    .prologue
    .line 50
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in list of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    .prologue
    .line 165
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "contents":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-interface {v2}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    or-int/2addr v0, v2

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<TT;>;"
    const/4 v8, 0x0

    .line 179
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    .local v0, "N":I
    move v1, p2

    .line 181
    .local v1, "callFlags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    if-lez v0, :cond_1

    .line 186
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 189
    .local v3, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-static {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParcelCompat;->writeParcelableCreator(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_0

    .line 192
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 195
    .local v4, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    invoke-interface {v4, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_0

    .line 203
    .end local v4    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_0
    if-ge v2, v0, :cond_1

    .line 204
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ILjava/lang/Class;I)V

    .line 240
    .local v5, "retriever":Landroid/os/Binder;
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 243
    .end local v2    # "i":I
    .end local v3    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "retriever":Landroid/os/Binder;
    :cond_1
    return-void
.end method
