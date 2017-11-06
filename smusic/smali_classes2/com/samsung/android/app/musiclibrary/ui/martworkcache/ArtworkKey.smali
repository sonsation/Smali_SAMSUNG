.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.super Ljava/lang/Object;
.source "ArtworkKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_FALSE:I = 0x0

.field private static final IS_TRUE:I = 0x1

.field private static final UNDEFINED:I = -0x1

.field private static final sKeys:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKeysLock:Ljava/lang/Object;

.field private static final sSearchKeys:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final mBaseUri:Landroid/net/Uri;

.field private mIsMultiResolution:I

.field private mIsRemote:I

.field public final mSize:I

.field private toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeys:Landroid/util/LruCache;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeysLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sSearchKeys:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsMultiResolution:I

    .line 43
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsRemote:I

    .line 45
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->hashCode:I

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    .line 61
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    .line 62
    return-void
.end method

.method public static copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 1
    .param p0, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p1, "size"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v0

    return-object v0
.end method

.method private static getSearchKey(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "size"    # I

    .prologue
    .line 84
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sSearchKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    .line 85
    .local v0, "key":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    iput-object p0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->uri:Landroid/net/Uri;

    .line 86
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->size:I

    .line 87
    return-object v0
.end method

.method public static keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeysLock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeys:Landroid/util/LruCache;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->getSearchKey(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .line 72
    .local v0, "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .end local v0    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;-><init>(Landroid/net/Uri;I)V

    .line 76
    .restart local v0    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeysLock:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->sKeys:Landroid/util/LruCache;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V

    invoke-virtual {v1, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 72
    .end local v0    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)I
    .locals 7
    .param p1, "another"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    const/4 v4, 0x0

    .line 156
    const/4 v1, -0x1

    .line 157
    .local v1, "BEFORE":I
    const/4 v2, 0x0

    .line 158
    .local v2, "EQUAL":I
    const/4 v0, 0x1

    .line 159
    .local v0, "AFTER":I
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    .line 164
    .local v3, "comparison":I
    if-nez v3, :cond_0

    .line 168
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-le v5, v6, :cond_2

    .line 169
    const/4 v3, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-ge v5, v6, :cond_3

    .line 172
    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    move v3, v4

    .line 174
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->compareTo(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 100
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .line 105
    .local v0, "that":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 110
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->hashCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->hashCode:I

    .line 114
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->hashCode:I

    return v1
.end method

.method public isMultiResolution()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 130
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsMultiResolution:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->isMultiResolution(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsMultiResolution:I

    .line 137
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsMultiResolution:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 134
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsMultiResolution:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 137
    goto :goto_1
.end method

.method public isRemote()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 141
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsRemote:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 142
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsRemote:I

    .line 148
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsRemote:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 145
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mIsRemote:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 148
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->toString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->toString:Ljava/lang/String;

    .line 126
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->toString:Ljava/lang/String;

    return-object v1
.end method
