.class Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/virtualspace/VSScreen;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "container"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "container"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method
