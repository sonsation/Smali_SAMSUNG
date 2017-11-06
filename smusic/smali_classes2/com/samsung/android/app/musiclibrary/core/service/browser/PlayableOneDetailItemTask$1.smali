.class Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;
.super Ljava/lang/Object;
.source "PlayableOneDetailItemTask.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

.field final synthetic val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$subTitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$mediaId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$subTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 143
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_big:I

    .line 144
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 145
    .local v3, "size":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-static {v4, v5, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 148
    .end local v3    # "size":I
    :cond_0
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 149
    .local v0, "builder":Landroid/media/MediaDescription$Builder;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$mediaId:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v4}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$subTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v4

    .line 151
    invoke-virtual {v4, p2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v1

    .line 153
    .local v1, "des":Landroid/media/MediaDescription;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    new-instance v4, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->access$100()Ljava/util/List;

    move-result-object v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_1
    invoke-virtual {v4, v2}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
