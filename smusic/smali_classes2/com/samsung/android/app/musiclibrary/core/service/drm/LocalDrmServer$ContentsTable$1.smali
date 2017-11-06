.class Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;
.super Landroid/util/LruCache;
.source "LocalDrmServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
    .param p2, "x0"    # I

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    check-cast p4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->entryRemoved(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldOne"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
    .param p4, "newOne"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    .prologue
    .line 254
    if-eqz p3, :cond_0

    .line 255
    iget-object v0, p3, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 256
    .local v0, "oldContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 259
    .end local v0    # "oldContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :cond_0
    return-void
.end method
