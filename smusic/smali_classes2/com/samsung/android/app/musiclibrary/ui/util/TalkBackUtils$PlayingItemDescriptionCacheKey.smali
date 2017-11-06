.class Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;
.super Ljava/lang/Object;
.source "TalkBackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayingItemDescriptionCacheKey"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field private hashCode:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->title:Ljava/lang/String;

    .line 235
    :goto_0
    if-nez p2, :cond_1

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->artist:Ljava/lang/String;

    .line 240
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    .line 241
    return-void

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->title:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->artist:Ljava/lang/String;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 246
    const/4 v1, 0x1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 252
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    .line 254
    .local v0, "that":Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->artist:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    .line 264
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    .line 266
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->hashCode:I

    return v0
.end method
