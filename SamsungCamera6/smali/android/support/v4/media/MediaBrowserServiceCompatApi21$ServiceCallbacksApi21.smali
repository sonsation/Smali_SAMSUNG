.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksApi21"
.end annotation


# static fields
.field private static sNullParceledListSliceObj:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v3, Landroid/media/MediaDescription$Builder;

    invoke-direct {v3}, Landroid/media/MediaDescription$Builder;-><init>()V

    const-string v4, "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"

    invoke-virtual {v3, v4}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnectFailed()V

    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v4, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_2

    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v4, p1, v3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v1}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    sget-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    :goto_2
    goto :goto_1

    :cond_3
    invoke-static {v1}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method
