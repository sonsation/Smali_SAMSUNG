.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;
.super Ljava/lang/Object;
.source "TintColorCache.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

.field final synthetic val$albumId:J

.field final synthetic val$baseUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field final synthetic val$searchKey:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/util/Pair;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$searchKey:Landroid/util/Pair;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$baseUri:Landroid/net/Uri;

    iput-wide p6, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 128
    if-nez p2, :cond_2

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$context:Landroid/content/Context;

    .line 132
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 130
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$302(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object v6

    .line 135
    .local v6, "value":Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$searchKey:Landroid/util/Pair;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$600(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$baseUri:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$albumId:J

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 138
    .end local v0    # "msg":Landroid/os/Message;
    .end local v6    # "value":Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$searchKey:Landroid/util/Pair;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 139
    .restart local v6    # "value":Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    if-nez v6, :cond_1

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object v6

    .line 141
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->val$searchKey:Landroid/util/Pair;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method
