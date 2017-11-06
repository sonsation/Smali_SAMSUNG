.class Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->access$000(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;Landroid/os/IBinder;)V

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->access$100(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V

    .line 87
    return-void
.end method
