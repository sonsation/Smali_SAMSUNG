.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;
.super Ljava/lang/Object;
.source "NotificationUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 93
    const-string v0, "SV-MediaCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    .line 99
    :cond_0
    return-void
.end method
