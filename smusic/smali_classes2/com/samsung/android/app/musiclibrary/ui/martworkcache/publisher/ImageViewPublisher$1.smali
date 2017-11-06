.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;
.super Ljava/lang/Object;
.source "ImageViewPublisher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    .line 60
    .local v0, "p":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method
