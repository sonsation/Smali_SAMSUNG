.class Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;
.super Ljava/lang/Object;
.source "ParcelDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreParcelableValueTask"
.end annotation


# instance fields
.field private final cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

.field private final key:Ljava/lang/String;

.field private final value:Landroid/os/Parcel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p1, "cache"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "value"    # Landroid/os/Parcel;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->value:Landroid/os/Parcel;

    .line 253
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->key:Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .line 255
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->value:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;->key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->access$000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    .line 260
    return-void
.end method
