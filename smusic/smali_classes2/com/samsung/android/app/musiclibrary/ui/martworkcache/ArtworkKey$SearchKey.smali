.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
.super Ljava/lang/Object;
.source "ArtworkKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchKey"
.end annotation


# instance fields
.field public size:I

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->uri:Landroid/net/Uri;

    .line 184
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->size:I

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 193
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    .line 198
    .local v0, "searchKey":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->size:I

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->size:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->uri:Landroid/net/Uri;

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
    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 204
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->size:I

    add-int v0, v1, v2

    .line 205
    return v0
.end method
